import React, {Component, Fragment} from 'react'
import {Breadcrumb, Button, Col, Container, Form, Row} from "react-bootstrap";
import axios from "axios";
import AppUrl from "../../api/AppURL";
import {toast, ToastContainer} from "react-toastify";
import 'react-toastify/dist/ReactToastify.css';
import validation from "../../validation/validation";
import AppURL from "../../api/AppURL";
import ReactHtmlParser from 'react-html-parser';
import ContactLoading from "./PlaceHolder/ContactLoading";
import LocationLoading from "./PlaceHolder/LocationLoading";
import {Link} from "react-router-dom";

class Contact extends Component {

    constructor() {
        super();
        this.state = {
            name: '',
            email: '',
            message: '',
            address: '',
            isLoading: '',
            mainDiv: 'd-none',
        }
    }

    onNameChange = (event) => {
        this.setState({
            name: event.target.value,
        });
        document.getElementById('name').classList.remove('is-invalid');
    }

    onEmailChange = (event) => {
        this.setState({
            email: event.target.value,
        });
        document.getElementById('email').classList.remove('is-invalid');
    }

    onMessageChange = (event) => {
        this.setState({
            message: event.target.value,
        });
    }

    onFormSubmit = (event) => {
        event.preventDefault();
        if (!validation.NameRegex.test(this.state.name)) {
            toast.error('Invalid Name', {
                position: 'top-center'
            });
            document.getElementById('name').classList.add('is-invalid');
        } else if (!validation.EmailRegex.test(this.state.email)) {
            toast.error('Invalid Email', {
                position: 'top-center'
            });
            document.getElementById('email').classList.add('is-invalid');
        } else {
            document.getElementById('submit').innerHTML = "Sending...";
            const data = {
                name: this.state.name,
                email: this.state.email,
                message: this.state.message,
            }
            axios.post(AppUrl.PostContact, data)
                .then(function (response) {
                    if (response.status === 201) {
                        toast.success('Message Successfully Send', {
                            position: 'top-center'
                        });
                        document.getElementById('contactForm').reset();
                        document.getElementById('submit').innerHTML = "Send";
                    } else {
                        toast.error('Something Wrong', {
                            position: 'top-center'
                        });
                    }
                })
                .catch(function (error) {
                    toast.error('Big Error!', {
                        position: 'top-center'
                    });
                });
        }
    }

    componentDidMount() {
        window.scroll(0, 0);
        let AddressInfoSession = sessionStorage.getItem("Address");
        if (AddressInfoSession == null) {
            axios.get(AppURL.AllSiteInfo).then((response) => {
                if (response.status === 200) {
                    let address = (response.data)[0]['address'];
                    this.setState({
                        address: address,
                        isLoading: 'd-none',
                        mainDiv: '',
                    });
                    sessionStorage.setItem("Address", address);
                }
            }).catch();
        } else {
            this.setState({
                address: AddressInfoSession,
                isLoading: 'd-none',
                mainDiv: '',
            });
        }
    }

    render() {
        return (
            <Fragment>
                <Container>
                    <Row className="p-2">
                        <div className="breadcrumb-body mt-5">
                            <Breadcrumb>
                                <Breadcrumb.Item><Link className="text-secondary" to="/">Home</Link></Breadcrumb.Item>
                                <Breadcrumb.Item><Link className="text-dark" to="/contact">Contact Us</Link></Breadcrumb.Item>
                            </Breadcrumb>
                        </div>
                        <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                            <Row>
                                <Col lg={6} md={6} sm={12} xs={12}>
                                    <ContactLoading isLoading={this.state.isLoading}/>
                                    <div className={this.state.mainDiv}>
                                        <Form id="contactForm" onSubmit={this.onFormSubmit} className="onboardForm">
                                            <h4 className="section-title-login">
                                                CONTACT WITH US
                                            </h4>
                                            <p className="section-sub-title">Name</p>
                                            <input required id="name" onChange={this.onNameChange} type="text"
                                                   className="form-control mb-3"
                                                   placeholder="Your Name"/>
                                            <p className="section-sub-title">Email</p>
                                            <input required onChange={this.onEmailChange} id="email" type="email"
                                                   className="form-control mb-3"
                                                   placeholder="Your Email"/>
                                            <p className="section-sub-title">Message</p>
                                            <Form.Control required onChange={this.onMessageChange}
                                                          className="form-control mb-3"
                                                          placeholder="Your Message"
                                                          id="message" as="textarea" rows={3}/>
                                            <Button id="submit" type="submit"
                                                    className="btn btn-block m-2 site-btn-login">
                                                Send
                                            </Button>
                                        </Form>
                                    </div>
                                </Col>
                                <Col className="p-0 m-0 Desktop text-center" lg={6} md={6} sm={6} xs={6}>
                                    <br/>
                                    <br/>
                                    <br/>
                                    <LocationLoading isLoading={this.state.isLoading}/>
                                    <div className={this.state.mainDiv}>
                                        <p className="section-title-contact">
                                            {ReactHtmlParser(this.state.address)}
                                        </p>
                                        <iframe
                                            src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1434.0694140040218!2d57.68310233414023!3d36.206031492190164!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2s!4v1709535778394!5m2!1sen!2s"
                                            width="600" height="450" styles="border:0;" allowFullScreen=""
                                            loading="lazy"
                                            referrerPolicy="no-referrer-when-downgrade"></iframe>
                                    </div>
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

export default Contact
