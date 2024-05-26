import React, {Component, Fragment} from 'react';
import {Breadcrumb, Card, Col, Container, Row} from "react-bootstrap";
import {Link} from "react-router-dom";

class SearchList extends Component {
    render() {
        const productList = this.props.productData;
        const searchKey = this.props.SearchKey;
        const searchKeyView = productList.map((productList, i) => {
            if (productList.special_price == "") {
                return <Col key={i} className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                    <Link className="text-link" to={"/product-details/" + productList.id}>
                        <Card className="image-box card w-100">
                            <img className="center w-75"
                                 src={productList.image}
                                 alt=""/>
                            <Card.Body>
                                <p className="product-name-on-card">
                                    {productList.title}
                                </p>
                                <p className="product-price-on-card">
                                    Price : ${productList.price}
                                </p>
                            </Card.Body>
                        </Card>
                    </Link>
                </Col>
            } else {
                return <Col key={i} className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                    <Link className="text-link" to={"/product-details/" + productList.id}>
                        <Card className="image-box card w-100">
                            <img className="center w-75"
                                 src={productList.image}
                                 alt=""/>
                            <Card.Body>
                                <p className="product-name-on-card">
                                    {productList.title}
                                </p>
                                <p className="product-price-on-card">
                                    Price : <strike
                                    className="text-secondary">${productList.price}</strike> ${productList.special_price}
                                </p>
                            </Card.Body>
                        </Card>
                    </Link>
                </Col>
            }
        })
        return (
            <Fragment>
                <br/>
                <Container className="text-center" fluid={true}>
                    <div className="breadcrumb-body mt-2">
                        <Breadcrumb className="ms-2">
                            <Breadcrumb.Item><Link className="text-secondary" to="/">Home</Link></Breadcrumb.Item>
                            <Breadcrumb.Item><Link className="text-dark" to={"/product-list-by-search/" + searchKey}>Search By: {searchKey}</Link></Breadcrumb.Item>
                        </Breadcrumb>
                    </div>
                    <div className="section-title text-center mb-40 mt-2">
                        <h2>
                            {searchKey}
                        </h2>
                    </div>
                    <br/>
                    <Row>
                        {searchKeyView}
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default SearchList;