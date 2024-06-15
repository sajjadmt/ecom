import React, {Component, Fragment} from 'react';
import {Button, Col, Container, Form, Row} from "react-bootstrap";
import {Link} from "react-router-dom";
import Forget from "../../assets/images/forget.jpg";
import axios from "axios";
import AppURL from "../../api/AppURL";
import {toast, ToastContainer} from "react-toastify";

class ForgetPassword extends Component {

    constructor() {
        super();
        this.state = {
            email: '',
            message: ''
        }
    }

    formSubmit = (e) =>{
        e.preventDefault();
        const data = {
            email: this.state.email,
        }
        axios.post(AppURL.ForgetPassword,data).then((response)=>{
            this.setState({
                message: response.data.message
            });
            document.getElementById('form').reset();
            toast.success(this.state.message);
        }).catch((error)=>{
            this.setState({
                message: error.response.data.message
            });
            toast.error(this.state.message);
        });
    }

    render() {
        return (
            <Fragment>
                <Container>
                    <Row className="p-2">
                        <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                            <Row>
                                <Col lg={6} md={6} sm={12} xs={12}>
                                    <Form className="onboardForm" onSubmit={this.formSubmit} id="form">
                                        <h4 className="section-title-login">
                                            FORGET YOUR PASSWORD?
                                        </h4>
                                        <input onChange={(e) => {this.setState({email: e.target.value})}} type="email" className="form-control mb-2" placeholder="Enter Your Email"/>
                                        <br/>
                                        <Button type="submit" className="btn btn-block site-btn-login">
                                            Reset Password
                                        </Button>
                                        <hr/>
                                        <p><b>Have An Account? <Link to={"/login"}><b>Login</b></Link></b></p>
                                        <p><b>Don't Have An Account? <Link to={"/register"}><b>Register</b></Link></b></p>
                                    </Form>
                                </Col>
                                <Col className="p-0 m-0 Desktop" lg={6} md={6} sm={6} xs={6}>
                                    <img className="onboardBanner" src={Forget} alt=""/>
                                </Col>
                            </Row>
                        </Col>
                    </Row>
                </Container>
                <ToastContainer/>
            </Fragment>
        )
    }
}

export default ForgetPassword;