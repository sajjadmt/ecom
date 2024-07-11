import React, {Component, Fragment} from 'react'
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";
import Favourite from "../components/common/Favourite/Favourite";
import axios from "axios";
import AppURL from "../api/AppURL";

class FavouritePage extends Component {

    constructor() {
        super();
        this.state = {
            productList: [],
        }
    }
    componentDidMount() {
        window.scroll(0, 0);
        axios.get(AppURL.GetFavourite(this.props.user.id)).then((response)=>{
            this.setState({
                productList: response.data
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
                <Favourite Products={this.state.productList} User={this.props.user}/>
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

export default FavouritePage
