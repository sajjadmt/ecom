import React, {Component} from 'react'

class MegaMenuAll extends Component {

    componentDidMount() {
        this.addEventListeners();
    }

    addEventListeners() {
        const accItems = document.querySelectorAll('.accordionAll');
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
        document.querySelectorAll('.accordionAll').forEach(item => {
            item.classList.remove('active');
        });

        document.querySelectorAll('.panelAll').forEach(item => {
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
            <div className="accordionMenuDivAll">
                <div className="accordionMenuDivInsideAll">
                    <button className="accordionAll">
                        <img src="https://cdn-icons-png.flaticon.com/128/9679/9679540.png" alt=""
                             className="accordionMenuIconAll"/> &nbsp;
                        Men's Clothing
                    </button>
                    <div className="panelAll">
                        <ul>
                            <li>
                                <a href="#" className="accordionItemAll">Tshirt</a>
                            </li>
                            <li>
                                <a href="#" className="accordionItemAll">Pant</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        )
    }
}

export default MegaMenuAll
