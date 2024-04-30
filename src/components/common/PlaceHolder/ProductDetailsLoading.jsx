import React, {Component} from 'react';
import {Col, Container} from "react-bootstrap";

class ProductDetailsLoading extends Component {
    render() {
        let isLoading = this.props.isLoading;
        return (
            <div className={isLoading}>
                <div className="row center">
                    <div className="ph-item">
                        <div>
                            <div className="ph-row">
                                <div className="image-box h-100 w-100">
                                </div>
                                <div className="ph-item">
                                </div>
                                <div className="ph-item">
                                </div>
                                <div className="ph-item">
                                </div>
                                <div className="ph-item">
                                </div>
                                <div className="ph-item">
                                </div>
                            </div>
                        </div>
                        <div>
                            <div className="ph-row">
                                <div className="ph-col-2 big"></div>
                                <div className="ph-col-8 empty"></div>
                                <div className="ph-col-12"></div>
                                <div className="ph-col-12"></div>
                                <div className="ph-col-12"></div>
                                <div className="ph-col-12"></div>
                                <div className="ph-col-12"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="row center">
                    <div className="ph-item">
                        <div>
                            <div className="ph-row">
                                <div className="ph-col-2 big"></div>
                                <div className="ph-col-8 empty"></div>
                                <div className="ph-col-12"></div>
                                <div className="ph-col-12"></div>
                                <div className="ph-col-12"></div>
                                <div className="ph-col-12"></div>
                                <div className="ph-col-12"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        )
            ;
    }
}

export default ProductDetailsLoading;