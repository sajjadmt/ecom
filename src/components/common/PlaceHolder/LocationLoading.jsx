import React, {Component} from 'react';
import {Container} from "react-bootstrap";

class LocationLoading extends Component {
    render() {

        let isLoading = this.props.isLoading;

        return (
            <div className={isLoading}>
                <Container className="text-center" fluid={true}>
                    <div className="row">
                        <div className="ph-item">
                            <div className="ph-col-12">
                                <div className="ph-row">
                                    <div className="ph-col-4 big"></div>
                                    <div className="ph-col-8 empty"></div>
                                    <div className="ph-col-6"></div>
                                    <div className="ph-col-4 empty"></div>
                                    <div className="ph-col-6"></div>
                                    <div className="ph-col-4 empty"></div>
                                    <div className="ph-col-6"></div>
                                </div>
                                <br/>
                            </div>
                        </div>
                    </div>
                </Container>
            </div>
        );
    }
}

export default LocationLoading;