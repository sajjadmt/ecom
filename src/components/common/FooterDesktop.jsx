import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";
import {Link} from "react-router-dom";
import Apple from "../../assets/images/apple.png";
import Google from "../../assets/images/google.png";
import ReactHtmlParser from 'react-html-parser';
import axios from "axios";
import AppURL from "../../api/AppURL";

class FooterDesktop extends Component {

    constructor() {
        super();
        this.state = {
            android: '',
            ios: '',
            copyright: '',
            telegram: '',
            instagram: '',
            twitter: '',
            address: '',
        }
    }

    componentDidMount() {
        axios.get(AppURL.AllSiteInfo).then((response) => {
            if (response.status === 200) {
                let data = (response.data)[0];
                this.setState({
                    android: data['android_app_link'],
                    ios: data['ios_app_link'],
                    copyright: data['copyright_text'],
                    telegram: data['telegram_link'],
                    instagram: data['instagram_link'],
                    twitter: data['twitter_link'],
                    address: data['address'],
                });
            }
        }).catch();
    }

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
                                {ReactHtmlParser(this.state.address)}
                                <h5 className="footer-menu-title">SOCIAL LINK</h5>
                                <a href={ReactHtmlParser(this.state.telegram)}>
                                    <i className="fab fa-telegram m-1 h4"></i>
                                </a>
                                <a href={ReactHtmlParser(this.state.instagram)}>
                                    <i className="fab fa-instagram m-1 h4"></i>
                                </a>
                                <a href={ReactHtmlParser(this.state.twitter)}>
                                    <i className="fab fa-twitter m-1 h4"></i>
                                </a>
                            </Col>
                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">THE COMPANY</h5>
                                <Link to="/about" className="footer-link"> About Us</Link><br/>
                                <Link to="#" className="footer-link"> Company Profile</Link><br/>
                                <Link to="/contact" className="footer-link"> Contact Us</Link>
                            </Col>
                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">MORE INFO</h5>
                                <Link to="/purchase" className="footer-link"> How To Purchase?</Link><br/>
                                <Link to="/privacy" className="footer-link"> Privacy Policy</Link><br/>
                                <Link to="/refund" className="footer-link"> Refund Policy</Link>
                            </Col>
                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">DOWNLOAD APPS</h5>
                                <a href={ReactHtmlParser(this.state.ios)}><img src={Apple} alt=""/></a><br/>
                                <a href={ReactHtmlParser(this.state.android)}><img className="mt-2" src={Google}
                                                                                   alt=""/></a>
                                <br/>
                                <br/>
                                Change Your Language
                                <br/>
                                <div id="google_translate_element"></div>
                            </Col>
                        </Row>
                    </Container>
                    <Container fluid={true} className="text-center m-0 pt-3 pb-1 bg-dark">
                        <Container>
                            <Row>
                                <h6 className="text-white">{ReactHtmlParser(this.state.copyright)}</h6>
                            </Row>
                        </Container>
                    </Container>
                </div>
            </Fragment>
        )
    }
}

export default FooterDesktop
