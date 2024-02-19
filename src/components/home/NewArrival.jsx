import React, {Component, Fragment} from 'react'
import {Card, Container, Row} from "react-bootstrap";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";


class NewArrival extends Component {

    constructor(props) {
        super(props);
        this.next=this.next.bind(this);
        this.previous=this.previous.bind(this);
    }
    next(){
        this.slider.slickNext();
    }
    previous(){
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
        return (
            <Fragment>
                <Container className="text-center" fluid={true}>
                    <div className="section-title text-center mb-55">
                        <h2>
                            NEW ARRIVAL &nbsp;
                        <a className="btn btn-sm ml-2 site-btn" onClick={this.previous}><i className="fa fa-angle-left"></i></a>
                            &nbsp;
                        <a className="btn btn-sm ml-2 site-btn" onClick={this.next}><i className="fa fa-angle-right"></i></a>
                        </h2>
                        <p>
                            New Arrival That You May Like
                        </p>
                    </div>
                    <Row>
                        <Slider ref={c=>(this.slider=c)} {...settings}>
                            <div>
                                <Card className="image-box card w-100">
                                    <img className="center w-75"
                                         src="https://dkstatics-public.digikala.com/digikala-products/c8e531474bb43bccffb4bf007be82c4d11a4a59f_1707129734.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Pixel Mobile
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card w-100">
                                    <img className="center w-75"
                                         src="https://dkstatics-public.digikala.com/digikala-products/7a7f40beaeb42af758c5b15f6477f45e52ae66bf_1689784988.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Handsfree
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card w-100">
                                    <img className="center w-75"
                                         src="https://dkstatics-public.digikala.com/digikala-products/6e3260cfbda4534de0ce401a692e67ecb9fadd0b_1689241700.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Food Maker
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card w-100">
                                    <img className="center w-75"
                                         src="https://dkstatics-public.digikala.com/digikala-products/d63479e7720b08c393b3bf3169277291a4993def_1707124096.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Nexar Monitor
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card w-100">
                                    <img className="center w-75"
                                         src="https://dkstatics-public.digikala.com/digikala-products/1315594.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Shampoo
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card w-100">
                                    <img className="center w-75"
                                         src="https://dkstatics-public.digikala.com/digikala-products/1e33e964db33f5b21880a7a0e03a2890bae764e4_1696658658.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Glasses
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card w-100">
                                    <img className="center w-75"
                                         src="https://dkstatics-public.digikala.com/digikala-products/90087dacf640bd888d1e4ef677279ff5d84bb2c9_1635869842.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Book
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card w-100">
                                    <img className="center w-75"
                                         src="https://dkstatics-public.digikala.com/digikala-products/1b3b94319e67a329b8b10c51ae49df07e7e46254_1676791355.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80"
                                         alt=""/>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Flash Memory
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                        </Slider>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default NewArrival
