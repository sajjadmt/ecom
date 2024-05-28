import React, {Component, Fragment} from 'react';
import {Button, Col, Container, Form, Row} from "react-bootstrap";
import Forget from "../../assets/images/forget.jpg";

class ResetPassword extends Component {
    render() {
        return (
            <Fragment>
                <Container>
                    <Row className="p-2">
                        <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                            <Row>
                                <Col lg={6} md={6} sm={12} xs={12}>
                                    <Form className="onboardForm">
                                        <h4 className="section-title-login">
                                            RESET PASSWORD
                                        </h4>
                                        <input type="number" className="form-control mb-2" placeholder="Enter Your Pin Code"/>
                                        <input type="email" className="form-control mb-2" placeholder="Enter Your Email"/>
                                        <input type="password" className="form-control mb-2" placeholder="Enter Your New Password"/>
                                        <input type="password" className="form-control mb-2" placeholder="Confirm Your New Password"/>
                                        <br/>
                                        <Button className="btn btn-block site-btn-login">
                                            Reset
                                        </Button>
                                    </Form>
                                </Col>
                                <Col className="p-0 m-0 Desktop" lg={6} md={6} sm={6} xs={6}>
                                    <img className="onboardBanner" src={Forget} alt=""/>
                                </Col>
                            </Row>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default ResetPassword;