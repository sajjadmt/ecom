import React, {Component} from 'react';

class HomeTopLoading extends Component {
    render() {

        let isLoading = this.props.isLoading;

        return (
            <div className={isLoading}>
                <br/>
                <br/>
                <div className="row">
                    <div className="col-3">
                        <div className="ph-row">
                            <div className="ph-col-12"></div>
                            <div className="ph-col-12"></div>
                            <div className="ph-col-12"></div>
                            <div className="ph-col-12"></div>
                            <div className="ph-col-12"></div>
                            <div className="ph-col-12"></div>
                            <div className="ph-col-12"></div>
                        </div>
                    </div>
                    <div className="col-9">
                        <div className="ph-picture"></div>
                    </div>
                </div>
            </div>
        );
    }
}

export default HomeTopLoading;