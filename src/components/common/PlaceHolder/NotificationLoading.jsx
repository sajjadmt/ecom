import React, {Component} from 'react';
import {Container} from "react-bootstrap";

class NotificationLoading extends Component {
    render() {
        let isLoading = this.props.isLoading;
        return (
            <div className={isLoading}>
                <Container className="text-center center" fluid={true}>
                    <div className="row">
                        <div className="col-lg-2 col-md-2 col-sm-4 col-6 p-1">
                            <a href="" className="card image-box h-100 w-100">
                                <div className="ph-picture"></div>
                                <div className="ph-item">
                                    <div className="ph-col-12">
                                        <div className="ph-row">
                                            <div className="ph-col-12 small"></div>
                                            <div className="ph-col-12 small"></div>
                                            <div className="ph-col-12 small"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div className="col-lg-2 col-md-2 col-sm-4 col-6 p-1">
                            <a href="" className="card image-box h-100 w-100">
                                <div className="ph-picture"></div>
                                <div className="ph-item">
                                    <div className="ph-col-12">
                                        <div className="ph-row">
                                            <div className="ph-col-12 small"></div>
                                            <div className="ph-col-12 small"></div>
                                            <div className="ph-col-12 small"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div className="col-lg-2 col-md-2 col-sm-4 col-6 p-1">
                            <a href="" className="card image-box h-100 w-100">
                                <div className="ph-picture"></div>
                                <div className="ph-item">
                                    <div className="ph-col-12">
                                        <div className="ph-row">
                                            <div className="ph-col-12 small"></div>
                                            <div className="ph-col-12 small"></div>
                                            <div className="ph-col-12 small"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div className="row">
                        <div className="col-lg-2 col-md-2 col-sm-4 col-6 p-1">
                            <a href="" className="card image-box h-100 w-100">
                                <div className="ph-picture"></div>
                                <div className="ph-item">
                                    <div className="ph-col-12">
                                        <div className="ph-row">
                                            <div className="ph-col-12 small"></div>
                                            <div className="ph-col-12 small"></div>
                                            <div className="ph-col-12 small"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div className="col-lg-2 col-md-2 col-sm-4 col-6 p-1">
                            <a href="" className="card image-box h-100 w-100">
                                <div className="ph-picture"></div>
                                <div className="ph-item">
                                    <div className="ph-col-12">
                                        <div className="ph-row">
                                            <div className="ph-col-12 small"></div>
                                            <div className="ph-col-12 small"></div>
                                            <div className="ph-col-12 small"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div className="col-lg-2 col-md-2 col-sm-4 col-6 p-1">
                            <a href="" className="card image-box h-100 w-100">
                                <div className="ph-picture"></div>
                                <div className="ph-item">
                                    <div className="ph-col-12">
                                        <div className="ph-row">
                                            <div className="ph-col-12 small"></div>
                                            <div className="ph-col-12 small"></div>
                                            <div className="ph-col-12 small"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </Container>
            </div>
        );
    }
}

export default NotificationLoading;