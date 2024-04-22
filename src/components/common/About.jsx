import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../api/AppURL";
import ReactHtmlParser from 'react-html-parser';
import AboutLoading from "./PlaceHolder/AboutLoading";

class About extends Component {

    constructor() {
        super();
        this.state = {
            about: '',
            isLoading: '',
            mainDiv: 'd-none',
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
                        isLoading: 'd-none',
                        mainDiv: '',
                    });
                    sessionStorage.setItem("AboutInfo", about);
                }
            }).catch();
        } else {
            this.setState({
                about: AboutInfoSession,
                isLoading: 'd-none',
                mainDiv: '',
            });
        }
    }

    render() {
        return (
            <Fragment>
                <AboutLoading isLoading={this.state.isLoading}/>
                <div className={this.state.mainDiv}>
                    <Container>
                        <Row className="p-2">
                            <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                                <br/>
                                <br/>
                                {ReactHtmlParser(this.state.about)}
                            </Col>
                        </Row>
                    </Container>
                </div>
            </Fragment>
        )
    }
}

export default About
