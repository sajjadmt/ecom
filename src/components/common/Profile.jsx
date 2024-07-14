import React, {Component, Fragment} from 'react';
import {Card, Col, Container, ListGroup, Row} from "react-bootstrap";
import {Link, Redirect} from "react-router-dom";

class Profile extends Component {
    avatar;
    render() {

        let name;
        let email;
        if (this.props.user) {
            name = this.props.user.name;
            email = this.props.user.email;
            this.avatar = this.props.user.profile_photo_path;
        }

        if (!localStorage.getItem('token')) {
            return <Redirect to={'/login'}/>
        }

        return (
            <Fragment>
                <Container className="mt-5">
                    <br/>
                    <br/>
                    <Row className="mt-5">
                        <Col lg={4} md={4} sm={12}>
                            <Card style={{ width: '18rem' }}>
                                <center><Card.Img className="avatar" variant="top" src={this.avatar} /></center>
                                <ListGroup className="list-group-flush">
                                    <ListGroup.Item><b><Link className="text-dark text-decoration-none" to="/order-history">Order History</Link></b></ListGroup.Item>
                                    <ListGroup.Item><b><Link className="text-dark text-decoration-none" to="/order-history">Order History</Link></b></ListGroup.Item>
                                    <ListGroup.Item><b><Link className="text-dark text-decoration-none" to="/order-history">Order History</Link></b></ListGroup.Item>
                                </ListGroup>
                            </Card>
                        </Col>
                        <Col lg={8} md={8} sm={12} className="mt-5">
                            <ul className="list-group">
                                <li className="list-group-item">Name: {name}</li>
                                <li className="list-group-item">Email: {email}</li>
                            </ul>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default Profile;