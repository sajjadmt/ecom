import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";
import HomeSlider from "./HomeSlider";
import axios from "axios";
import AppURL from "../../api/AppURL";

class HomeTopMobile extends Component {

    constructor() {
        super();
        this.state = {
            sliderData: []
        }
    }

    componentDidMount() {
        axios.get(AppURL.AllSlider).then((response)=>{
            this.setState({
                sliderData: response.data,
            });
        }).catch();
    }

    render() {
        return (
            <Fragment>
                <Container className="p-0 m-0 overflow-hidden" fluid={true}>
                    <Row className="p-0 m-0 overflow-hidden">
                        <Col lg={12} md={12} sm={12}>
                            <HomeSlider data={this.state.sliderData}/>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default HomeTopMobile
