package stepdefs;

import io.cucumber.java.en.And;
import pagesAction.PromoAddAction;

public class PromoStepdefs {
    PromoAddAction promoAddAction = new PromoAddAction();

    @And("user upload banner promo {string}")
    public void userUploadBannerPromo(String filePath) {
        promoAddAction.userUploadBannerPromo(filePath);
    }
}
