import React, {Component, Fragment} from 'react'
import {Button} from "react-bootstrap";
import {BrowserRouter} from "react-router-dom";
import AppRoute from "./route/AppRoute";

class App extends Component {
    render() {
        return (
            <div>
                <Fragment>
                    <BrowserRouter>
                        <AppRoute/>
                    </BrowserRouter>
                </Fragment>
            </div>
        )
    }
}

export default App
