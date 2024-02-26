import React, {Component, Fragment} from 'react'
import {Button, Col, Container, Navbar, Row} from "react-bootstrap";
import Logo from '../../assets/images/easyshop.png';
import {Link} from "react-router-dom";
import MegaMenu from "../home/MegaMenu";

class NavMenuDesktop extends Component {
    render() {
        return (
            <Fragment>
                <div className="TopSectionDown">
                    <Navbar className="navbar" fixed={"top"} bg="light">
                        <Container fluid={true} className="fixed-top shadow-sm p-2 mb-0 bg-white">
                            <Row>
                                <Col lg={2} md={2} sm={12} xs={12}>
                                    <MegaMenu />
                                </Col>
                                <Col lg={4} md={4} sm={12} xs={12}>
                                    <Link to="/">
                                        <img className="nav-logo" src={Logo}/>
                                    </Link>
                                </Col>
                                <Col lg={4} md={4} sm={12} xs={12} className="p-1 mt-1 input-group w-50">
                                        <input type="text" className="form-control"/>
                                        <Button type={"button"} className="btn site-btn">
                                            <i className="fa fa-search"></i>
                                        </Button>
                                </Col>
                                <Col lg={4} md={4} sm={12} xs={12} className="p-1 mt-1">
                                        <Link to="/" className="btn">
                                            <i className="fa h4 fa-bell"></i>
                                            <sup><span className="badge text-white bg-danger">
                                                5
                                            </span></sup>
                                        </Link>
                                    <a href="#" className="btn"><i className="fa h4 fa-mobile-alt"></i></a>
                                    <Link to="/" className="h4 btn">
                                        LOGIN
                                    </Link>
                                    <Button className="cart-btn">
                                        <i className="fa fa-shopping-cart"></i> 3
                                    </Button>
                                </Col>
                            </Row>
                        </Container>
                    </Navbar>
                </div>
            </Fragment>
        )
    }
}

export default NavMenuDesktop
