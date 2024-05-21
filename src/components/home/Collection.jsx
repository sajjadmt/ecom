import React, {Component, Fragment} from 'react'
import {Card, Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../api/AppURL";
import AddressLoading from "../common/PlaceHolder/AddressLoading";
import {Link} from "react-router-dom";

class Collection extends Component {

    constructor() {
        super();
        this.state = {
            collectionList: [],
            isLoading: '',
            mainDiv: 'd-none',
        }
    }

    componentDidMount() {
        axios.get(AppURL.ProductListByRemark('collection')).then((response) => {
            this.setState({
                collectionList: response.data,
                isLoading: 'd-none',
                mainDiv: '',
            });
        }).catch();
    }

    render() {
        const collectionList = this.state.collectionList;
        const collectionView = collectionList.map((collectionList, i) => {
            if (collectionList.special_price == "") {
                return <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                    <Link classname="text-link" to={"/product-details/" + collectionList.id}>
                    <Card className="image-box card w-100">
                        <img className="center w-75"
                             src={collectionList.image}
                             alt=""/>
                        <Card.Body>
                            <p className="product-name-on-card">
                                {collectionList.title}
                            </p>
                            <p className="product-price-on-card">
                                Price : ${collectionList.price}
                            </p>
                        </Card.Body>
                    </Card>
                    </Link>
                </Col>
            } else {
                return <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                    <Link classname="text-link" to={"/product-details/" + collectionList.id}>
                    <Card className="image-box card w-100">
                        <img className="center w-75"
                             src={collectionList.image}
                             alt=""/>
                        <Card.Body>
                            <p className="product-name-on-card">
                                {collectionList.title}
                            </p>
                            <p className="product-price-on-card">
                                Price : <strike
                                className="text-secondary">${collectionList.price}</strike> ${collectionList.special_price}
                            </p>
                        </Card.Body>
                    </Card>
                    </Link>
                </Col>
            }
        })
        return (
            <Fragment>
                <AddressLoading isLoading={this.state.isLoading}/>
                <div className={this.state.mainDiv}>
                    <Container className="text-center" fluid={true}>
                        <div className="section-title text-center mb-55">
                            <h2>
                                COLLECTION
                            </h2>
                            <p>
                                Collection That You May Like
                            </p>
                        </div>
                        <Row>
                            {collectionView}
                        </Row>
                    </Container>
                </div>
            </Fragment>
        )
    }
}

export default Collection
