import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../api/AppURL";
import ReactHtmlParser from 'react-html-parser';
import PrivacyLoading from "./PlaceHolder/PrivacyLoading";

class Privacy extends Component {

    constructor() {
        super();
        this.state = {
            privacy: '',
            isLoading: '',
            mainDiv: 'd-none',
        }
    }

    componentDidMount() {
        let PrivacyInfoSession = sessionStorage.getItem("PrivacyInfo");
        if (PrivacyInfoSession == null) {
            axios.get(AppURL.AllSiteInfo).then((response) => {
                if (response.status === 200) {
                    let privacy = (response.data)[0]['privacy'];
                    this.setState({
                        privacy: privacy,
                        isLoading: 'd-none',
                        mainDiv: '',
                    });
                    sessionStorage.setItem("PrivacyInfo", privacy);
                }
            }).catch()
        } else {
            this.setState({
                privacy: PrivacyInfoSession,
                isLoading: '',
                mainDiv: 'd-none'
            });
        }
    }

    render() {
        return (
            <Fragment>
                <PrivacyLoading isLoading={this.state.isLoading}/>
                <div className={this.state.mainDiv}>
                    <Container>
                        <Row className="p-2">
                            <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                                <br/>
                                <br/>
                                {ReactHtmlParser(this.state.privacy)}
                            </Col>
                        </Row>
                    </Container>
                </div>
            </Fragment>
        )
    }
}

export default Privacy
