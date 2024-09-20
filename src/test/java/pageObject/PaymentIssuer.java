package pageObject;

import org.openqa.selenium.By;

public class PaymentIssuer {
    public static By burgerMenuPaymentIssuer(String bankName){
        return By.xpath("(//td[text()='"+bankName+"']/following-sibling::td)[2]/child::button");
    }
}