import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";
import MegaMenu from "./MegaMenu";
import HomeSlider from "./HomeSlider";
import axios from "axios";
import AppURL from "../../api/AppURL";
import HomeTopLoading from "../common/PlaceHolder/HomeTopLoading";

class HomeTop extends Component {

    constructor(props) {
        super();
        this.state = {
            menuData: [],
            sliderData: [],
            isLoading: '',
            mainDiv: 'd-none'
        }
    }

    componentDidMount() {
        axios.get(AppURL.AllCategoryDetails).then((response) => {
            this.setState({
                menuData: response.data,
            });
        }).catch();
        axios.get(AppURL.AllSlider).then((response) => {
            this.setState({
                sliderData: response.data,
                isLoading: 'd-none',
                mainDiv: '',
            });
        }).catch();
    }

    render() {
        return (
            <Fragment>
                <HomeTopLoading isLoading={this.state.isLoading} />
                <div className={this.state.mainDiv}>
                <Container className="p-0 m-0 overflow-hidden" fluid={true}>
                    <Row>
                        <Col lg={3} md={3} sm={12}>
                            <MegaMenu data={this.state.menuData}/>
                        </Col>
                        <Col lg={9} md={9} sm={12}>
                            <HomeSlider data={this.state.sliderData}/>
                        </Col>
                    </Row>
                </Container>
                </div>
            </Fragment>
        )
    }
}

export default HomeTop
