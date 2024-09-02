package pagesAction;

import pageObject.Login;
import helper.Action;

import static helper.BaseTest.driver;
import static helper.Endpoint.hostGalileo;
import static pageObject.Login.alertBlankPassword;
import static pageObject.Login.alertBlankUsername;



public class LoginAction {

    public void loginGalileo(){
        driver.get(hostGalileo);
    }

    public void inputUsername(String username){
        Action.inputText(Login.inputUsername, username);
    }

    public void inputPassword(String password){
        Action.inputText(Login.inputPassword, password);
    }

    public void clickLoginButton(){
        Action.click(Login.buttonLogin);
    }

    public void userIsStillOnTheLoginPage(){
        String loginPage = "";
        Action.verifyURL(loginPage);
    }

    public void showAlertBlankUsername(){
        driver.findElement(alertBlankUsername).isDisplayed();
    }
    public void verifyCorrectAlertBlankUsername(String text){
        Action.verifyAlert(alertBlankUsername,text);
    }

    public void showAlertBlankPassword(){
        driver.findElement(Login.alertBlankPassword).isDisplayed();
    }

    public void verifyCorrectAllertBlankPassword(String text){
        Action.verifyAlert(alertBlankPassword, text);
    }
}
