import React, {Component, Fragment} from 'react'
import {Route, Switch} from "react-router-dom";
import HomePage from "../pages/HomePage";
import UserLoginPage from "../pages/UserLoginPage";
import ContactPage from "../pages/ContactPage";
import PurchasePage from "../pages/PurchasePage";
import PrivacyPage from "../pages/PrivacyPage";
import RefundPage from "../pages/RefundPage";
import ProductDetailsPage from "../pages/ProductDetailsPage";
import NotificationPage from "../pages/NotificationPage";
import FavouritePage from "../pages/FavouritePage";
import CartPage from "../pages/CartPage";

class AppRoute extends Component {
    render() {
        return (
            <Fragment>
                <Switch>
                    <Route exact path="/" component={HomePage}/>
                    <Route exact path="/login" component={UserLoginPage}/>
                    <Route exact path="/contact" component={ContactPage}/>
                    <Route exact path="/purchase" component={PurchasePage}/>
                    <Route exact path="/privacy" component={PrivacyPage}/>
                    <Route exact path="/refund" component={RefundPage}/>
                    <Route exact path="/product-details" component={ProductDetailsPage}/>
                    <Route exact path="/notifications" component={NotificationPage}/>
                    <Route exact path="/favourite" component={FavouritePage}/>
                    <Route exact path="/cart" component={CartPage}/>
                </Switch>
            </Fragment>
        )
    }
}

export default AppRoute
