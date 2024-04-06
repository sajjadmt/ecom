import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../api/AppURL";
import ReactHtmlParser from 'react-html-parser';

class About extends Component {

    constructor() {
        super();
        this.state = {
            about: '',
        }
    }

    componentDidMount() {
        let AboutInfoSession = sessionStorage.getItem("AboutInfo");
        if (AboutInfoSession == null) {
            axios.get(AppURL.AllSiteInfo).then((response) => {
                if (response.status === 200) {
                    let about = (response.data)[0]['about'];
                    this.setState({
                        about: about,
                    });
                    sessionStorage.setItem("AboutInfo", about);
                }
            }).catch();
        } else {
            this.setState({
                about: AboutInfoSession
            });
        }
    }

    render() {
        return (
            <Fragment>
                <Container>
                    <Row className="p-2">
                        <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                            {ReactHtmlParser(this.state.about)}
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default About
