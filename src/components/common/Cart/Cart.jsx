import React, {Component, Fragment} from 'react'
import {Button, Card, Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../../api/AppURL";
import {toast, ToastContainer} from "react-toastify";
import {Redirect} from "react-router-dom";

class Cart extends Component {

    constructor() {
        super();
        this.state = {
            city: '',
            payment: '',
            address: '',
        }
    }

    cityChange = (event) => {
        this.setState({
            city: event.target.value
        });
    }
    paymentChange = (event) => {
        this.setState({
            payment: event.target.value
        });
    }
    addressChange = (event) => {
        this.setState({
            address: event.target.value
        });
    }

    confirmForm = (userId) => {
        let city = this.state.city;
        let payment = this.state.payment;
        let address = this.state.address;
        if (city === '') {
            toast.error('Please Select City');
        } else if (payment === '') {
            toast.error('Please Select Payment Method');
        } else if (address === '') {
            toast.error('Please Insert Your Address');
        } else {
            let formData = new FormData();
            formData.append('city',city);
            formData.append('payment',payment);
            formData.append('address',address);
            axios.post(AppURL.AddToOrder(userId),formData).then((response) => {
                toast.success('Successfully Ordered');
                window.location.reload();
            }).catch((error) => {
                toast.error('Something Wrong');
            });
        }
    }

    deleteCart = (productId) => {
        axios.get(AppURL.DeleteCart(this.props.User.id, productId)).then((response) => {
            toast.success('Successfully Deleted');
            window.location.reload();
        }).catch((error) => {
            toast.error('Something Wrong');
        });
    }
    quantityIncrease = (id) => {
        axios.get(AppURL.QuantityIncrease(id)).then((response) => {
            toast.success('Quantity Successfully Increased');
            window.location.reload();
        }).catch((error) => {
            toast.error('Something Wrong');
        });
    }
    quantityDecrease = (id) => {
        axios.get(AppURL.QuantityDecrease(id)).then((response) => {
            toast.success('Quantity Successfully Decreased');
            window.location.reload();
        }).catch((error) => {
            toast.error('Something Wrong');
        });
    }

    render() {

        if (!localStorage.getItem('token')) {
            return <Redirect to={'/login'}/>
        }

        const cartList = this.props.CartList;
        let total = 0;
        const cartView = cartList.map((list, i) => {
            total = total + parseInt(list.total_price)
            return <div>
                <Card>
                    <Card.Body>
                        <Row>
                            <Col md={3} lg={3} sm={6} xs={6}>
                                <img className="cart-product-img" src={list['product'].image}/>
                            </Col>
                            <Col md={6} lg={6} sm={6} xs={6}>
                                <h5 className="product-name">{list['product'].title}</h5>
                                <h6> Quantity = {list.quantity} </h6>
                                <h6>Total Price = ${list.total_price}</h6>
                            </Col>
                            <Col md={3} lg={3} sm={12} xs={12}>
                                <Button onClick={() => this.quantityIncrease(list.id)}
                                        className="btn mt-4 mx-1 btn-success btn-sm"><i
                                    className="fa fa-plus"></i></Button>
                                <Button onClick={() => this.quantityDecrease(list.id)}
                                        className="btn mt-4 mx-1 btn-warning btn-sm"><i
                                    className="fa fa-minus"></i></Button>
                                <Button onClick={() => this.deleteCart(list.product_id)}
                                        className="btn mt-4 mx-1 btn-danger btn-sm"><i
                                    className="fa fa-trash-alt"></i></Button>
                            </Col>
                        </Row>
                    </Card.Body>
                </Card>
            </div>
        });
        return (
            <Fragment>
                <Container fluid={true}>
                    <br/>
                    <div className="section-title text-center mb-55"><h2>Product Cart List</h2>
                    </div>
                    <Row>
                        <Col className="p-1" lg={7} md={7} sm={12} xs={12}>
                            {cartView}
                        </Col>
                        <Col className="p-1" lg={5} md={5} sm={12} xs={12}>
                            <div className="card p-2">
                                <div className="card-body">
                                    <div className="container-fluid">
                                        <div className="row">
                                            <div className="col-md-12 p-1 col-lg-12 col-sm12 col-12">
                                                <h5 className="Product-Name text-danger">
                                                    Total: <u><b>{total}$</b></u>
                                                </h5>
                                            </div>
                                        </div>
                                        <div className="row">
                                            <div className="col-md-12 p-1 col-lg-12 col-sm12 col-12">
                                                <label className="form-label">Choose City</label>
                                                <select name="city" onChange={this.cityChange} className="form-control">
                                                    <option value="">Choose</option>
                                                    <option value="Mashhad">Mashhad</option>
                                                    <option value="Sabzevar">Sabzevar</option>
                                                    <option value="Neyshabor">Neyshabor</option>
                                                    <option value="Ghochan">Ghochan</option>
                                                    <option value="Kashmar">Kashmar</option>
                                                    <option value="Sarakhs">Sarakhs</option>
                                                </select>
                                            </div>
                                            <div className="col-md-12 p-1 col-lg-12 col-sm12 col-12">
                                                <label className="form-label">Choose Payment Method</label>
                                                <select name="payment" onChange={this.paymentChange} className="form-control">
                                                    <option value="">Choose</option>
                                                    <option value="Delivery">Cash On Delivery</option>
                                                    <option value="Stripe">Stripe</option>
                                                </select>
                                            </div>
                                            <div className="col-md-12 p-1 col-lg-12 col-sm12 col-12">
                                                <label className="form-label">Address</label>
                                                <textarea name="address" onChange={this.addressChange} cols="30" rows="10"
                                                          className="form-control"
                                                          placeholder="Enter Your Address"></textarea>
                                            </div>
                                            <div className="col-md-12 p-1 col-lg-12 col-sm12 col-12">
                                                <button onClick={() => this.confirmForm(this.props.User.id)}
                                                        className="btn site-btn">Confirm
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </Col>
                    </Row>
                </Container>
                <ToastContainer/>
            </Fragment>
        )
    }
}

export default Cart
