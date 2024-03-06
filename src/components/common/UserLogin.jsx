import React, {Component, Fragment} from 'react'
import {Button, Col, Container, Form, Row} from "react-bootstrap";
import Login from "../../assets/images/login.png";

class UserLogin extends Component {
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
                                             USER SIGN IN
                                        </h4>
                                        <h6 className="section-sub-title">
                                             Please Enter Your Mobile Number
                                        </h6>
                                        <input type="text" className="form-control mb-2" placeholder="Enter Mobile Number"/>
                                        <Button className="btn btn-block site-btn-login">
                                             Next
                                        </Button>
                                    </Form>
                                </Col>
                                <Col className="p-0 m-0 Desktop" lg={6} md={6} sm={6} xs={6}>
                                    <img className="onboardBanner" src={Login} alt=""/>
                                </Col>
                            </Row>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default UserLogin
