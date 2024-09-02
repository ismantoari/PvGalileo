package pageObject;

import org.openqa.selenium.By;

public class Global {

    public static By alertPopup = By.xpath("(//div[@class=\"Toastify__toast-icon Toastify--animate-icon Toastify__zoom-enter\"]/parent::div)//child::*/following-sibling::div");

    public static By buttonFlagLanguage = By.xpath("//button[@class='MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeMedium css-13be9o2']");

    public static By selectLanguage(String language) {
        return By.xpath("//div[@class='MuiStack-root css-1hieftg']/descendant::*[text()='" + language + "']");
    }

    public static By menu(String menuName) {
        return By.xpath("//*[@role='button']/descendant::*[text()='" + menuName + "']");
    }

    public static By button(String buttonName) {
        return By.xpath("//button[text()='" + buttonName + "']");
    }

    public static By textArea (String marking){
        return By.xpath ("(//label[text()='"+marking+"']//parent::div)//child::div//child::textarea");
    }

    public static By textBox (String marking){
        return By.xpath ("(//label[text()='"+marking+"']//parent::div)//child::div//child::input");
    }

    public static By checkbox (String marking){
        return By.xpath("//*[text()='Mobile Visibility']/preceding-sibling::span");
    }

    public static By radioButton (String groupName, String labelRadio){
        return By.xpath("(//*[text()='"+groupName+"']//parent::div/following-sibling::div/descendant::div[text()='"+labelRadio+"'])//parent::span/preceding-sibling::span");
    }

    public static By switchButton (String marking){
        return By.xpath("//span[text()='"+marking+"']/preceding-sibling::span/child::*");
    }

    public static By comboBoxSelector (String marking){
        return By.xpath("//label[text()='"+marking+"']/following-sibling::div/child::input");
    }

    public static By dropdownSelector(String dropdownName){
        return By.xpath("//label[text()='"+dropdownName+"']//following-sibling::div/child::div[@role='button']");
    }

    public static By dropdownList (String targetValue){
        return By.xpath("//li[text()='"+targetValue+"']");
    }


}




