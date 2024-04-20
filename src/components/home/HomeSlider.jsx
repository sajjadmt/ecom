import React, {Component, Fragment} from 'react';
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import {Container, Row} from "react-bootstrap";

class HomeSlider extends Component {
    render() {
        var settings = {
            dots: true,
            infinite: true,
            speed: 500,
            autoplay: true,
            autoplaySpeed: 3000,
            arrows: false,
            slidesToShow: 1,
            slidesToScroll: 1,
            initialSlide: 0,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        infinite: true,
                        dots: true
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 1,
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
        const sliderData = this.props.data;
        const sliderView = sliderData.map((sliderList, i) => {
            return <div key={i.toString()}>
                <img className="slider-img"
                     src={sliderList.slider_image}/>
            </div>
        });
        return (
            <Fragment>
                <Container className="p-0 m-0 overflow-hidden" fluid={true}>
                    <Row>
                        <Slider ref={c => (this.slider = c)} {...settings}>
                            {sliderView}
                        </Slider>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default HomeSlider
