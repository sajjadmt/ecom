import React, {Component, Fragment} from 'react'
import {Card, Col, Container, Row} from "react-bootstrap";
import {Link} from "react-router-dom";
import axios from "axios";
import AppURL from "../../api/AppURL";

class FeaturedProducts extends Component {

    constructor() {
        super();
        this.state = {
            productList: [],
        }
    }

    componentDidMount() {
        axios.get(AppURL.ProductListByRemark('featured')).then((response) => {
            this.setState({
                productList: response.data
            });
        }).catch();
    }

    render() {
        const featuredList = this.state.productList;
        const featuredView = featuredList.map((featuredList, i) => {
            if (featuredList.special_price == "") {
                return <Col className="p-1" key={i} xl={2} lg={2} md={2} sm={4} xs={6}>
                    <Link to="/product-details">
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
                    <Link to="/product-details">
                        <Card className="image-box card">
                            <img className="center"
                                 src={featuredList.image}
                                 alt=""/>
                            <Card.Body>
                                <p className="product-name-on-card">
                                    {featuredList.title}
                                </p>
                                <p className="product-price-on-card" id="price">
                                    Price : <strike className="text-secondary">${featuredList.price}</strike> ${featuredList.special_price}
                                </p>
                            </Card.Body>
                        </Card>
                    </Link>
                </Col>
            }
        });
        return (
            <Fragment>
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
            </Fragment>
        )
    }
}

export default FeaturedProducts
