import React, {Component, Fragment} from 'react'
import {Card, Col, Container, Row} from "react-bootstrap";
import {Link} from "react-router-dom";

class SuggestedProduct extends Component {
    render() {
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
                        <Col className="p-1" key={1} xl={2} lg={2} md={2} sm={4} xs={6}>
                            <Link to="/product-details">
                                <Card className="image-box card">
                                    <img className="center"
                                         src="https://rukminim2.flixcart.com/image/416/416/ktketu80/mobile/6/n/d/iphone-13-mlpg3hn-a-apple-original-imag6vpyghayhhrh.jpeg?q=70&crop=false"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Apple iPhone 13 (Starlight, 128 GB)
                                        </p>
                                        <p className="product-price-on-card">
                                            Price : $999
                                        </p>
                                    </Card.Body>
                                </Card>
                            </Link>
                        </Col>
                        <Col className="p-1" key={2} xl={2} lg={2} md={2} sm={4} xs={6}>
                            <Link to="/product-details">
                                <Card className="image-box card">
                                    <img className="center"
                                         src="https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/h/d/9/-original-imagtc2qzgnnuhxh.jpeg?q=70&crop=false"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Apple iPhone 15 (Black, 128 GB)
                                        </p>
                                        <p className="product-price-on-card">
                                            Price : $999
                                        </p>
                                    </Card.Body>
                                </Card>
                            </Link>
                        </Col>
                        <Col className="p-1" key={3} xl={2} lg={2} md={2} sm={4} xs={6}>
                            <Link to="/product-details">
                                <Card className="image-box card">
                                    <img className="center"
                                         src="https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/3/5/l/-original-imaghx9qmgqsk9s4.jpeg?q=70&crop=false"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Apple iPhone 14 (Blue, 128 GB)
                                        </p>
                                        <p className="product-price-on-card">
                                            Price : $999
                                        </p>
                                    </Card.Body>
                                </Card>
                            </Link>
                        </Col>
                        <Col className="p-1" key={4} xl={2} lg={2} md={2} sm={4} xs={6}>
                            <Link to="/product-details">
                                <Card className="image-box card">
                                    <img className="center"
                                         src="https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/a/c/k/-original-imagtc5fuzkvczr7.jpeg?q=70&crop=false"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Apple iPhone 15 (Pink, 128 GB)
                                        </p>
                                        <p className="product-price-on-card">
                                            Price : $999
                                        </p>
                                    </Card.Body>
                                </Card>
                            </Link>
                        </Col>
                        <Col className="p-1" key={5} xl={2} lg={2} md={2} sm={4} xs={6}>
                            <Link to="/product-details">
                                <Card className="image-box card">
                                    <img className="center"
                                         src="https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/b/u/f/-original-imaghxa5hvapbfds.jpeg?q=70&crop=false"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Apple iPhone 14 (Purple, 128 GB)
                                        </p>
                                        <p className="product-price-on-card">
                                            Price : $999
                                        </p>
                                    </Card.Body>
                                </Card>
                            </Link>
                        </Col>
                        <Col className="p-1" key={6} xl={2} lg={2} md={2} sm={4} xs={6}>
                            <Link to="/product-details">
                                <Card className="image-box card">
                                    <img className="center"
                                         src="https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/9/e/e/-original-imaghx9q5rvcdghy.jpeg?q=70&crop=false"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Apple iPhone 14 (Midnight, 128 GB)
                                        </p>
                                        <p className="product-price-on-card">
                                            Price : $999
                                        </p>
                                    </Card.Body>
                                </Card>
                            </Link>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default SuggestedProduct
