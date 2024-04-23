import React, {Component} from 'react';
import {Container} from "react-bootstrap";

class PrivacyLoading extends Component {
    render() {

        let isLoading = this.props.isLoading;

        return (
            <div className={isLoading}>
                <Container className="text-center" fluid={true}>
                    <div className="row">
                        <div className="ph-item">
                            <div className="ph-col-12">
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
                </Container>
            </div>
        );
    }
}

export default PrivacyLoading;