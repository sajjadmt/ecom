import {Component} from 'react'


class MegaMenu extends Component {

    componentDidMount() {
        this.addEventListeners();
    }

    addEventListeners() {
        const accItems = document.querySelectorAll('.accordion');
        accItems.forEach(item => {
            item.addEventListener('click', this.handleAccordionClick);
        });
    }

    handleAccordionClick = (event) => {
        const clickedItem = event.currentTarget;
        const panel = clickedItem.nextElementSibling;

        // Check if the clicked item is already active
        const isAlreadyActive = clickedItem.classList.contains('active');

        // Deactivate all items and collapse all panels
        document.querySelectorAll('.accordion').forEach(item => {
            item.classList.remove('active');
        });

        document.querySelectorAll('.panel').forEach(item => {
            item.style.maxHeight = null;
        });

        // Activate the clicked item and expand/collapse the panel
        if (!isAlreadyActive) {
            clickedItem.classList.add('active');
            panel.style.maxHeight = panel.scrollHeight + 'px';
        } else {
            panel.style.maxHeight = null;
        }
    };


    render() {
        return (
            <div className="accordionMenuDiv">
                <div className="accordionMenuDivInside">
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordion">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIcon"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">Tshirt</a>
                                <a href="#" className="accordionItem">Tshirt</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        )
    }
}

export default MegaMenu
