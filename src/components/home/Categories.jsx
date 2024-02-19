import React, {Component, Fragment} from 'react'
import {Card, Col, Container, Row} from "react-bootstrap";

class Categories extends Component {
    render() {
        return (
            <Fragment>
                <Container className="text-center" fluid={true}>
                    <div className="section-title text-center mb-55">
                        <h2>
                            CATEGORIES
                        </h2>
                        <p>
                            Categories That You May Like
                        </p>
                    </div>
                    <Row>
                        <Col key={1} xxl={6} xl={6} lg={6} md={2} sm={12} xs={12}>
                            <Row>
                                <Col className="p-0" key={1} xxl={3} xl={3} lg={3} md={3} sm={6} xs={6}>
                                    <Card className="h-100 w-100 text-center">
                                        <Card.Body>
                                        <img className="center"
                                             src="https://dkstatics-public.digikala.com/digikala-categories/510816e9ec4cbfad2edbff2763e2059a504e571b_1701193038.png"
                                             alt=""/>
                                            <h5 className="category-name">
                                                MOBILE
                                            </h5>
                                        </Card.Body>
                                    </Card>
                                </Col>
                                <Col className="p-0" key={1} xxl={3} xl={3} lg={3} md={3} sm={6} xs={6}>
                                    <Card className="h-100 w-100 text-center">
                                        <Card.Body>
                                            <img className="center"
                                                 src="https://dkstatics-public.digikala.com/digikala-categories/5f3aa7bb8bde7c7433d31025d508ee3afd367773_1701193071.png"
                                                 alt=""/>
                                            <h5 className="category-name">
                                                FOOD
                                            </h5>
                                        </Card.Body>
                                    </Card>
                                </Col>
                                <Col className="p-0" key={1} xxl={3} xl={3} lg={3} md={3} sm={6} xs={6}>
                                    <Card className="h-100 w-100 text-center">
                                        <Card.Body>
                                            <img className="center"
                                                 src="https://dkstatics-public.digikala.com/digikala-categories/dee082825fa27bf216cc8cf2153745062c29e62d_1701193085.png"
                                                 alt=""/>
                                            <h5 className="category-name">
                                                TOY
                                            </h5>
                                        </Card.Body>
                                    </Card>
                                </Col>
                                <Col className="p-0" key={1} xxl={3} xl={3} lg={3} md={3} sm={6} xs={6}>
                                    <Card className="h-100 w-100 text-center">
                                        <Card.Body>
                                            <img className="center"
                                                 src="https://dkstatics-public.digikala.com/digikala-categories/c48ab9fc81e7732a617f90eca608b943d4616ff7_1701193126.png"
                                                 alt=""/>
                                            <h5 className="category-name">
                                                HANDICRAFT
                                            </h5>
                                        </Card.Body>
                                    </Card>
                                </Col>
                            </Row>
                        </Col>
                        <Col key={1} xxl={6} xl={6} lg={6} md={2} sm={12} xs={12}>
                            <Row>
                                <Col className="p-0" key={1} xxl={3} xl={3} lg={3} md={3} sm={6} xs={6}>
                                    <Card className="h-100 w-100 text-center">
                                        <Card.Body>
                                        <img className="center"
                                             src="https://dkstatics-public.digikala.com/digikala-categories/1fad42c6177e71db1a368e258c5bc004d6073a3a_1701193064.png"
                                             alt=""/>
                                            <h5 className="category-name">
                                                CLOTH
                                            </h5>
                                        </Card.Body>
                                    </Card>
                                </Col>
                                <Col className="p-0" key={1} xxl={3} xl={3} lg={3} md={3} sm={6} xs={6}>
                                    <Card className="h-100 w-100 text-center">
                                        <Card.Body>
                                            <img className="center"
                                                 src="https://dkstatics-public.digikala.com/digikala-categories/ba175c709e3cc22e3fd7c65c7c6a21854d1c3765_1701193047.png"
                                                 alt=""/>
                                            <h5 className="category-name">
                                                GADGET
                                            </h5>
                                        </Card.Body>
                                    </Card>
                                </Col>
                                <Col className="p-0" key={1} xxl={3} xl={3} lg={3} md={3} sm={6} xs={6}>
                                    <Card className="h-100 w-100 text-center">
                                        <Card.Body>
                                            <img className="center"
                                                 src="https://dkstatics-public.digikala.com/digikala-categories/f64a3adf6e327bf1b85ce43449740d974eaaf037_1701193104.png"
                                                 alt=""/>
                                            <h5 className="category-name">
                                                SPORT
                                            </h5>
                                        </Card.Body>
                                    </Card>
                                </Col>
                                <Col className="p-0" key={1} xxl={3} xl={3} lg={3} md={3} sm={6} xs={6}>
                                    <Card className="h-100 w-100 text-center">
                                        <Card.Body>
                                            <img className="center"
                                                 src="https://dkstatics-public.digikala.com/digikala-categories/3e3ec550569f974bc7e9d78c30b48612e5b1c606_1701193057.png"
                                                 alt=""/>
                                            <h5 className="category-name">
                                                KITCHEN
                                            </h5>
                                        </Card.Body>
                                    </Card>
                                </Col>
                            </Row>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}

export default Categories


// <Row>
// <Col key={1} xl={6} lg={6} md={2} sm={12} xs={12}>
//     <Row>
//     <Col className="p-0" key={1} xl={3} lg={3} md={3} sm={6} xs={6}>
//     <Card className="h-100 w-100 text-center">
//     <Card.Body>
//     <img className="center"
// src="https://dkstatics-public.digikala.com/digikala-categories/510816e9ec4cbfad2edbff2763e2059a504e571b_1701193038.png"
//     />
//     <h2 className="category-name">
//     MOBILE
//     </h2>
// </Card.Body>
// </Card>
// </Col>
// <Col className="p-0" key={1} xl={3} lg={3} md={3} sm={6} xs={6}>
//     <Card className="h-100 w-100 text-center">
//         <Card.Body>
//             <img className="center"
//                  src="https://dkstatics-public.digikala.com/digikala-categories/5f3aa7bb8bde7c7433d31025d508ee3afd367773_1701193071.png"
//             />
//             <h2 className="category-name">
//                 FOOD
//             </h2>
//         </Card.Body>
//     </Card>
// </Col>
// <Col className="p-0" key={1} xl={3} lg={3} md={3} sm={6} xs={6}>
//     <Card className="h-100 w-100 text-center">
//         <Card.Body>
//             <img className="center"
//                  src="https://dkstatics-public.digikala.com/digikala-categories/dee082825fa27bf216cc8cf2153745062c29e62d_1701193085.png"
//             />
//             <h2 className="category-name">
//                 TOY
//             </h2>
//         </Card.Body>
//     </Card>
// </Col>
// <Col className="p-0" key={1} xl={3} lg={3} md={3} sm={6} xs={6}>
//     <Card className="h-100 w-100 text-center">
//         <Card.Body>
//             <img className="center"
//                  src="https://dkstatics-public.digikala.com/digikala-categories/c48ab9fc81e7732a617f90eca608b943d4616ff7_1701193126.png"
//             />
//             <h2 className="category-name">
//                 HANDICRAFT
//             </h2>
//         </Card.Body>
//     </Card>
// </Col>
// <Col className="p-0" key={1} xl={3} lg={3} md={3} sm={6} xs={6}>
//     <Card className="h-100 w-100 text-center">
//         <Card.Body>
//             <img className="center"
//                  src="https://dkstatics-public.digikala.com/digikala-categories/1fad42c6177e71db1a368e258c5bc004d6073a3a_1701193064.png"
//             />
//             <h2 className="category-name">
//                 CLOTH
//             </h2>
//         </Card.Body>
//     </Card>
// </Col>
// <Col className="p-0" key={1} xl={3} lg={3} md={3} sm={6} xs={6}>
//     <Card className="h-100 w-100 text-center">
//         <Card.Body>
//             <img className="center"
//                  src="https://dkstatics-public.digikala.com/digikala-categories/ba175c709e3cc22e3fd7c65c7c6a21854d1c3765_1701193047.png"
//             />
//             <h2 className="category-name">
//                 GADGET
//             </h2>
//         </Card.Body>
//     </Card>
// </Col>
// <Col className="p-0" key={1} xl={3} lg={3} md={3} sm={6} xs={6}>
//     <Card className="h-100 w-100 text-center">
//         <Card.Body>
//             <img className="center"
//                  src="https://dkstatics-public.digikala.com/digikala-categories/f64a3adf6e327bf1b85ce43449740d974eaaf037_1701193104.png"
//             />
//             <h2 className="category-name">
//                 SPORT
//             </h2>
//         </Card.Body>
//     </Card>
// </Col>
// <Col className="p-0" key={1} xl={3} lg={3} md={3} sm={6} xs={6}>
//     <Card className="h-100 w-100 text-center">
//         <Card.Body>
//             <img className="center"
//                  src="https://dkstatics-public.digikala.com/digikala-categories/3e3ec550569f974bc7e9d78c30b48612e5b1c606_1701193057.png"
//             />
//             <h2 className="category-name">
//                 KITCHEN
//             </h2>
//         </Card.Body>
//     </Card>
// </Col>
// </Row>
// </Col>
// </Row>
