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
import static helper.Endpoint.*;

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
    public static void escKey (By textLocator){
        driver.findElement(textLocator).sendKeys(Keys.ESCAPE);
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

    public static void selectListDropdown(By listDropdown){
        driver.findElement(listDropdown).click();
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

    public static void verifyMessageMandatory ( String textboxName,String actualMessage){
        String expectedMessage = driver.findElement(Global.mandatoryText(textboxName)).getText();
        Assert.assertEquals(expectedMessage, actualMessage);


    }
    public static void verifyURL(String pageURL) {
        String actualUrl = driver.getCurrentUrl();


        switch (pageURL) {
//      dashboard
        case "dasboard" -> {
                Assert.assertEquals(dashboard, actualUrl);
                break;
            }
//      loyalty
        case "loyalty" -> {
            Assert.assertEquals(loyalty, actualUrl);
            break;
        }
        case "add loyalty" -> {
            Assert.assertEquals(addLoyalty, actualUrl);
            break;
            }
//      issuer
        case "issuer" -> {
                Assert.assertEquals(issuer, actualUrl);
                break;
            }
        case "add Issuer" -> {
                Assert.assertEquals(addIssuer, actualUrl);
                break;
            }
//      member
        case "member" -> {
                Assert.assertEquals(member, actualUrl);
                break;
            }
        case "add Member" -> {
                Assert.assertEquals(addMember, actualUrl);
                break;
            }
//      promo
        case "promo" -> {
                Assert.assertEquals(promo, actualUrl);
                break;
            }
        case "add promo" -> {
                Assert.assertEquals(addPromo, actualUrl);
                break;
            }
//      voucher
        case "voucher" -> {
                Assert.assertEquals(voucher, actualUrl);
                break;
            }
        case "add voucher" -> {
                Assert.assertEquals(addVoucher, actualUrl);
                break;
            }
//      payment method
        case "payment method" -> {
                Assert.assertEquals(paymentMethod, actualUrl);
                break;
            }
        case "add payment method bank" -> {
                Assert.assertEquals(addPaymentMethodBank, actualUrl);
                break;
            }
        case "add payment method qris" -> {
                Assert.assertEquals(addPaymentMethodWallet, actualUrl);
                break;
            }
        case "add payment method bnpl" -> {
                Assert.assertEquals(addPaymentMethodBNPL, actualUrl);
                break;
            }
//      bin
        case "BIN" -> {
                Assert.assertEquals(BIN, actualUrl);
                break;
            }
        case "add BIN" -> {
                Assert.assertEquals(addBIN, actualUrl);
                break;
            }
//      report
        case "loyalty program summary" -> {
            Assert.assertEquals(reportLPSummary, actualUrl);
            break;
        }
        case "loyalty program detail" -> {
                Assert.assertEquals(reportLPDetail, actualUrl);
                break;
            }
        case "loyalty program voucher usage" -> {
                Assert.assertEquals(reportLPVoucherUsage, actualUrl);
                break;
            }
        case "loyalty program member" -> {
                Assert.assertEquals(reportLPMember, actualUrl);
                break;
            }
        case "merchant summary" -> {
                Assert.assertEquals(reportMerchantSummary, actualUrl);
                break;
            }
        case "merchant detail" -> {
                Assert.assertEquals(reportMerchantDetail, actualUrl);
                break;
            }
//      audit trail
        case "audit trail" -> {
                Assert.assertEquals(auditTrail, actualUrl);
                break;
            }
//      location
        case "location" -> {
                Assert.assertEquals(location, actualUrl);
                break;
            }
        case "add location" -> {
                Assert.assertEquals(addLocation, actualUrl);
                break;
            }
//      transaction history
        case "transaction history" -> {
                Assert.assertEquals(transactionHistory, actualUrl);
                break;
            }
//      merchant type
        case "merchant type" -> {
                Assert.assertEquals(merchantType, actualUrl);
                break;
            }
        case "add merchant type" -> {
                Assert.assertEquals(addMerchantType, actualUrl);
                break;
            }
//        product setup
        case "product" -> {
                Assert.assertEquals(productSetup, actualUrl);
                break;
            }
        case "add add product" -> {
                Assert.assertEquals(addProductSetup, actualUrl);
                break;
            }
//        merchant list
        case "merchant list" -> {
                Assert.assertEquals(merchantList, actualUrl);
                break;
            }
        case "add merchant list single" -> {
                Assert.assertEquals(addMerchantListSingle, actualUrl);
                break;
            }
        case "add merchant list multiple" -> {
                Assert.assertEquals(addMerchantListMultiple, actualUrl);
                break;
            }
//        UM - user
        case "user" -> {
                Assert.assertEquals(userUM, actualUrl);
                break;
            }
        case "add user" -> {
                Assert.assertEquals(addUserUM, actualUrl);
                break;
            }
//        UM - group
        case "group" -> {
                Assert.assertEquals(groupUM, actualUrl);
                break;
            }
        case "add group" -> {
                Assert.assertEquals(addGroupUM, actualUrl);
                break;
            }
//        UM - subgroup
        case "subgroup" -> {
                Assert.assertEquals(subgroupUM, actualUrl);
                break;
            }
       case "add subgroup" -> {
                Assert.assertEquals(addSubgroupUM, actualUrl);
                break;
            }
//        UM - package
       case "package" -> {
                Assert.assertEquals(PakcageUM, actualUrl);
                break;
            }
       case "add package" -> {
                Assert.assertEquals(addPackageUM, actualUrl);
                break;
            }

    }

    }

    public static void verifyEqualsText(String actualText, String expectedText){
        Assert.assertEquals(actualText, expectedText);
    }


    public static void verifyNotEqualsText (String actualText, String expectedText){
        Assert.assertNotEquals(actualText, expectedText );
    }

    public static void openWeb(){
        driver.get(hostGalileo);
    }

    public static void showErrorPictureMessage(String errorMessage) {
        String expectedMessage = driver.findElement(Global.photoExtensionValidate()).getText();
        Assert.assertEquals(expectedMessage, errorMessage);
    }
}
