import React, {Component, Fragment} from 'react'
import {Card, Container, Row} from "react-bootstrap";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import axios from "axios";
import {Link} from "react-router-dom";
import AppURL from "../../api/AppURL";
import NewArrivalLoading from "../common/PlaceHolder/NewArrivalLoading";


class NewArrival extends Component {

    constructor(props) {
        super(props);
        this.next = this.next.bind(this);
        this.previous = this.previous.bind(this);
        this.state = {
            newProductList: [],
            isLoading: '',
            mainDiv: 'd-none',
        }
    }

    componentDidMount() {
        axios.get(AppURL.ProductListByRemark('new')).then((response) => {
            this.setState({
                newProductList: response.data,
                isLoading: 'd-none',
                mainDiv: '',
            });
        }).catch();
    }

    next() {
        this.slider.slickNext();
    }

    previous() {
        this.slider.slickPrev();
    }

    render() {
        var settings = {
            dots: false,
            infinite: true,
            speed: 500,
            autoplay: true,
            autoplaySpeed: 2000,
            arrows: false,
            slidesToShow: 4,
            slidesToScroll: 1,
            initialSlide: 0,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 4,
                        slidesToScroll: 1,
                        infinite: true,
                        dots: true
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1,
                        initialSlide: 2
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
            ]
        };
        const newProductList = this.state.newProductList;
        const newProductView = newProductList.map((newProductList, i) => {
            if (newProductList.special_price == "") {
                return <div key={i}>
                    <Link to={"/product-details/" + newProductList.id}>
                        <Card className="image-box card w-100">
                            <img className="center w-75"
                                 src={newProductList.image}
                                 alt=""/>
                            <Card.Body>
                                <p className="product-name-on-card">
                                    {newProductList.title}
                                </p>
                                <p className="product-price-on-card" id="price">
                                    Price : ${newProductList.price}
                                </p>
                            </Card.Body>
                        </Card>
                    </Link>
                </div>
            } else {
                return <div key={i}>
                    <Link to={"/product-details/" + newProductList.id}>
                    <Card className="image-box card w-100">
                        <img className="center w-75"
                             src={newProductList.image}
                             alt=""/>
                        <Card.Body>
                            <p className="product-name-on-card">
                                {newProductList.title}
                            </p>
                            <p className="product-price-on-card" id="price">
                                Price : <strike
                                className="text-secondary">${newProductList.price}</strike> ${newProductList.special_price}
                            </p>
                        </Card.Body>
                    </Card>
                    </Link>
                </div>
            }
        })
        return (
            <Fragment>
                <NewArrivalLoading isLoading={this.state.isLoading}/>
                <div className={this.state.mainDiv}>
                    <Container className="text-center" fluid={true}>
                        <div className="section-title text-center mb-55">
                            <h2>
                                NEW ARRIVAL &nbsp;
                                <a className="btn btn-sm ml-2 site-btn" onClick={this.previous}><i
                                    className="fa fa-angle-left"></i></a>
                                &nbsp;
                                <a className="btn btn-sm ml-2 site-btn" onClick={this.next}><i
                                    className="fa fa-angle-right"></i></a>
                            </h2>
                            <p>
                                New Arrival That You May Like
                            </p>
                        </div>
                        <Row>
                            <Slider ref={c => (this.slider = c)} {...settings}>
                                {newProductView}
                            </Slider>
                        </Row>
                    </Container>
                </div>
            </Fragment>
        )
    }
}

export default NewArrival
