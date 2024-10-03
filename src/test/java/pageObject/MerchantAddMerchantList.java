package pageObject;

import org.openqa.selenium.By;

public class MerchantAddMerchantList {
    public static By buttonMIDList (
    ){
        return By.xpath("//h6[text()='MID']/parent::div/following-sibling::div/child::div/child::h6/following-sibling::button");
    }

    public static By btnAddMerchantRepresentative() {
        return By.xpath("//p[text()='Merchant Representative']/parent::div/following-sibling::div/child::div/child::div/child::div/child::button[text()='Add']");
    }
}
