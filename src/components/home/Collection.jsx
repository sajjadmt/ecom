import React, {Component, Fragment} from 'react'
import {Card, Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../api/AppURL";

class Collection extends Component {

    constructor() {
        super();
        this.state = {
            collectionList: []
        }
    }

    componentDidMount() {
        axios.get(AppURL.ProductListByRemark('collection')).then((response) => {
            this.setState({
                collectionList: response.data
            });
        }).catch();
    }

    render() {
        const collectionList = this.state.collectionList;
        const collectionView = collectionList.map((collectionList,i)=>{
            if (collectionList.special_price == ""){
                return <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
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
                </Col>
            } else {
                return <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                    <Card className="image-box card w-100">
                        <img className="center w-75"
                             src={collectionList.image}
                             alt=""/>
                        <Card.Body>
                            <p className="product-name-on-card">
                                {collectionList.title}
                            </p>
                            <p className="product-price-on-card">
                                Price : <strike className="text-secondary">${collectionList.price}</strike> ${collectionList.special_price}
                            </p>
                        </Card.Body>
                    </Card>
                </Col>
            }
        })
        return (
            <Fragment>
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
            </Fragment>
        )
    }
}

export default Collection
