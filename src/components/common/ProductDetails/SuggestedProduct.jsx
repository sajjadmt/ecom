import React, {Component, Fragment} from 'react'
import {Card, Col, Container, Row} from "react-bootstrap";
import {Link} from "react-router-dom";
import axios from "axios";
import AppURL from "../../../api/AppURL";

class SuggestedProduct extends Component {

    constructor(props) {
        super(props);
        this.state = {
            productList: ''
        }
    }

    componentDidMount() {
        let subCategoryId = this.props.SubCategoryId;
        axios.get(AppURL.SuggestedProduct(subCategoryId)).then((response) => {
            this.setState({
                productList: response.data
            });
        }).catch();
    }


    render() {

        let productList = this.state.productList;
        if (productList !== '') {
            var productListView = productList.map((list, i) => {
                return (
                    <Col className="p-1" key={i} xl={2} lg={2} md={2} sm={4} xs={6}>
                        <Link className="text-link" to="/product-details">
                            <Card className="image-box card">
                                <img className="center"
                                     src={list.image}
                                     alt=""/>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        {list.title}
                                    </p>
                                    <p className="product-price-on-card">
                                        Price : ${list.price}
                                    </p>
                                </Card.Body>
                            </Card>
                        </Link>
                    </Col>
                );
            });
        } else {
            return (
                <p>There Is No Suggested Products</p>
            );
        }

        return (
            <Fragment>
                <Container className="text-center" fluid={true}>
                    <div className="section-title text-center mb-55">
                        <h2>
                            YOU MAY ALSO LIKE
                        </h2>
                        <p>
                            Products That You May Like
                        </p>
                    </div>
                    <Row>
                        {productListView}
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default SuggestedProduct
