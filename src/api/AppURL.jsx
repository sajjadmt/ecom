class AppUrl {
    static BaseURL = "http://127.0.0.1:8000/api";
    static VisitorDetails = this.BaseURL + "/get-visitor";
    static PostContact = this.BaseURL + "/post-contact";
    static AllSiteInfo = this.BaseURL + "/all-site-info";
    static AllCategoryDetails = this.BaseURL + "/all-category";
    static AllSlider = this.BaseURL + "/all-slider";

    static ProductListByRemark(Remark) {
        return this.BaseURL + "/product-list-by-remark/" + Remark;
    }

    static ProductListByCategory(Category) {
        return this.BaseURL + "/product-list-by-category/" + Category;
    }

    static ProductDetails(id) {
        return this.BaseURL + "/product-details/" + id;
    }
}

export default AppUrl
