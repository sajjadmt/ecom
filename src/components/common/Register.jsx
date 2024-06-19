import React, {Component, Fragment} from 'react';
import {Button, Col, Container, Form, Row} from "react-bootstrap";
import {Link, Redirect} from "react-router-dom";
import RegisterPhoto from "../../assets/images/register.jpg";
import axios from "axios";
import AppURL from "../../api/AppURL";

class Register extends Component {

    constructor() {
        super();
        this.state = {
            name: '',
            email: '',
            password: '',
            password_confirmation: '',
            message: '',
            loggedIn: false,
        }
    }

    formSubmit = (e) => {
        e.preventDefault();
        const data = {
            name: this.state.name,
            email: this.state.email,
            password: this.state.password,
            password_confirmation: this.state.password_confirmation,
        }
        axios.post(AppURL.UserRegister,data).then((response)=>{
            localStorage.setItem('token',response.data.token);
            this.setState({
                loggedIn: true,
            });
            this.props.setUser(response.data.user)
        }).catch();
    }

    render() {

        if (this.state.loggedIn || localStorage.getItem('token')){
            return <Redirect to={'/profile'} />
        }

        return (
            <Fragment>
                <Container>
                    <Row className="p-2">
                        <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                            <Row>
                                <Col lg={6} md={6} sm={12} xs={12}>
                                    <Form className="onboardForm" onSubmit={this.formSubmit}>
                                        <h4 className="section-title-login">
                                            USER SIGN UP
                                        </h4>
                                        <input onChange={(e)=>{this.setState({name:e.target.value})}} type="text" className="form-control mb-2" placeholder="Enter Your Name"/>
                                        <input onChange={(e)=>{this.setState({email:e.target.value})}} type="email" className="form-control mb-2" placeholder="Enter Your Email"/>
                                        <input onChange={(e)=>{this.setState({password:e.target.value})}} type="password" className="form-control mb-2" placeholder="Enter Your Password"/>
                                        <input onChange={(e)=>{this.setState({password_confirmation:e.target.value})}} type="password" className="form-control mb-2" placeholder="Confirm Your Password"/>
                                        <br/>
                                        <Button type="submit" className="btn btn-block site-btn-login">
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