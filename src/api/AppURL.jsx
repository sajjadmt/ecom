class AppUrl {
    static BaseURL = "http://127.0.0.1:8000/api";
    static VisitorDetails = this.BaseURL + "/get-visitor";
    static PostContact = this.BaseURL + "/post-contact";
    static AllSiteInfo = this.BaseURL + "/all-site-info";
    static AllCategoryDetails = this.BaseURL + "/all-category";
    static AllSlider = this.BaseURL + "/all-slider";
    static AllNotification = this.BaseURL + "/notifications";
    static UserLogin = this.BaseURL + "/login";
    static UserRegister = this.BaseURL + "/register";
    static UserData = this.BaseURL + "/user";
    static ForgetPassword = this.BaseURL + "/forget-password";
    static ResetPassword = this.BaseURL + "/reset-password";

    static ProductListByRemark(Remark) {
        return this.BaseURL + "/product-list-by-remark/" + Remark;
    }

    static ProductListByCategory(Category) {
        
        return this.BaseURL + "/product-list-by-category/" + Category;
    }

    static ProductDetails(id) {
        return this.BaseURL + "/product-details/" + id;
    }

    static SearchByProduct(SearchKey) {
        return this.BaseURL + "/search/" + SearchKey;
    }
}

export default AppUrl
