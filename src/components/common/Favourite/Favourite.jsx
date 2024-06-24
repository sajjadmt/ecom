import React, {Component, Fragment} from 'react'
import {Button, Card, Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../../api/AppURL";
import {toast, ToastContainer} from "react-toastify";
import {Redirect} from "react-router-dom";

class Favourite extends Component {

    constructor() {
        super();
        this.state = {
            pageRefreshStatus: false
        }
    }

    deleteFavourite = (event) => {
        let productId = event.target.getAttribute('ProductId');
        axios.get(AppURL.DeleteFavourite(this.props.User.id, productId)).then((response) => {
                toast.success('Item Deleted Successfully');
                this.setState({
                    pageRefreshStatus: true
                });
        }).catch((error) => {
            toast.error('Something Wrong');
        });
    }

    pageRefresh = () => {
        if (this.state.pageRefreshStatus === true) {
            return (
                <Redirect to="/favourite"/>
            )
        }
    }

    render() {
        const productList = this.props.Products;
        const favouriteView = productList.map((favourite, i) => {
            if (favourite.special_price === "") {
                return <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                    <Card className="image-box card w-100">
                        <img className="center w-75"
                             src={favourite.image}
                             alt=""/>
                        <Card.Body>
                            <p className="product-name-on-card">
                                {favourite.title}
                            </p>
                            <p className="product-price-on-card">
                                Price : ${favourite.price}
                            </p>
                            <Button ProductId={favourite.id} onClick={this.deleteFavourite}
                                    className="btn btn-sm"><i className="fa fa-trash-alt"> Remove</i></Button>
                        </Card.Body>
                    </Card>
                </Col>
            } else {
                return <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                    <Card className="image-box card w-100">
                        <img className="center w-75"
                             src={favourite.image}
                             alt=""/>
                        <Card.Body>
                            <p className="product-name-on-card">
                                {favourite.title}
                            </p>
                            <p className="product-price-on-card">
                                Price : <strike
                                className="text-secondary">${favourite.price}</strike> ${favourite.special_price}
                            </p>
                            <Button ProductId={favourite.id} onClick={this.deleteFavourite}
                                    className="btn btn-sm"><i className="fa fa-trash-alt"> Remove</i></Button>
                        </Card.Body>
                    </Card>
                </Col>
            }
        })
        return (
            <Fragment>
                <Container className="text-center" fluid={true}>
                    <div className="section-title text-center mb-55">
                        <br/>
                        <h2 className="mt-5">
                            FAVOURITE
                        </h2>
                        <p>
                            My favourite Items
                        </p>
                    </div>
                    <Row>
                        {favouriteView}
                    </Row>
                </Container>
                <ToastContainer/>
                {this.pageRefresh()}
            </Fragment>
        )
    }
}

export default Favourite
