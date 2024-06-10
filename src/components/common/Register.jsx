import React, {Component, Fragment} from 'react';
import {Button, Col, Container, Form, Row} from "react-bootstrap";
import {Link} from "react-router-dom";
import RegisterPhoto from "../../assets/images/register.jpg";

class Register extends Component {
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
                                            USER SIGN UP
                                        </h4>
                                        <input type="text" className="form-control mb-2" placeholder="Enter Your Name"/>
                                        <input type="email" className="form-control mb-2" placeholder="Enter Your Email"/>
                                        <input type="password" className="form-control mb-2" placeholder="Enter Your Password"/>
                                        <input type="password" className="form-control mb-2" placeholder="Confirm Your Password"/>
                                        <br/>
                                        <Button className="btn btn-block site-btn-login">
                                            Register
                                        </Button>
                                        <hr/>
                                        <p><b>Forget Your Password? <Link to={"/forget-password"}><b>Forget Password</b></Link></b></p>
                                        <p><b>Have An Account? <Link to={"/login"}><b>Login</b></Link></b></p>
                                    </Form>
                                </Col>
                                <Col className="p-0 m-0 Desktop" lg={6} md={6} sm={6} xs={6}>
                                    <img className="onboardBanner" src={RegisterPhoto} alt=""/>
                                </Col>
                            </Row>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default Register;