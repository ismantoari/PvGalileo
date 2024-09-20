package pageObject;

import org.openqa.selenium.By;

public class Promo {

    public static By uploadBannerPromo = By.xpath("//input[@accept='image/jpeg,image/png,image/jpg']");

    public static By addPromoCalculation (String promoCategory){
        return By.xpath("//h6[text()='"+promoCategory+"']/following-sibling::button");
    }

    public static By burgerMenuPromo (String PromoName){
        return By.xpath("(//td[text()='"+PromoName+"']/following-sibling::td)[5]/child::button");
    }

}
