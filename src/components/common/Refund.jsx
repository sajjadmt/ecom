import React, {Component, Fragment} from 'react'
import {Breadcrumb, Col, Container, Row} from "react-bootstrap";
import ReactHtmlParser from 'react-html-parser';
import axios from "axios";
import AppURL from "../../api/AppURL";
import RefundLoading from "./PlaceHolder/RefundLoading";
import {Link} from "react-router-dom";

class Refund extends Component {

    constructor() {
        super();
        this.state = {
            refund: '',
            isLoading: '',
            mainDiv: 'd-none',
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
                        isLoading: 'd-none',
                        mainDiv: '',
                    });
                    sessionStorage.setItem("RefundInfo", refund);
                }
            }).catch()
        } else {
            this.setState({
                refund: RefundInfoSession,
                isLoading: 'd-none',
                mainDiv: '',
            });
        }
    }

    render() {
        return (
            <Fragment>
                <RefundLoading isloading={this.state.isLoading}/>
                <div className={this.state.mainDiv}>
                    <Container>
                        <br/>
                        <br/>
                        <Row className="p-2">
                            <div className="breadcrumb-body mt-2">
                                <Breadcrumb>
                                    <Breadcrumb.Item><Link className="text-secondary"
                                                           to="/">Home</Link></Breadcrumb.Item>
                                    <Breadcrumb.Item><Link className="text-dark"
                                                           to="/refund">Refund Policy</Link></Breadcrumb.Item>
                                </Breadcrumb>
                            </div>
                            <Col className="shadow-sm mt-5 bg-white" lg={12} md={12} sm={12} xs={12}>
                                {ReactHtmlParser(this.state.refund)}
                            </Col>
                        </Row>
                    </Container>
                </div>
            </Fragment>
        )
    }
}

export default Refund
