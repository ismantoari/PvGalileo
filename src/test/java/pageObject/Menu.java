package pageObject;

import org.openqa.selenium.By;

public class Menu {

    public static By subMenuReport (String subMenuName){
        return By.xpath("//*[text()='Report']/parent::div/following-sibling::div//child::div[text()='"+subMenuName+"']");
    }
}
