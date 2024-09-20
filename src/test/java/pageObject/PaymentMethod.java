package pageObject;

import org.openqa.selenium.By;

public class PaymentMethod {
    public static By burgerMenuPaymentMethod(String bankName){
        return By.xpath("(//td[text()='"+bankName+"']/following-sibling::td)[3]/child::button");
    }
}

