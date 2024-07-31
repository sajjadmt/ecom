import React, {Component, Fragment} from 'react'
import {Breadcrumb, Col, Container, Row} from "react-bootstrap";
import SuggestedProduct from "./SuggestedProduct";
import {Link, Redirect} from "react-router-dom";
import 'react-inner-image-zoom/lib/InnerImageZoom/styles.css';
import InnerImageZoom from 'react-inner-image-zoom';
import ReviewList from "./ReviewList";
import {toast, ToastContainer} from "react-toastify";
import axios from "axios";
import AppURL from "../../../api/AppURL";

class ProductDetails extends Component {

    constructor(props) {
        super(props);
        this.state = {
            mainImage: '0',
            isColor: null,
            isSize: null,
            color: '',
            size: '',
            quantity: '',
            id: '',
            productId: '',
            addToCart: 'Add To Cart',
            orderNow: 'Order Now',
            addFavourite: 'Favourite',
        }
    }

    componentDidMount() {
        this.updateStateFromProps();
    }

    componentDidUpdate(prevProps) {
        if (prevProps.Product !== this.props.Product) {
            this.updateStateFromProps();
        }
    }

    updateStateFromProps() {
        const {Product} = this.props;
        if (Product && Product.Product && Product.Details) {
            const {id} = Product.Product;
            const {product_id: productId} = Product.Details;

            this.setState({
                id: id,
                productId: productId,
            });
        }
    }

    addToCart = () => {
        let isSize = this.state.isSize;
        let isColor = this.state.isColor;
        let color = this.state.color;
        let size = this.state.size;
        let quantity = this.state.quantity;

        if (isColor === 'YES' && color.length === 0) {
            toast.error('Please Select Color');
        } else if (isSize === 'YES' && size.length === 0) {
            toast.error('Please Select Size');
        } else if (quantity.length === 0) {
            toast.error('Please Select Quantity');
        } else if (!localStorage.getItem('token')) {
            toast.warn('Please Log In First');
        } else {
            this.setState({
                addToCart: 'Adding...',
            });
            let formData = new FormData();
            formData.append('user_id', this.props.User.id);
            formData.append('product_id', this.state.id);
            formData.append('product_details_id', this.state.productId);
            formData.append('quantity', quantity);
            axios.post(AppURL.AddToCart, formData).then((response) => {
                if (response.data) {
                    toast.success('Product Successfully Add To Cart');
                    this.setState({
                        addToCart: 'Add To Cart',
                    });
                } else {
                    toast.error('Something Wrong!');
                    this.setState({
                        addToCart: 'Add To Cart',
                    });
                }
            }).catch();
        }
    }

    orderNow = () => {
        let isSize = this.state.isSize;
        let isColor = this.state.isColor;
        let color = this.state.color;
        let size = this.state.size;
        let quantity = this.state.quantity;

        if (isColor === 'YES' && color.length === 0) {
            toast.error('Please Select Color');
        } else if (isSize === 'YES' && size.length === 0) {
            toast.error('Please Select Size');
        } else if (quantity.length === 0) {
            toast.error('Please Select Quantity');
        } else if (!localStorage.getItem('token')) {
            toast.warn('Please Log In First');
        } else {
            this.setState({
                orderNow: 'Ordering...',
            });
            let formData = new FormData();
            formData.append('user_id', this.props.User.id);
            formData.append('product_id', this.state.id);
            formData.append('product_details_id', this.state.productId);
            formData.append('quantity', quantity);
            axios.post(AppURL.AddToCart, formData).then((response) => {
                if (response.data) {
                    this.setState({
                        orderNow: 'Order Now',
                    });
                    window.location.href = "/cart";
                } else {
                    toast.error('Something Wrong!');
                    this.setState({
                        orderNow: 'Order Now',
                    });
                }
            }).catch();
        }
    }

    imagePreview = (event) => {
        let imageSrc = event.target.getAttribute('src');
        this.setState({
            mainImage: imageSrc,
        });
    }

