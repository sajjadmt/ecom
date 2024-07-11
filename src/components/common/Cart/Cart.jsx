import React, {Component, Fragment} from 'react'
import {Button, Card, Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../../api/AppURL";
import {toast, ToastContainer} from "react-toastify";

class Cart extends Component {

    deleteCart = (event) => {
        let productId = event.target.getAttribute('ProductId');
        axios.get(AppURL.DeleteCart(this.props.User.id, productId)).then((response) => {
            toast.success('Successfully Deleted');
            window.location.reload();
        }).catch((error)=>{
            toast.error('Something Wrong');
        });
    }

    render() {
        const cartList = this.props.CartList;
        const cartView = cartList.map((list, i) => {
            return <Col className="p-1" lg={12} md={12} sm={12} xs={12}>
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
                                <input placeholder={list.quantity} className="form-control text-center" type="number"/>
                                <Button ProductId={list.product_id} onClick={this.deleteCart}
                                        className="btn btn-block w-100 mt-3  site-btn"><i
                                    className="fa fa-trash-alt"></i> Remove </Button>
                            </Col>
                        </Row>
                    </Card.Body>
                </Card>
            </Col>
        });
        return (
            <Fragment>
                <Container>
                    <br/>
                    <div className="section-title text-center mb-55"><h2>Product Cart List</h2>
                    </div>
                    <Row>
                        {cartView}
                    </Row>
                </Container>
                <ToastContainer/>
            </Fragment>
        )
    }
}

export default Cart
