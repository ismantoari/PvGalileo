package pageObject;

import org.openqa.selenium.By;

public class MerchantAddMerchantList {
    public static By buttonMIDList (String buttonName){
        return By.xpath("//*[text()='MID']/following-sibling::div/descendant::button[text()='"+buttonName+"']");
    }
}
