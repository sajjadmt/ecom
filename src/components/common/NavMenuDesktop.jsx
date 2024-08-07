import React, {Component, Fragment} from 'react'
import {Button, Col, Container, Navbar, Row} from "react-bootstrap";
import Logo from '../../assets/images/easyshop.png';
import {Link, Redirect} from "react-router-dom";
import MegaMenuAll from "../home/MegaMenuAll";
import axios from "axios";
import AppURL from "../../api/AppURL";

class NavMenuDesktop extends Component {

    constructor(props) {
        super(props);
        this.state = {
            SideNavState: "sideNavClose",
            ContentOverState: "ContentOverlayClose",
            searchKey: "",
            SearchRedirectStatus: false,
            id: '',
            cartCount: 0
        }
        this.SearchOnChange = this.SearchOnChange.bind(this);
        this.SearchOnClick = this.SearchOnClick.bind(this);
        this.SearchRedirect = this.SearchRedirect.bind(this);
    }

    componentDidMount() {
        this.updateStateFromProps();
    }

    componentDidUpdate(prevProps) {
        if (this.state.id !== ''){
            axios.get(AppURL.CartCount(this.state.id)).then((response)=>{
                this.setState({
                    cartCount: response.data
                });
            }).catch();
        }
        if (prevProps.User !== this.props.User) {
            this.updateStateFromProps();
        }
    }

    updateStateFromProps() {
        const { User } = this.props;
        if (User) {
            const { id } = User;
            this.setState({
                id: id,
            });
        }
    }

    logOut = () => {
        localStorage.clear();
    }

    SearchOnChange(event){
        this.setState({
            searchKey: event.target.value,
        });
    }

    SearchOnClick(){
        if (this.state.searchKey.length >= 2){
            this.setState({
                SearchRedirectStatus: true
            });
        }
    }

    SearchRedirect(){
        if (this.state.SearchRedirectStatus === true){
            return <Redirect to={"/product-list-by-search/" + this.state.searchKey} />
        }
    }

    MenuBarClickHandler = () => {
        this.SideNavOpenClose();
    }

    ContentOverlayClickHandler = () => {
        this.SideNavOpenClose();
    }

    SideNavOpenClose = () => {
        let SideNavState = this.state.SideNavState;
        let ContentOverState = this.state.ContentOverState;
        if (SideNavState === "sideNavOpen") {
            this.setState({
                SideNavState: "sideNavClose",
                ContentOverState: "ContentOverlayClose"
            });
        } else {
            this.setState({
                SideNavState: "sideNavOpen",
                ContentOverState: "ContentOverlayOpen"
            });
        }
    }

    render() {
        let auth;
        if (localStorage.getItem('token')){
            auth = (
                <div>
                    <Link to="/profile" className="h4 btn">
                        PROFILE
                    </Link>
                    <Link to="/" onClick={this.logOut} className="h4 btn">
                        LOGOUT
                    </Link>
                    <Link to="/cart" className="cart-btn">
                        <i className="fa fa-shopping-cart"></i> {this.state.cartCount} Items</Link>
                </div>
            )
        } else {
            auth = (
                <div>
                    <Link to="/login" className="h4 btn">
                        LOGIN
                    </Link>
                    <Link to="/register" className="h4 btn">
                        REGISTER
                    </Link>
                    <Link to="/cart" className="cart-btn">
                        <i className="fa fa-shopping-cart"></i> 0 Items</Link>
                </div>
            )
        }

        return (
            <Fragment>
                <div className="TopSectionDown">
                    <Navbar fixed={"top"} bg="light" className="navbar">
                        <Container fluid={true} className="fixed-top shadow-sm p-2 mb-0 bg-white">
                            <Row>
                                <Col lg={4} md={4} sm={12} xs={12}>
                                    <Button onClick={this.MenuBarClickHandler} className="btn btn-light">
                                        <i className="fa fa-bars"></i></Button>
                                    <Link to="/">
                                        <img className="nav-logo" src={Logo}/>
                                    </Link>
                                </Col>
                                <Col className="p-1 mt-1" lg={4} md={4} sm={12} xs={12}>
                                    <div className="input-group w-100">
                                        <input onChange={this.SearchOnChange} type="text" className="form-control"/>
                                        <Button onClick={this.SearchOnClick} type="button" className="btn site-btn">
                                            <i className="fa fa-search"></i>
                                        </Button>
                                    </div>
                                </Col>
                                <Col className="p-1 mt-1" lg={4} md={4} sm={12} xs={12}>
                                    <Link to="/favourite" className="btn">
                                        <i className="fa h4 fa-heart">
                                            <sup>
                                                <span className="badge text-white bg-danger">
                                                    7
                                                </span>
                                            </sup>
                                        </i>
                                    </Link>
                                    <Link to="/notifications" className="btn">
                                        <i className="fa h4 fa-bell">
                                            <sup>
                                                <span className="badge text-white bg-danger">
                                                    5
                                                </span>
                                            </sup>
                                        </i>
                                    </Link>
                                    {auth}
                                </Col>
                            </Row>
                            {this.SearchRedirect()}
                        </Container>
                    </Navbar>
                </div>
                <div className={this.state.SideNavState}>
                    <MegaMenuAll/>
                </div>
                <div onClick={this.ContentOverlayClickHandler} className={this.state.ContentOverState}>

                </div>
            </Fragment>
        )
    }
}

export default NavMenuDesktop
