import React, {Component} from 'react'
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
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
import AboutPage from "../pages/AboutPage";
import ProductCategoryPage from "../pages/ProductCategoryPage";
import SearchPage from "../pages/SearchPage";
import RegisterPage from "../pages/RegisterPage";
import ForgetPasswordPage from "../pages/ForgetPasswordPage";
import ResetPasswordPage from "../pages/ResetPasswordPage";
import ProfilePage from "../pages/ProfilePage";

class AppRoute extends Component {
    render() {
        return (
            <Router>
                <Switch>
                    <Route exact path="/" render={(props)=> <HomePage {...props} key={Date.now()} /> } />
                    <Route exact path="/login" render={(props)=> <UserLoginPage {...props} key={Date.now()} /> } />
                    <Route exact path="/register" render={(props)=> <RegisterPage {...props} key={Date.now()} /> } />
                    <Route exact path="/forget" render={(props)=> <ForgetPasswordPage {...props} key={Date.now()} /> } />
                    <Route exact path="/reset/:code" render={(props)=> <ResetPasswordPage {...props} key={Date.now()} /> } />
                    <Route exact path="/profile" render={(props)=> <ProfilePage {...props} key={Date.now()} /> } />
                    <Route exact path="/contact" render={(props)=> <ContactPage {...props} key={Date.now()} /> } />
                    <Route exact path="/purchase" render={(props)=> <PurchasePage {...props} key={Date.now()} /> } />
                    <Route exact path="/privacy" render={(props)=> <PrivacyPage {...props} key={Date.now()} /> } />
                    <Route exact path="/refund" render={(props)=> <RefundPage {...props} key={Date.now()} /> } />
                    <Route exact path="/product-details/:id" render={(props)=> <ProductDetailsPage {...props} key={Date.now()} /> } />
                    <Route exact path="/notifications" render={(props)=> <NotificationPage {...props} key={Date.now()} /> } />
                    <Route exact path="/favourite" render={(props)=> <FavouritePage {...props} key={Date.now()} /> } />
                    <Route exact path="/cart" render={(props)=> <CartPage {...props} key={Date.now()} /> } />
                    <Route exact path="/about" render={(props)=> <AboutPage {...props} key={Date.now()} /> } />
                    <Route exact path="/product-category/:Category" render={(props)=> <ProductCategoryPage {...props} key={Date.now()} /> } />
                    <Route exact path="/product-list-by-search/:SearchKey" render={(props)=> <SearchPage {...props} key={Date.now()} /> } />
                </Switch>
            </Router>
        )
    }
}

export default AppRoute
