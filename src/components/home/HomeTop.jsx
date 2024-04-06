import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";
import MegaMenu from "./MegaMenu";
import HomeSlider from "./HomeSlider";
import axios from "axios";
import AppURL from "../../api/AppURL";

class HomeTop extends Component {

    constructor(props) {
        super();
        this.state = {
            menuData: []
        }
    }

    componentDidMount() {
        axios.get(AppURL.AllCategoryDetails).then((response) => {
            this.setState({
                menuData: response.data,
            });
        }).catch();
    }

    render() {
        return (
            <Fragment>
                <Container className="p-0 m-0 overflow-hidden" fluid={true}>
                    <Row>
                        <Col lg={3} md={3} sm={12}>
                            <MegaMenu data={this.state.menuData} />
                        </Col>
                        <Col lg={9} md={9} sm={12}>
                            <HomeSlider />
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default HomeTop
