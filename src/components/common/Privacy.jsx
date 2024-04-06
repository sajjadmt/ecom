import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../api/AppURL";
import ReactHtmlParser from 'react-html-parser';

class Privacy extends Component {

    constructor() {
        super();
        this.state = {
            privacy: ''
        }
    }

    componentDidMount() {
        let PrivacyInfoSession = sessionStorage.getItem("PrivacyInfo");
        if (PrivacyInfoSession == null) {
            axios.get(AppURL.AllSiteInfo).then((response) => {
                if (response.status === 200) {
                    let privacy = (response.data)[0]['privacy'];
                    this.setState({
                        privacy: privacy
                    });
                    sessionStorage.setItem("PrivacyInfo",privacy);
                }
            }).catch()
        } else {
            this.setState({
                privacy: PrivacyInfoSession
            });
        }
    }

    render() {
        return (
            <Fragment>
                <Container>
                    <Row className="p-2">
                        <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                            {ReactHtmlParser(this.state.privacy)}
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default Privacy
