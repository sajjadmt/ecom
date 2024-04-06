import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../api/AppURL";
import ReactHtmlParser from 'react-html-parser';

class Purchase extends Component {

    constructor() {
        super();
        this.state = {
            purchase: ''
        }
    }

    componentDidMount() {
        let SiteInfoSession = sessionStorage.getItem("PurchaseInfo");
        if (SiteInfoSession == null) {
            axios.get(AppURL.AllSiteInfo).then((response) => {
                if (response.status === 200) {
                    let purchase = (response.data)[0]['purchase_guide'];
                    this.setState({
                        purchase: purchase
                    });
                    sessionStorage.setItem("PurchaseInfo", purchase);
                }
            }).catch();
        } else {
            this.setState({
                purchase: SiteInfoSession
            });
        }
    }

    render() {
        return (
            <Fragment>
                <Container>
                    <Row className="p-2">
                        <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                            {ReactHtmlParser(this.state.purchase)}
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default Purchase
