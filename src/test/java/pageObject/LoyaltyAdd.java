package pageObject;

import org.openqa.selenium.By;

public class LoyaltyAdd {
    public static By uploadLoyaltyLogoLocator = By.xpath("//input[@type='file']");
    public static By buttonAddMembership = By.xpath("//h6[text()='Membership']/parent::div/following-sibling::div/child::button");
    public static By burgerButtonMembershipLevel (String membershipLevelName){
        return By.xpath("//td[text()='"+membershipLevelName+"']//following-sibling::td[4]//child::button");
    }
    public static By burgerButtonMembershipLevelName(String levelName){
        return By.xpath("(//span[text()='Level Name']/ancestor::thead/following-sibling::tbody/child::tr/child::td[text()='"+levelName+"'])/following-sibling::td[4]/child::*");

    }

    public static By buttonAddAppliedPaymentMethod (String paymentName, String buttonName){
        return By.xpath("//p[text()='"+paymentName+"']/following-sibling::div/child::button[text()='"+buttonName+"']");
    }



    public static By dropdownAppliedPaymentMethod (String row, String paymentMethodName){
        return By.xpath("(//label[text()='"+paymentMethodName+"']/following-sibling::div/child::label[text()='"+paymentMethodName+"']/following-sibling::div)["+row+"]");
    }

    public static By appliedPaymentMethodSubCheckBox(String value){
        return By.xpath("//*[text()='"+value+"']//ancestor::span/preceding-sibling::span");
    }

    public static By checkMandatoryRequirement(String required) {
        return By.xpath("//p[text()='"+required+"']");
    }
}
