import React, {Component} from 'react'

class MegaMenuMobile extends Component {

    componentDidMount() {
        this.addEventListeners();
    }

    addEventListeners() {
        const accItems = document.querySelectorAll('.accordionMobile');
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
        document.querySelectorAll('.accordionMobile').forEach(item => {
            item.classList.remove('active');
        });

        document.querySelectorAll('.panelMobile').forEach(item => {
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
            <div className="accordionMenuDivMobile">
                <div className="accordionMenuDivInsideMobile">
                    <button className="accordionMobile">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIconMobile"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panelMobile">
                        <ul>
                            <li>
                                <a href="#" className="accordionItemMobile">Tshirt</a>
                            </li>
                            <li>
                                <a href="#" className="accordionItemMobile">Pant</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordionMobile">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIconMobile"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panelMobile">
                        <ul>
                            <li>
                                <a href="#" className="accordionItemMobile">Tshirt</a>
                            </li>
                            <li>
                                <a href="#" className="accordionItemMobile">Pant</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordionMobile">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIconMobile"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panelMobile">
                        <ul>
                            <li>
                                <a href="#" className="accordionItemMobile">Tshirt</a>
                            </li>
                            <li>
                                <a href="#" className="accordionItemMobile">Pant</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordionMobile">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIconMobile"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panelMobile">
                        <ul>
                            <li>
                                <a href="#" className="accordionItemMobile">Tshirt</a>
                            </li>
                            <li>
                                <a href="#" className="accordionItemMobile">Pant</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordionMobile">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIconMobile"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panelMobile">
                        <ul>
                            <li>
                                <a href="#" className="accordionItemMobile">Tshirt</a>
                            </li>
                            <li>
                                <a href="#" className="accordionItemMobile">Pant</a>
                            </li>
                        </ul>
                    </div>
                    <button className="accordionMobile">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIconMobile"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panelMobile">
                        <ul>
                            <li>
                                <a href="#" className="accordionItemMobile">Tshirt</a>
                            </li>
                            <li>
                                <a href="#" className="accordionItemMobile">Pant</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        )
    }
}

export default MegaMenuMobile
