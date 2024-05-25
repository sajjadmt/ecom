import React, {Component, Fragment} from 'react'
import {Button, Card, Col, Container, Modal, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../../api/AppURL";
import NotificationLoading from "../PlaceHolder/NotificationLoading";

export class Notification extends Component {

    constructor() {
        super();
        this.state = {
            show: false,
            notifications: [],
            isLoading: '',
            mainDiv: 'd-none',
            notificationTitle: '',
            notificationMessage: '',
            notificationDate: '',
        }
    }

    componentDidMount() {
        axios.get(AppURL.AllNotification).then((response) => {
            this.setState({
                notifications: response.data,
                isLoading: 'd-none',
                mainDiv: '',
            });
        }).catch();
    }

    handleClose = () => {
        this.setState({show: false})
    };

    handleShow = (event) => {
        this.setState({
            show: true,
            notificationTitle: event.target.getAttribute("data-title"),
            notificationMessage: event.target.getAttribute("data-message"),
            notificationDate: event.target.getAttribute("data-date"),
        })
    };

    render() {
        const {notifications} = this.state;
        const notificationView = notifications.map((notificationItem, i) => {
            return (<Col className=" p-1 " md={6} lg={6} sm={12} xs={12}>
                <Card className="notification-card">
                    <Card.Body>
                        <h6> {notificationItem.title}</h6>
                        <p className="py-1  px-0 text-primary m-0"><i className="fa  fa-bell"></i> Date:
                            {notificationItem.date} | Status: Unread</p>
                        <Button onClick={this.handleShow} className="btn btn-warning"
                                data-title={notificationItem.title} data-message={notificationItem.message}
                                data-date={notificationItem.date}>Details</Button>
                    </Card.Body>
                </Card>
            </Col>);
        });
        return (
            <Fragment>
                <NotificationLoading isLoading={this.state.isLoading}/>
                <div className={this.state.mainDiv}>
                    <Container className="TopSection">
                        <Row>
                            {notificationView}
                        </Row>
                    </Container>
                </div>
                <Modal show={this.state.show} onHide={this.handleClose}>
                    <Modal.Header closeButton>
                        <h6><i className="fa fa-bell"></i> Date: {this.state.notificationDate}</h6>
                    </Modal.Header>
                    <Modal.Body>
                        <h6> {this.state.notificationTitle} </h6>
                        <p>
                            {this.state.notificationMessage}
                        </p>


                    </Modal.Body>
                    <Modal.Footer>
                        <Button variant="secondary" onClick={this.handleClose}>
                            Close
                        </Button>

                    </Modal.Footer>
                </Modal>
            </Fragment>
        )
    }
}

export default Notification
