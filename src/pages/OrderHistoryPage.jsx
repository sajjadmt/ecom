import React, {Component, Fragment} from 'react';
import axios from "axios";
import AppURL from "../api/AppURL";
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";
import OrderHistory from "../components/common/Cart/OrderHistory";

class OrderHistoryPage extends Component {

    constructor() {
        super();
        this.state = {
            orderList: [],
        }
    }

    componentDidMount() {
        window.scroll(0, 0);
        axios.get(AppURL.OrderHistory(this.props.user.id)).then((response)=>{
            this.setState({
                orderList: response.data
            });
        }).catch();
    }

    render() {
        return (
            <Fragment>
                <div className="Desktop">
                    <NavMenuDesktop/>
                </div>
                <div className="Mobile">
                    <NavMenuMobile/>
                </div>
                <OrderHistory OrderList={this.state.orderList} User={this.props.user}/>
                <div className="Desktop">
                    <FooterDesktop/>
                </div>
                <div className="Mobile">
                    <FooterMobile/>
                </div>
            </Fragment>
        );
    }
}

export default OrderHistoryPage;