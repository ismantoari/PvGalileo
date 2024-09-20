package pageObject;

import org.openqa.selenium.By;

public class PaymentBIN{
    public static By burgerMenuBin(String idBIN) {
        return By.xpath("//td[text()='"+idBIN+"']/following-sibling::td/child::button");
    }
}