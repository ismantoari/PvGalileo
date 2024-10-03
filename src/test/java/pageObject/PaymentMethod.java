package pageObject;

import org.openqa.selenium.By;

public class PaymentMethod {
    public static By burgerMenuPaymentMethod(String bankName){
        return By.xpath("(//td[text()='"+bankName+"']/following-sibling::td)[3]/child::button");
    }

    public static By dropdownSelectorPaymentMethod(String dropdownName, String row){
        return By.xpath("(//label[text()='"+dropdownName+"']//following-sibling::div/child::div[@role='button'])["+row+"]");
    }

    public static By textBoxPaymentMethod (String marking,String row){
        return By.xpath ("((//label[text()='"+marking+"']//parent::div)//child::div//child::input)["+row+"]");
    }

    public static By errorMsgPICShouldUnique() {
        return By.xpath("//div[text()='PIC data should be unique']");
    }
}

