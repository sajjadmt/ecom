import React, {Component, Fragment} from 'react'
import {Card, Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import AppURL from "../../api/AppURL";
import {Link} from "react-router-dom";
import CategoryLoading from "../common/PlaceHolder/CategoryLoading";

class Categories extends Component {

    constructor() {
        super();
        this.state = {
            menuData: [],
            isLoading: '',
            mainDiv: 'd-none',
        }
    }

    componentDidMount() {
        axios.get(AppURL.AllCategoryDetails).then((response) => {
            this.setState({
                menuData: response.data,
                isLoading: 'd-none',
                mainDiv: '',
            });
        }).catch();
    }

    render() {

        const categoryList = this.state.menuData;
        const categoryView = categoryList.map((categoryList, i) => {
            return <Col key={i.toString()} className="p-0" key={1} xxl={2} xl={3} lg={3} md={3} sm={6} xs={6}>
                <Link to={"/product-category/" + categoryList.category_name}>
                    <Card className="h-100 w-100 text-center">
                        <Card.Body>
                            <img className="center"
                                 src={categoryList.category_image}
                                 alt=""/>
                            <h5 className="category-name">
                                {categoryList.category_name}
                            </h5>
                        </Card.Body>
                    </Card>
                </Link>
            </Col>
        })

        return (
            <Fragment>
                <CategoryLoading isLoading={this.state.isLoading}/>
                <div className={this.state.mainDiv}>
                    <Container className="text-center" fluid={true}>
                        <div className="section-title text-center mb-55">
                            <h2>
                                CATEGORIES
                            </h2>
                            <p>
                                Categories That You May Like
                            </p>
                        </div>
                        <Row>
                            <Col key={1} xxl={12} xl={12} lg={12} md={12} sm={12} xs={12}>
                                <Row>
                                    {categoryView}
                                </Row>
                            </Col>
                        </Row>
                    </Container>
                </div>
            </Fragment>
        )
    }
}

export default Categories
