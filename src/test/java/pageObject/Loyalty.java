package pageObject;

import helper.Action;
import org.openqa.selenium.By;

public class Loyalty {


   public static By loyaltyNameLocator = By.xpath("(//span[text()='Loyalty Name']//ancestor::thead)/following::tbody//child::h6");

   public static By burgerMenuLoyalty (String loyaltyName) {
      return By.xpath("(//h6[text()='" + loyaltyName + "']/parent::td/following-sibling::td)[3]/child::button");
   }
}
