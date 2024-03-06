import React, {Component, Fragment} from 'react'
import {Button, Col, Container, Form, Row} from "react-bootstrap";

class Contact extends Component {

    componentDidMount() {
        window.scroll(0,0);
    }

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
                                            CONTACT WITH US
                                        </h4>
                                        <p className="section-sub-title">Mobile Number</p>
                                        <input type="text" className="form-control mb-3"
                                               placeholder="Enter Mobile Number"/>
                                        <p className="section-sub-title">Email</p>
                                        <input type="email" className="form-control mb-3" placeholder="Enter Email"/>
                                        <p className="section-sub-title">Message</p>
                                        <textarea name="message" id="" cols="30" rows="10"
                                                  className="form-control mb-3"
                                                  placeholder="Enter Your Message"></textarea>
                                        <Button className="btn btn-block m-2 site-btn-login">
                                            Send
                                        </Button>
                                    </Form>
                                </Col>
                                <Col className="p-0 m-0 Desktop text-center" lg={6} md={6} sm={6} xs={6}>
                                    <br/>
                                    <br/>
                                    <br/>
                                    <p className="section-title-contact">
                                        42454 Heller Heights, Royalfurt, DE 17109
                                        <br/>
                                        Email : momenitabar@gmail.com
                                    </p>
                                    <iframe
                                        src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1434.0694140040218!2d57.68310233414023!3d36.206031492190164!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2s!4v1709535778394!5m2!1sen!2s"
                                        width="600" height="450" styles="border:0;" allowFullScreen="" loading="lazy"
                                        referrerPolicy="no-referrer-when-downgrade"></iframe>
                                </Col>
                            </Row>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default Contact
