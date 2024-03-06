import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";

class Purchase extends Component {
    render() {
        return (
            <Fragment>
                <Container>
                    <Row className="p-2">
                        <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                            <h4 className="section-title-login">How To Purchase?</h4>
                            <p className="section-title-purchase">
                                <b>
                                    Are you tired of driving to the mall and fighting the crowds just to get the things
                                    you
                                    want and need?
                                </b>
                                <br/>
                                Online shopping has become a massive industry, and is more secure than
                                ever. You can find virtually any product online, as long as you know where to look. You
                                can also find some of the best deals. See Step 1 below to learn how to find what you
                                want and buy it with confidence and security.
                            </p>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default Purchase
