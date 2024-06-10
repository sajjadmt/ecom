import React, {Component, Fragment} from 'react';
import {Col, Container, Form, Row} from "react-bootstrap";
import ProfilePhoto from "../../assets/images/profile.jpg";

class Profile extends Component {
    render() {

        let name;
        let email;
        if (this.props.user){
            name = this.props.user.name;
            email = this.props.user.email;
        }

        return (
            <Fragment>
                <Container>
                    <Row className="p-2">
                        <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                            <Row>
                                <Col lg={6} md={6} sm={12} xs={12}>
                                    <Form className="onboardForm">
                                        <h4 className="section-title-login"> =
                                            USER PROFILE
                                        </h4>
                                        <ul className="list-group">
                                            <li className="list-group-item">Name: {name}</li>
                                            <li className="list-group-item">Email: {email}</li>
                                        </ul>
                                    </Form>
                                </Col>
                                <Col className="p-0 m-0 Desktop" lg={6} md={6} sm={6} xs={6}>
                                    <img className="onboardBanner" src={ProfilePhoto} alt=""/>
                                </Col>
                            </Row>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default Profile;