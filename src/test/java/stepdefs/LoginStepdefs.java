package stepdefs;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pagesAction.LoginAction;
import pagesAction.GlobalStepAction;

public class LoginStepdefs {
    LoginAction loginAction = new LoginAction();
    GlobalStepAction globalStepAction = new GlobalStepAction();

    @Given("user is on login page")
    public void userIsOnLoginPage() {
        loginAction.loginGalileo();
    }


    @And("input username {string}")
    public void inputUsername(String username) {
        loginAction.inputUsername(username);
    }

    @And("input password {string}")
    public void inputPassword(String password) {
        loginAction.inputPassword(password);
    }

    @When("user click login button")
    public void userClickLoginButton() {
        loginAction.clickLoginButton();
    }


    @Then("user is still on the login page")
    public void userIsStillOnTheLoginPage() {
        loginAction.userIsStillOnTheLoginPage();
    }


    @Then("show alert blank username {string}")
    public void showAlertBlankUsername(String textAlert) {
        loginAction.showAlertBlankUsername();
        loginAction.verifyCorrectAlertBlankUsername(textAlert);
    }

    @Then("show alert blank password {string}")
    public void showAlertBlankPassword(String textAlert) {
        loginAction.showAlertBlankPassword();
        loginAction.verifyCorrectAllertBlankPassword(textAlert);
    }
}
