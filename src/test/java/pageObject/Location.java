package pageObject;

import org.openqa.selenium.By;

public class Location {

    public static By uploadLoyaltyLogoLocatorSpesific (String row ) {
        return By.xpath("(//input[@type='file'])[" + row + "]}");
    }
}
