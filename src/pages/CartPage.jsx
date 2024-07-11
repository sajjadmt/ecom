import React, {Component, Fragment} from 'react'
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";
import Cart from "../components/common/Cart/Cart";
import axios from "axios";
import AppURL from "../api/AppURL";

class CartPage extends Component {

    constructor() {
        super();
        this.state = {
            cartList: [],
        }
    }

    componentDidMount() {
        window.scroll(0, 0);
        axios.get(AppURL.CartList(this.props.user.id)).then((response) => {
            this.setState({
                cartList: response.data
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
                <Cart CartList={this.state.cartList} User={this.props.user}/>
                <div className="Desktop">
                    <FooterDesktop/>
                </div>
                <div className="Mobile">
                    <FooterMobile/>
                </div>
            </Fragment>
        )
    }
}

export default CartPage
