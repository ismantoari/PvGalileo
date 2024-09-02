package pageObject;

import org.openqa.selenium.By;

public class Login {
    public static By inputUsername = By.name("username");
    public static By inputPassword = By.name("password");
    public static By buttonLogin = By.xpath("//button[text()='Login']");
    public static By alertBlankUsername = By.xpath("//label[text()='Username']/following-sibling::p");
    public static By alertBlankPassword = By.xpath("//label[text()='Password']/following-sibling::p");

}
