package helper;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;
import pageObject.Global;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import pageObject.LoyaltyAddMembership;

import java.time.Duration;

import static helper.BaseTest.driver;
import static helper.Endpoint.hostGalileo;

public class Action {

    public static void inputText (By textLocator, String inputValue){
        driver.findElement(textLocator).sendKeys(inputValue);
    }

    public static void enterKey (By textLocator){
        driver.findElement(textLocator).sendKeys(Keys.ENTER);
    }

    public static void arrowDownKey (By textLocator){
        driver.findElement(textLocator).sendKeys(Keys.ARROW_DOWN);
    }

    public static void tabKey (By textLocator){
        driver.findElement(textLocator).sendKeys(Keys.TAB);
    }

    public static void selectValue(By textLocator,String targetValue){
        Select dropdown = new Select(driver.findElement(textLocator));
        dropdown.selectByVisibleText(targetValue);
    }

    public static void clearText (By textLocator){
        driver.findElement(textLocator).clear();
    }

    public static void manualClearText (By textLocator){
        WebElement l = driver.findElement(textLocator);
        String s = Keys.chord(Keys.CONTROL, "a");
        l.sendKeys(s);
        l.sendKeys(Keys.DELETE);
    }

    public static void click (By webElement){
        driver.findElement(webElement).click();
    }

    public static String getUrl(){
        return driver.getCurrentUrl();
    }

    public static void isDisplayed(By locator){
        driver.findElement(locator).isDisplayed();
    }

    public static void isEnable(By locator){
        driver.findElement(locator).isEnabled();
    }

    public static void isSelected(By locator){
        driver.findElement(locator).isSelected();
    }


    public static String getTittle(){
        return driver.getTitle();
    }

    public static String getText(By locator){
        return driver.findElement(locator).getText();
    }

    public static void dropdown (By dropdownLocator, By textLocator){
        driver.findElement(dropdownLocator).click();
        driver.findElement(textLocator).click();
    }

    public static void uploadFile (By locator, String source){
        driver.findElement(locator).sendKeys(source);
    }

    public static void wait (By locator){
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        wait.until(ExpectedConditions.presenceOfElementLocated(Global.alertPopup));
    }


    //===== Verification ======

    public static void verifyAlert (By alertLocator, String expectedAlert){
        String actualAlert = driver.findElement(alertLocator).getText();
        Assert.assertEquals(expectedAlert, actualAlert);
    }

    public static void verifyURL(String pageURL) {
        String actualUrl = driver.getCurrentUrl();
        String expectedURL = hostGalileo + "/" + pageURL;
        Assert.assertEquals(expectedURL, actualUrl);
    }

    public static void openWeb(){
        driver.get(hostGalileo);
    }
}
