import React, {Component, Fragment} from 'react'
import {Breadcrumb, Col, Container, Row} from "react-bootstrap";
import SuggestedProduct from "./SuggestedProduct";
import ReactDOM from "react-dom";
import {Link} from "react-router-dom";
import 'react-inner-image-zoom/lib/InnerImageZoom/styles.css';
import InnerImageZoom from 'react-inner-image-zoom';

class ProductDetails extends Component {

    constructor() {
        super();
        this.state = {
            mainImage: '0',
        }
    }

    imagePreview = (event) => {
        let imageSrc = event.target.getAttribute('src');
        this.setState({
            mainImage: imageSrc,
        });
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
            SubCategory: productSubCategory
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
            product_code: productCode
        } = product;

        const {
            short_description: shortDescription,
            long_description: longDescription,
            color,
            size,
            image_one: imageOne,
            image_two: imageTwo,
            image_three: imageThree,
            image_four: imageFour
        } = productDetails;

        if (this.state.mainImage === '0'){
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
                                            <InnerImageZoom src={this.state.mainImage} zoomSrc={this.state.mainImage} zoomType="hover" zoomScale="1.5"/>
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
                                            <select className="form-control dorm-select">
                                                <option>Select Color</option>
                                                {colorOptions}
                                            </select>
                                        </div>

                                        <div className={sizeDiv}>
                                            <h6 className="mt-2">Select Size:</h6>
                                            <select className="form-control dorm-select">
                                                <option>Select Size</option>
                                                {sizeOptions}
                                            </select>
                                        </div>

                                        <div>
                                            <h6 className="mt-2">Select Quantity:</h6>
                                            <select className="form-control dorm-select">
                                                <option>Select Quantity</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                            </select>
                                        </div>


                                        <div className="input-group mt-3">
                                            <button className="btn site-btn m-1 "><i
                                                className="fa fa-shopping-cart"></i> Add To Cart
                                            </button>
                                            <button className="btn btn-primary m-1"><i className="fa fa-car"></i> Order
                                                Now
                                            </button>
                                            <button className="btn btn-primary m-1"><i
                                                className="fa fa-heart"></i> Favourite
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
                                        <p className=" p-0 m-0"><span className="Review-Title">Kazi Ariyan</span> <span
                                            className="text-success"><i className="fa fa-star"></i> <i
                                            className="fa fa-star"></i> <i className="fa fa-star"></i> <i
                                            className="fa fa-star"></i> </span></p>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                            nibh
                                            euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>

                                        <p className=" p-0 m-0"><span className="Review-Title">Kazi Ariyan</span> <span
                                            className="text-success"><i className="fa fa-star"></i> <i
                                            className="fa fa-star"></i> <i className="fa fa-star"></i> <i
                                            className="fa fa-star"></i> </span></p>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                            nibh
                                            euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>

                                        <p className=" p-0 m-0"><span className="Review-Title">Kazi Ariyan</span> <span
                                            className="text-success"><i className="fa fa-star"></i> <i
                                            className="fa fa-star"></i> <i className="fa fa-star"></i> <i
                                            className="fa fa-star"></i> </span></p>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                            nibh
                                            euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>

                                    </Col>
                                </Row>

                            </Col>
                        </Row>
                    </Container>
                </div>
                <div>
                    <SuggestedProduct/>
                </div>
            </Fragment>

        )
    }
}

export default ProductDetails
