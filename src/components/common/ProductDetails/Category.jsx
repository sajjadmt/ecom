import React, {Component, Fragment} from 'react'
import {Card, Col, Container, Row} from "react-bootstrap";

class Category extends Component {
    render() {
        const categoryList = this.props.productData;
        const category = this.props.Category;
        const categoryView = categoryList.map((categoryList,i)=>{
            if (categoryList.special_price == ""){
                return <Col key={i} className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                    <Card className="image-box card w-100">
                        <img className="center w-75"
                             src={categoryList.image}
                             alt=""/>
                        <Card.Body>
                            <p className="product-name-on-card">
                                {categoryList.title}
                            </p>
                            <p className="product-price-on-card">
                                Price : ${categoryList.price}
                            </p>
                        </Card.Body>
                    </Card>
                </Col>
            } else {
                return <Col key={i} className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                    <Card className="image-box card w-100">
                        <img className="center w-75"
                             src={categoryList.image}
                             alt=""/>
                        <Card.Body>
                            <p className="product-name-on-card">
                                {categoryList.title}
                            </p>
                            <p className="product-price-on-card">
                                Price : <strike className="text-secondary">${categoryList.price}</strike> ${categoryList.special_price}
                            </p>
                        </Card.Body>
                    </Card>
                </Col>
            }
        })
        return (
            <Fragment>
                <br/>
                <Container className="text-center" fluid={true}>
                    <div className="section-title text-center mb-55">
                        <h2>
                            {category}
                        </h2>
                    </div>
                    <br/>
                    <Row>
                        {categoryView}
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default Category
