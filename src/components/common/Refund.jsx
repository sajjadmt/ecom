import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";
import ReactHtmlParser from 'react-html-parser';
import axios from "axios";
import AppURL from "../../api/AppURL";

class Refund extends Component {

    constructor() {
        super();
        this.state = {
            refund: '',
        }
    }

    componentDidMount() {
        let RefundInfoSession = sessionStorage.getItem("RefundInfo");
        if (RefundInfoSession == null) {
            axios.get(AppURL.AllSiteInfo).then((response) => {
                if (response.status === 200) {
                    let refund = (response.data)[0]['refund'];
                    this.setState({
                        refund: refund,
                    });
                    sessionStorage.setItem("RefundInfo", refund);
                }
            }).catch()
        } else {
            this.setState({
                refund: RefundInfoSession
            });
        }
    }

    render() {
        return (
            <Fragment>
                <Container>
                    <Row className="p-2">
                        <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                                {ReactHtmlParser(this.state.refund)}
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default Refund
