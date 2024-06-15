import React, {Component, Fragment} from 'react';
import {Button, Col, Container, Form, Row} from "react-bootstrap";
import Forget from "../../assets/images/forget.jpg";
import axios from "axios";
import AppURL from "../../api/AppURL";
import {toast, ToastContainer} from "react-toastify";

class ResetPassword extends Component {

    constructor() {
        super();
        this.state = {
            email: '',
            token: '',
            password: '',
            password_confirmation: '',
            message: '',
        }
    }

    formSubmit = (e) => {
        e.preventDefault();
        const data = {
            token: this.state.token,
            email: this.state.email,
            password: this.state.password,
            password_confirmation: this.state.password_confirmation,
        }
        axios.post(AppURL.ResetPassword, data).then((response) => {
            this.setState({
                message: response.data.message
            });
            toast.success(this.state.message);
            document.getElementById('form').reset();
        }).catch((error) => {
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
                                            RESET PASSWORD
                                        </h4>
                                        <input onChange={(e) => {
                                            this.setState({token: e.target.value})
                                        }} type="number" className="form-control mb-2"
                                               placeholder="Enter Your Pin Code"/>
                                        <input onChange={(e) => {
                                            this.setState({email: e.target.value})
                                        }} type="email" className="form-control mb-2" placeholder="Enter Your Email"/>
                                        <input onChange={(e) => {
                                            this.setState({password: e.target.value})
                                        }} type="password" className="form-control mb-2"
                                               placeholder="Enter Your New Password"/>
                                        <input onChange={(e) => {
                                            this.setState({password_confirmation: e.target.value})
                                        }} type="password" className="form-control mb-2"
                                               placeholder="Confirm Your New Password"/>
                                        <br/>
                                        <Button type="submit" className="btn btn-block site-btn-login">
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
                <ToastContainer/>
            </Fragment>
        )
    }
}

export default ResetPassword;