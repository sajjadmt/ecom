import React, {Component, Fragment} from 'react'
import {Col, Container, Row} from "react-bootstrap";

class Privacy extends Component {
    render() {
        return (
            <Fragment>
                <Container>
                    <Row className="p-2">
                        <Col className="shadow-sm mt-2 bg-white" lg={12} md={12} sm={12} xs={12}>
                            <h4 className="section-title-login">Privacy Policy</h4>
                            <p className="section-title-purchase">
                                <b>1. Scope of processing</b>
                                <br/>
                                In principle, we process personal data only insofar as this is necessary to provide a
                                functioning website and our content and services. The processing of personal data takes
                                place regularly only with consent. An exception applies to cases in which prior consent
                                can not be obtained for reasons of fact and the processing of the data is permitted by
                                law.
                                <br/>
                                <b>2. Legal basis</b>
                                <br/>
                                The processing of your data is either based on your consent or in case the processing is
                                necessary for the performance of a contract to which you are a party, or in order to
                                take steps at your request prior to entering into a contract, or based on legitimate
                                interest, cf. GDPR art. 6(1)(a)-(b), (f).
                                <br/>
                                If the processing is based on your consent, you may at any time withdraw your consent by
                                contacting us using the contact information in clause 1.
                                <br/>
                                <b>3. Storage and deletion of your data</b>
                                <br/>
                                In principle, we only store personal data for as long as is necessary to fulfill
                                contractual or legal obligations for which we collected the data. After that, we delete
                                the data immediately, unless we still need the data until the expiry of the statutory
                                limitation period for evidence purposes for claims under civil law or due to statutory
                                retention obligations.
                                <br/>
                                We delete or block the personal data of the data subject as soon as the purpose of the
                                storage is fulfilled. It may also be stored if provided for by the European or national
                                legislator in EU regulations, laws or regulations to which our company is subject (see
                                details in sections 3.1-3.3). Blocking or deletion of the data also takes place when a
                                storage period prescribed by the standards mentioned expires, unless there is a need for
                                further storage of the data for conclusion of a contract or fulfillment of the contract.
                            </p>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default Privacy
