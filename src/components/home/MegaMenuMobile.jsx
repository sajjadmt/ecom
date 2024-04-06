import React, {Component} from 'react'
import axios from "axios";
import AppURL from "../../api/AppURL";

class MegaMenuMobile extends Component {

    constructor() {
        super();
        this.state = {
            menuData: [],
        }
    }

    componentDidMount() {
        this.addEventListeners();
        axios.get(AppURL.AllCategoryDetails).then((response) => {
            this.setState({
                menuData: response.data,
            });
        }).catch();
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

        const categoryList = this.state.menuData;
        const megaMenuMobileView = categoryList.map((categoryList, i) => {
            return <div key={i.toString()}>
                <button onClick={this.handleAccordionClick} className="accordionMobile">
                    <img src={categoryList.category_image} alt=""
                         className="accordionMenuIconMobile"/> &nbsp;
                    {categoryList.category_name}
                </button>
                <div className="panelMobile">
                    <ul>
                        {
                            (categoryList.sub_category_name).map((subCategoryList, i) => {
                                return <li><a href="#"
                                              className="accordionItemMobile">{subCategoryList.sub_category_name}</a>
                                </li>
                            })
                        }
                    </ul>
                </div>
            </div>
        });

        return (
            <div className="accordionMenuDivMobile">
                <div className="accordionMenuDivInsideMobile">
                    {megaMenuMobileView}
                </div>
            </div>
        )
    }
}

export default MegaMenuMobile
