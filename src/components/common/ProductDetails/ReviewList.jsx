import React, {Component} from 'react';
import axios from "axios";
import AppURL from "../../../api/AppURL";

class ReviewList extends Component {

    constructor(props) {
        super(props);
        this.state = {
            reviewData: []
        }
    }

    componentDidMount() {
        let ProductId = this.props.ProductId;
        axios.get(AppURL.ReviewList(ProductId)).then((response) => {
            this.setState({
                reviewData: response.data
            });
        }).catch();
    }

    render() {

        let reviewList = this.state.reviewData;
        if (reviewList.length > 0) {
            var reviewListView = reviewList.map((list, i) => {
                switch (list.reviewer_rating) {
                    case "1":
                        return (
                            <div key={i}>
                                <p className=" p-0 m-0"><span className="Review-Title">{list.reviewer_name}</span>
                                    <span
                                        className="text-success"> <i className="fa fa-star"></i> </span></p>
                                <p>{list.reviewer_comment}</p>
                            </div>
                        );
                    case "2":
                        return (
                            <div key={i}>
                                <p className=" p-0 m-0"><span className="Review-Title">{list.reviewer_name}</span>
                                    <span
                                        className="text-success"> <i className="fa fa-star"></i> <i
                                        className="fa fa-star"></i> </span></p>
                                <p>{list.reviewer_comment}</p>
                            </div>
                        );
                    case "3":
                        return (
                            <div key={i}>
                                <p className=" p-0 m-0"><span className="Review-Title">{list.reviewer_name}</span>
                                    <span
                                        className="text-success"> <i className="fa fa-star"></i> <i
                                        className="fa fa-star"></i> <i className="fa fa-star"></i> </span></p>
                                <p>{list.reviewer_comment}</p>
                            </div>
                        );
                    case "4":
                        return (
                            <div key={i}>
                                <p className=" p-0 m-0"><span className="Review-Title">{list.reviewer_name}</span>
                                    <span
                                        className="text-success"> <i className="fa fa-star"></i> <i
                                        className="fa fa-star"></i> <i className="fa fa-star"></i> <i
                                        className="fa fa-star"></i> </span></p>
                                <p>{list.reviewer_comment}</p>
                            </div>
                        );
                    case "5":
                        return (
                            <div key={i}>
                                <p className=" p-0 m-0"><span className="Review-Title">{list.reviewer_name}</span>
                                    <span
                                        className="text-success"> <i className="fa fa-star"></i> <i
                                        className="fa fa-star"></i> <i className="fa fa-star"></i> <i
                                        className="fa fa-star"></i> <i
                                        className="fa fa-star"></i> </span></p>
                                <p>{list.reviewer_comment}</p>
                            </div>
                        );
                }
            });
        } else {
            return (
                <p>There Is No Review To Show</p>
            );
        }
        return (
            <div>
                {reviewListView}
            </div>
        );
    }
}

export default ReviewList;