package pageObject;

import helper.Action;
import org.openqa.selenium.By;

public class Loyalty {


   public static By loyaltyNameLocator = By.xpath("(//span[text()='Loyalty Name']//ancestor::thead)/following::tbody//child::h6");

}