    addToFavourite = () => {
        if (!localStorage.getItem('token')) {
            toast.warn('Need To Be Log In');
        } else {
            this.setState({
                addFavourite: 'Adding...'
            });
            axios.post(AppURL.AddToFavourite(this.props.User.id, this.state.id, this.state.productId)).then((response) => {
                if (response.data) {
                    toast.success('Successfully Add To Favourite');
                    this.setState({
                        addFavourite: 'Favourite'
                    });
                } else {
                    toast.error('Something Wrong');
                    this.setState({
                        addFavourite: 'Favourite'
                    });
                }
            }).catch();
        }
    }

    priceOption(price, specialPrice) {
        if (specialPrice === '') {
            return (<p className="product-price-on-card mb-1"> Price: <b>{price}$</b></p>);
        }
        return (<p className="product-price-on-card mb-1"> Price: <strike className="text-secondary">{price}$</strike>
            <b>{specialPrice}$</b></p>);
    }

    render() {

        const {Product} = this.props;
        const {
            Product: product,
            Details: productDetails,
            Category: productCategory,
            SubCategory: productSubCategory,
        } = Product;
        if (!product || !productDetails || !productCategory || !productSubCategory) {
            return null;
        }

        const {
            id,
            title,
            price,
            special_price: specialPrice,
            brand,
            product_code: productCode,
            sub_category_id: subCategoryId,
        } = product;

        const {
            product_id: productId,
            short_description: shortDescription,
            long_description: longDescription,
            color,
            size,
            image_one: imageOne,
            image_two: imageTwo,
            image_three: imageThree,
            image_four: imageFour
        } = productDetails;

        if (this.state.mainImage === '0') {
            this.setState({
                mainImage: imageOne
            });
        }

        const {category_name: category} = productCategory;
        const {sub_category_name: subCategory} = productSubCategory;

        let colorDiv = "d-none";
        let colorOptions = [];
        let sizeDiv = "d-none";
        let sizeOptions = [];
        if (color !== '') {
            const colorArray = color.split(',');
            colorOptions = colorArray.map((colorItem, i) => (
                <option key={i} value={colorItem}>{colorItem}</option>
            ));
            colorDiv = "";
        }
        if (size !== '') {
            const sizeArray = size.split(',');
            sizeOptions = sizeArray.map((sizeItem, i) => (
                <option key={i} value={sizeItem}>{sizeItem}</option>
            ));
            sizeDiv = "";
        }

        if (this.state.isColor === null) {
            if (color !== '') {
                this.setState({
                    isColor: 'YES'
                });
            } else {
                this.setState({
                    isColor: 'NO'
                });
            }
        }

        if (this.state.isSize === null) {
            if (size !== '') {
                this.setState({
                    isSize: 'YES'
                });
            } else {
                this.setState({
                    isSize: 'NO'
                });
            }
        }

        return (
            <Fragment>
                <div>
                    <Container className="BetweenTwoSection">
                        <Row className="p-2">
                            <div className="breadcrumb-body mt-5">
                                <Breadcrumb className="ms-2">
                                    <Breadcrumb.Item><Link className="text-secondary"
                                                           to="/">Home</Link></Breadcrumb.Item>
                                    <Breadcrumb.Item><Link className="text-secondary"
                                                           to={"/product-category/" + category}>{category}</Link></Breadcrumb.Item>
                                    <Breadcrumb.Item><Link className="text-secondary"
                                                           to={"/product-category/" + subCategory}>{subCategory}</Link>
                                    </Breadcrumb.Item><Breadcrumb.Item><Link className="text-dark"
                                                                             to={"/product-details/" + id}>{title}</Link></Breadcrumb.Item>
                                </Breadcrumb>
                            </div>
                            <Col className="shadow-sm bg-white pb-3 mt-4" md={12} lg={12} sm={12} xs={12}>
                                <Row>
                                    <Col className="p-3" md={6} lg={6} sm={12} xs={12}>
                                        {/*<img id="mainImage" className="big-image" src={imageOne}/>*/}
                                        <div>
                                            <InnerImageZoom src={this.state.mainImage} zoomSrc={this.state.mainImage}
                                                            zoomType="hover" zoomScale="1.5"/>
                                        </div>
                                        <Container className="my-3">
                                            <Row>
                                                <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                                                    <img onClick={this.imagePreview} className="product-sm-image w-100"
                                                         src={imageOne}/>
                                                </Col>
                                                <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                                                    <img onClick={this.imagePreview} className="product-sm-image w-100"
                                                         src={imageTwo}/>
                                                </Col>
                                                <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                                                    <img onClick={this.imagePreview} className="product-sm-image w-100"
                                                         src={imageThree}/>
                                                </Col>
                                                <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                                                    <img onClick={this.imagePreview} className="product-sm-image w-100"
                                                         src={imageFour}/>
                                                </Col>
                                            </Row>
                                        </Container>
                                    </Col>
                                    <Col className="p-3" md={6} lg={6} sm={12} xs={12}>
                                        <h5 className="Product-Name">{title}</h5>
                                        <h6 className="section-sub-title">{shortDescription}</h6>
                                        <div className="input-group">
                                            <div className="Product-price-card d-inline">
                                                {this.priceOption(price, specialPrice)}
                                            </div>
                                        </div>
                                        <h6 className="mt-2">Category: <b
                                            className="text-info-emphasis">{category}</b></h6>
                                        <h6 className="mt-2">Sub Category: <b
                                            className="text-info-emphasis">{subCategory}</b></h6>
                                        <h6 className="mt-2">Brand: <b className="text-info-emphasis">{brand}</b>
                                        </h6>
                                        <h6 className="mt-2">Product Code: <b
                                            className="text-info-emphasis">{productCode}</b></h6>
                                        <div className={colorDiv}>
                                            <h6 className="mt-2">Select Color:</h6>
                                            <select onChange={(e) => {
                                                this.setState({color: e.target.value})
                                            }} className="form-control dorm-select">
                                                <option>Select Color</option>
                                                {colorOptions}
                                            </select>
                                        </div>

                                        <div className={sizeDiv}>
                                            <h6 className="mt-2">Select Size:</h6>
                                            <select onChange={(e) => {
                                                this.setState({size: e.target.value})
                                            }} className="form-control dorm-select">
                                                <option>Select Size</option>
                                                {sizeOptions}
                                            </select>
                                        </div>

                                        <div>
                                            <h6 className="mt-2">Select Quantity:</h6>
                                            <select onChange={(e) => {
                                                this.setState({quantity: e.target.value})
                                            }}
                                                    className="form-control dorm-select">
                                                <option>Select Quantity</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                            </select>
                                        </div>


                                        <div className="input-group mt-3">
                                            <button onClick={this.addToCart} type="submit"
                                                    className="btn site-btn m-1 "><i
                                                className="fa fa-shopping-cart"></i> {this.state.addToCart}
                                            </button>
                                            <button onClick={this.orderNow} className="btn btn-primary m-1"><i className="fa fa-car"></i> {this.state.orderNow}
                                            </button>
                                            <button onClick={this.addToFavourite} className="btn btn-primary m-1"><i
                                                className="fa fa-heart"></i> {this.state.addFavourite}
                                            </button>
                                        </div>
                                    </Col>
                                </Row>

                                <Row>
                                    <Col md={6} lg={6} sm={12} xs={12}>
                                        <h6>DETAILS</h6>
                                        <p>{longDescription}</p>
                                    </Col>

                                    <Col className="" md={6} lg={6} sm={12} xs={12}>
                                        <h6 className="mt-2">REVIEWS</h6>
                                        <hr/>
                                        <ReviewList ProductId={productId}/>
                                    </Col>
                                </Row>

                            </Col>
                        </Row>
                    </Container>
                    <ToastContainer/>
                </div>
                <div>
                    <SuggestedProduct SubCategoryId={subCategoryId}/>
                </div>
            </Fragment>

        )
    }
}

export default ProductDetails
