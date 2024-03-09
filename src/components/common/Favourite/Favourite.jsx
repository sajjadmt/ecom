import React, {Component, Fragment} from 'react'
import {Button, Card, Col, Container, Row} from "react-bootstrap";

class Favourite extends Component {
    render() {
        return (
            <Fragment>
                <Container className="text-center" fluid={true}>
                    <div className="section-title text-center mb-55">
                        <h2 className="mt-5">
                            FAVOURITE
                        </h2>
                        <p>
                            My favourite Items
                        </p>
                    </div>
                    <Row>
                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <img className="center w-75"
                                     src="https://dkstatics-public.digikala.com/digikala-products/1ec8800f4e06e854cd8f68712eb4cc21f3fa5ed6_1663053806.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80"
                                     alt=""/>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Black Hoody
                                    </p>
                                    <p className="product-price-on-card">
                                        Price : $999
                                    </p>
                                    <Button className="btn btn-sm"><i className="fa fa-trash-alt"> Remove</i></Button>
                                </Card.Body>
                            </Card>
                        </Col>
                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <img className="center w-75"
                                     src="https://dkstatics-public.digikala.com/digikala-products/e4d39d05e875ede0e65dc090214344e8489d6776_1669796719.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80"
                                     alt=""/>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Gray Hoody
                                    </p>
                                    <p className="product-price-on-card">
                                        Price : $999
                                    </p>
                                    <Button className="btn btn-sm"><i className="fa fa-trash-alt"> Remove</i></Button>
                                </Card.Body>
                            </Card>
                        </Col>
                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <img className="center w-75"
                                     src="https://dkstatics-public.digikala.com/digikala-products/b4bff26aa888f2ba4547fdc719607f00b0b54551_1695285471.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80"
                                     alt=""/>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Green Jacket
                                    </p>
                                    <p className="product-price-on-card">
                                        Price : $999
                                    </p>
                                    <Button className="btn btn-sm"><i className="fa fa-trash-alt"> Remove</i></Button>
                                </Card.Body>
                            </Card>
                        </Col>
                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <img className="center w-75"
                                     src="https://dkstatics-public.digikala.com/digikala-products/ff1cd0559f4aaa62bcef89833f418105a5bbbe5c_1700068459.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80"
                                     alt=""/>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Black Suite
                                    </p>
                                    <p className="product-price-on-card">
                                        Price : $999
                                    </p>
                                    <Button className="btn btn-sm"><i className="fa fa-trash-alt"> Remove</i></Button>
                                </Card.Body>
                            </Card>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default Favourite
