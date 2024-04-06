import React, {Component, Fragment} from 'react'
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";
import Category from "../components/common/ProductDetails/Category";
import axios from "axios";
import AppURL from "../api/AppURL";

class ProductCategoryPage extends Component {

    constructor({match}) {
        super();
        this.state = {
            category: match.params.Category,
            productData: []
        }
    }

    componentDidMount() {
        window.scroll(0, 0);
        axios.get(AppURL.ProductListByCategory(this.state.category)).then((response)=>{
            this.setState({
                productData: response.data
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
                <Category Category={this.state.category} productData={this.state.productData}/>
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

export default ProductCategoryPage
