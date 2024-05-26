import React, {Component, Fragment} from 'react';
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";
import SearchList from "../components/common/ProductDetails/SearchList";
import axios from "axios";
import AppURL from "../api/AppURL";

class SearchPage extends Component {

    constructor({match}) {
        super();
        this.state = {
            SearchKey: match.params.SearchKey,
            productData: []
        }
    }

    componentDidMount() {
        window.scroll(0, 0);
        axios.get(AppURL.SearchByProduct(this.state.SearchKey)).then((response)=>{
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
                <SearchList SearchKey={this.state.SearchKey} productData={this.state.productData}/>
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

export default SearchPage;