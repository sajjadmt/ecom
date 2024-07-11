import React, {Component, Fragment} from 'react'
import {Button, Card, Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../../api/AppURL";
import {toast, ToastContainer} from "react-toastify";

class Cart extends Component {

    deleteCart = (productId) => {
        axios.get(AppURL.DeleteCart(this.props.User.id, productId)).then((response) => {
            toast.success('Successfully Deleted');
            window.location.reload();
        }).catch((error) => {
            toast.error('Something Wrong');
        });
    }

    quantityIncrease = (id) =>{
        axios.get(AppURL.QuantityIncrease(id)).then((response)=>{
            toast.success('Quantity Successfully Increased');
            window.location.reload();
        }).catch((error)=>{
            toast.error('Something Wrong');
        });
    }

    quantityDecrease = (id) =>{
        axios.get(AppURL.QuantityDecrease(id)).then((response)=>{
            toast.success('Quantity Successfully Decreased');
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
                                <Button onClick={()=>this.quantityIncrease(list.id)}
                                        className="btn mt-3 btn-sm mx-1 btn-success"><i
                                    className="fa fa-plus"></i> </Button>
                                <Button onClick={()=>this.quantityDecrease(list.id)}
                                        className="btn mt-3 btn-sm mx-1 btn-warning"><i
                                    className="fa fa-minus"></i> </Button>
                                <Button onClick={() => this.deleteCart(list.product_id)}
                                        className="btn mt-3 btn-sm mx-1 btn-danger"><i
                                    className="fa fa-trash-alt"></i> </Button>
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
