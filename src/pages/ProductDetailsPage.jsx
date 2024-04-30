import React, {Component, Fragment} from 'react'
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";
import ProductDetails from "../components/common/ProductDetails/ProductDetails";
import axios from "axios";
import AppURL from "../api/AppURL";

class ProductDetailsPage extends Component {

    constructor({match}) {
        super();
        this.state = {
            id: match.params.id,
            ProductData: [],
        }
    }

    componentDidMount() {
        window.scroll(0, 0);
        axios.get(AppURL.ProductDetails(this.state.id)).then((response) => {
            this.setState({
                ProductData: response.data
            });
        }).catch(error => {
            console.log(error)
        })
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
                <ProductDetails Product={this.state.ProductData}/>
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

export default ProductDetailsPage
