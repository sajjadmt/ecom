import React, {Component, Fragment} from 'react';
import {Button, Card, Col, Container, Modal, Row} from "react-bootstrap";
import {toast, ToastContainer} from "react-toastify";
import axios from "axios";
import AppURL from "../../../api/AppURL";

class OrderHistory extends Component {

    constructor() {
        super();
        this.state = {
            show: false,
            rating: '',
            comment: '',
            productId: '',
        }
    }

    postReview = () =>{
        let rating = this.state.rating;
        let comment = this.state.comment;
        let productId = this.state.productId;
        let userId = this.props.User.id;
        if (rating === '') {
            toast.error('Please Select Rating');
        } else if (comment === '') {
            toast.error('Please Enter Your Comment');
        } else {
            let formData = new FormData();
            formData.append('rating',rating);
            formData.append('comment',comment);
            formData.append('productId',productId);
            axios.post(AppURL.PostReview(userId),formData).then((response) => {
                toast.success('Successfully Posted');
                this.handleClose();
            }).catch((error) => {
                toast.error('Something Wrong');
            });
        }
    }

    ratingChange = (event) =>{
        this.setState({
            rating: event.target.value,
        });
    }

    commentChange = (event) =>{
        this.setState({
            comment: event.target.value,
        });
    }

    handleClose = () => {
        this.setState({show: false})
    };

    handleShow = (productId) => {
        this.setState({
            show: true,
            productId: productId,
        })
    };

    render() {
        const orderList = this.props.OrderList;
        const orderView = orderList.map((list, i) => {
            return <div>
                <Card>
                    <Card.Body>
                        <Row>
                            <Col md={3} lg={3} sm={6} xs={6}>
                                <img className="cart-product-img" src={list['product'].image}/>
                            </Col>
                            <Col md={6} lg={6} sm={6} xs={6}>
                                <h5 className="product-name">{list['product'].title}</h5>
                                <h6> Quantity = {list['product_cart'].quantity} </h6>
                                <h6>Total Price = ${list['product_cart'].total_price}</h6>
                                <h5 className="text-danger-emphasis">
                                    {list.status}
                                </h5>
                            </Col>
                            <Col md={3} lg={3} sm={12} xs={12}>
                                <Button onClick={this.handleShow.bind(this,list['product'].id)} className="mt-4 btn-warning">Post Review</Button>
                            </Col>
                            <hr/>
                        </Row>
                    </Card.Body>
                </Card>
            </div>
        });
        return (
            <Fragment>
                <Container fluid={true}>
                    <br/>
                    <div className="section-title text-center mb-55"><h2>({this.props.User.name}) Order History</h2>
                    </div>
                    <Row>
                        <Col className="p-1" lg={7} md={7} sm={12} xs={12}>
                            {orderView}
                        </Col>
                    </Row>
                </Container>
                <ToastContainer/>
                <Modal show={this.state.show} onHide={this.handleClose}>
                    <Modal.Header closeButton>
                        <h6><i className="fa fa-comment"></i> Order Review </h6>
                    </Modal.Header>
                    <Modal.Body>
                        <div className="col-md-12 p-1 col-lg-12 col-sm12 col-12">
                            <label className="form-label">Select Rating</label>
                            <select onChange={this.ratingChange} name="rating" className="form-control">
                                <option value="">Choose</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <div className="col-md-12 p-1 col-lg-12 col-sm12 col-12">
                            <label className="form-label">Your Comment</label>
                            <textarea onChange={this.commentChange} name="comment" rows="5"
                                      className="form-control"
                                      placeholder="Enter Your Comment"></textarea>
                        </div>
                    </Modal.Body>
                    <Modal.Footer>
                        <Button variant="success" onClick={this.postReview}>
                            Post
                        </Button>
                        <Button variant="danger" onClick={this.handleClose}>
                            Close
                        </Button>

                    </Modal.Footer>
                </Modal>
            </Fragment>
        )
    }
}

export default OrderHistory;