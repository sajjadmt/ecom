import React, {Component} from 'react'
import axios from "axios";
import AppURL from "../../api/AppURL";

class MegaMenuAll extends Component {

    constructor() {
        super();
        this.state = {
            menuData: []
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

        const categoryList = this.state.menuData;
        const megaMenuView = categoryList.map((categoryList, i) => {
            return <div key={i.toString()}>
                <button onClick={this.handleAccordionClick} className="accordion">
                    <img src={categoryList.category_image} alt=""
                         className="accordionMenuIcon"/> &nbsp;
                    {categoryList.category_name}
                </button>
                <div className="panel">
                    <ul>
                        {
                            (categoryList.sub_category_name).map((subCategoryList , i)=>{
                                return <li key={i.toString()}><a href="#" className="accordionItem">{subCategoryList.sub_category_name}</a></li>
                            })
                        }
                    </ul>
                </div>
            </div>
        });

        return (
            <div className="accordionMenuDivAll">
                <div className="accordionMenuDivInsideAll">
                    {megaMenuView}
                </div>
            </div>
        )
    }
}

export default MegaMenuAll
