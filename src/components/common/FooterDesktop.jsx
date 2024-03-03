import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";
import {Link} from "react-router-dom";
import Apple from "../../assets/images/apple.png";
import Google from "../../assets/images/google.png";

class FooterDesktop extends Component {
    render() {
        return (
            <Fragment>
                <div className="footerback shadow-sm mt-5 pt-3">
                    <Container>
                        <Row className="px-0 my-5">
                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">
                                    OFFICE ADDRESS
                                </h5>
                                <p>
                                    42454 Heller Heights, Royalfurt, DE 17109
                                    <br/>
                                    Email : momenitabar@gmail.com
                                </p>
                                <h5 className="footer-menu-title">SOCIAL LINK</h5>
                                <a href="#">
                                    <i className="fab fa-telegram m-1 h4"></i>
                                </a>
                                <a href="#">
                                    <i className="fab fa-instagram m-1 h4"></i>
                                </a>
                                <a href="#">
                                    <i className="fab fa-google m-1 h4"></i>
                                </a>
                                <a href="#">
                                    <i className="fab fa-twiter m-1 h4"></i>
                                </a>
                            </Col>
                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">THE COMPANY</h5>
                                <Link to="/" className="footer-link"> About Us</Link><br/>
                                <Link to="/" className="footer-link"> Company Profile</Link><br/>
                                <Link to="/" className="footer-link"> Contact Us</Link>
                            </Col>
                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">MORE INFO</h5>
                                <Link to="/" className="footer-link"> How To Purchase?</Link><br/>
                                <Link to="/" className="footer-link"> Privacy Policy</Link><br/>
                                <Link to="/" className="footer-link"> Refund Policy</Link>
                            </Col>
                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">DOWNLOAD APPS</h5>
                                <a href="#"><img src={Apple} alt=""/></a><br/>
                                <a href="#"><img className="mt-2" src={Google} alt=""/></a>
                            </Col>
                        </Row>
                    </Container>
                    <Container fluid={true} className="text-center m-0 pt-3 pb-1 bg-dark">
                        <Container>
                            <Row>
                                <h6 className="text-white">© 2024 Dan.com an Undeveloped BV subsidiary. All Rights Reserved.</h6>
                            </Row>
                        </Container>
                    </Container>
                </div>
            </Fragment>
        )
    }
}

export default FooterDesktop
