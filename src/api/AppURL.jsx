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
    static AddToCart = this.BaseURL + "/add-to-cart";

    static ProductListByRemark(Remark) {
        return this.BaseURL + "/product-list-by-remark/" + Remark;
    }

    static AddToFavourite(UserId, ProductId, ProductDetailsId) {
        return this.BaseURL + "/add-to-favourite/" + UserId + '/' + ProductId + '/' + ProductDetailsId;
    }

    static GetFavourite(UserId) {
        return this.BaseURL + "/get-favourite/" + UserId;
    }

    static CartList(UserId) {
        return this.BaseURL + "/cart-list/" + UserId;
    }

    static AddToOrder(UserId) {
        return this.BaseURL + "/add-to-order/" + UserId;
    }

    static OrderHistory(UserId) {
        return this.BaseURL + "/order-history/" + UserId;
    }

    static PostReview(UserId) {
        return this.BaseURL + "/post-review/" + UserId;
    }

    static QuantityIncrease(Id) {
        return this.BaseURL + "/quantity-increase/" + Id;
    }

    static QuantityDecrease(Id) {
        return this.BaseURL + "/quantity-decrease/" + Id;
    }

    static DeleteCart(UserId,ProductId) {
        return this.BaseURL + "/delete-cart/" + UserId + '/' + ProductId;
    }

    static DeleteFavourite(UserId,ProductId) {
        return this.BaseURL + "/delete-favourite/" + UserId + '/' + ProductId;
    }

    static CartCount(UserId) {
        return this.BaseURL + "/cart-count/" + UserId;
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

    static SuggestedProduct(SubCategoryId) {
        return this.BaseURL + "/suggested-products/" + SubCategoryId;
    }

    static ReviewList(ProductId) {
        return this.BaseURL + "/review-list/" + ProductId;
    }
}

export default AppUrl
