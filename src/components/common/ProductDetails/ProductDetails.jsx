import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";
import ProductDetailsLoading from "../PlaceHolder/ProductDetailsLoading";
import SuggestedProduct from "./SuggestedProduct";
import SuggestedProductLoading from "../PlaceHolder/SuggestedProductLoading";

class ProductDetails extends Component {

    constructor() {
        super();
        this.state = {
            isLoading: '',
            mainDiv: 'd-none',
        }
    }

    componentDidMount() {
        let title = '';
        let shortDescription = '';
        let longDescription = '';
        let price = '';
        let specialPrice = '';
        let imageOne = '';
        let imageTwo = '';
        let imageThree = '';
        let imageFour = '';
        let category = '';
        let subCategory = '';
        let brand = '';
        let productCode = '';
    }

    render() {

        let product = this.props.Product.Product;
        let productDetails = this.props.Product.Details;
        let productCategory = this.props.Product.Category;
        let productSubCategory = this.props.Product.SubCategory;
        if (product && productDetails && productCategory && productSubCategory) {
            this.title = product.title;
            this.price = product.price;
            this.specialPrice = product.special_price;
            this.brand = product.brand;
            this.productCode = product.product_code;
            this.shortDescription = productDetails.short_description;
            this.longDescription = productDetails.long_description;
            this.imageOne = productDetails.image_one;
            this.imageTwo = productDetails.image_two;
            this.imageThree = productDetails.image_three;
            this.imageFour = productDetails.image_four;
            this.category = productCategory.category_name;
            this.subCategory = productSubCategory.sub_category_name;
            this.setState({
                isLoading: 'd-none',
                mainDiv: '',
            });
        }

        return (
            <Fragment>
                <ProductDetailsLoading isLoading={this.state.isLoading}/>
                <div className={this.state.mainDiv}>
                    <Container className="BetweenTwoSection">
                        <Row className="p-2">
                            <Col className="shadow-sm bg-white pb-3 mt-4" md={12} lg={12} sm={12} xs={12}>
                                <Row>
                                    <Col className="p-3" md={6} lg={6} sm={12} xs={12}>
                                        <img className="big-image" src={this.imageOne}/>
                                        <Container className="my-3">
                                            <Row>
                                                <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                                                    <img className="w-100" src={this.imageTwo}/>
                                                </Col>
                                                <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                                                    <img className="w-100" src={this.imageThree}/>
                                                </Col>
                                                <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                                                    <img className="w-100" src={this.imageFour}/>
                                                </Col>
                                            </Row>
                                        </Container>
                                    </Col>
                                    <Col className="p-3" md={6} lg={6} sm={12} xs={12}>
                                        <h5 className="Product-Name">{this.title}</h5>
                                        <h6 className="section-sub-title">{this.shortDescription}</h6>
                                        <div className="input-group">
                                            <div className="Product-price-card d-inline text-danger">Reguler
                                                Price <strike>{this.price}</strike></div>
                                            <div className="Product-price-card d-inline text-bg-warning">New
                                                Price {this.specialPrice}</div>
                                        </div>
                                        <h6 className="mt-2">Category: <b
                                            className="text-info-emphasis">{this.category}</b></h6>
                                        <h6 className="mt-2">Sub Category: <b
                                            className="text-info-emphasis">{this.subCategory}</b></h6>
                                        <h6 className="mt-2">Brand: <b className="text-info-emphasis">{this.brand}</b>
                                        </h6>
                                        <h6 className="mt-2">Product Code: <b
                                            className="text-info-emphasis">{this.productCode}</b></h6>

                                        <h6 className="mt-2">Quantity</h6>
                                        <input className="form-control text-center w-50" type="number" value="1"/>

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
                                        <p>{this.longDescription}</p>
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
                <SuggestedProductLoading isLoading={this.state.isLoading}/>
                <div className={this.state.mainDiv}>
                    <SuggestedProduct isLoading={this.state.isLoading}/>
                </div>
            </Fragment>

        )
    }
}

export default ProductDetails
