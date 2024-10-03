package pageObject;

import org.openqa.selenium.By;

public class ConfigAddEdit {
    public static By button() {
        return By.xpath("(//button[text()='Add Merchant Type'])[2]");
    }
}
