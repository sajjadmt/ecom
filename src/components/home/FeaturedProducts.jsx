import React, {Component, Fragment} from 'react'
import {Card, Col, Container, Row} from "react-bootstrap";
import {Link} from "react-router-dom";
import axios from "axios";
import AppURL from "../../api/AppURL";
import FeaturedProductsLoading from "../common/PlaceHolder/FeaturedProductsLoading";

class FeaturedProducts extends Component {

    constructor(props) {
        super();
        this.state = {
            productList: [],
            isLoading: '',
            mainDiv: 'd-none'
        }
    }

    componentDidMount() {
        axios.get(AppURL.ProductListByRemark('featured')).then((response) => {
            this.setState({
                productList: response.data,
                isLoading: 'd-none',
                mainDiv: '',
            });
        }).catch();
    }

    render() {
        const featuredList = this.state.productList;
        const featuredView = featuredList.map((featuredList, i) => {
            if (featuredList.special_price == "") {
                return <Col className="p-1" key={i} xl={2} lg={2} md={2} sm={4} xs={6}>
                    <Link to={"/product-details/" + featuredList.id}>
                        <Card className="image-box card">
                            <img className="center"
                                 src={featuredList.image}
                                 alt=""/>
                            <Card.Body>
                                <p className="product-name-on-card">
                                    {featuredList.title}
                                </p>
                                <p className="product-price-on-card" id="price">
                                    Price : ${featuredList.price}
                                </p>
                            </Card.Body>
                        </Card>
                    </Link>
                </Col>
            } else {
                return <Col className="p-1" key={i} xl={2} lg={2} md={2} sm={4} xs={6}>
                    <Link to={"/product-details/" + featuredList.id}>
                        <Card className="image-box card">
                            <img className="center"
                                 src={featuredList.image}
                                 alt=""/>
                            <Card.Body>
                                <p className="product-name-on-card">
                                    {featuredList.title}
                                </p>
                                <p className="product-price-on-card" id="price">
                                    Price : <strike
                                    className="text-secondary">${featuredList.price}</strike> ${featuredList.special_price}
                                </p>
                            </Card.Body>
                        </Card>
                    </Link>
                </Col>
            }
        });
        return (
            <Fragment>
                <FeaturedProductsLoading isLoading={this.state.isLoading}/>
                <div className={this.state.mainDiv}>
                    <Container className="text-center" fluid={true}>
                        <div className="section-title text-center mb-55">
                            <h2>
                                FEATURED PRODUCTS
                            </h2>
                            <p>
                                Products That You May Like
                            </p>
                        </div>
                        <Row>
                            {featuredView}
                        </Row>
                    </Container>
                </div>
            </Fragment>
        )
    }
}

export default FeaturedProducts
