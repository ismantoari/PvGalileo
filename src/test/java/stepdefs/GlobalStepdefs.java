package stepdefs;

import io.cucumber.java.en.Given;
import pagesAction.GlobalStepAction;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class GlobalStepdefs {
    GlobalStepAction globalStepAction = new GlobalStepAction();

    @And("stop")
    public void stopProcess() throws Exception {
        Thread.sleep(5000);
    }

    @Then("show alert pop up {string}")
    public void showAlertPopUp(String alertText) throws Exception {
        globalStepAction.verifyAlertPopUp(alertText);
    }

    @Then("user is on {string} page")
    public void userIsOnPage(String urlTarget) {
        globalStepAction.verifyURL(urlTarget);
    }

    @Given("user already login as administrator")
    public void userAlreadyLoginAsAdministrator() throws Exception{
        globalStepAction.userAlreadyLoginAsAdministrator();
    }

    @And("user select language {string}")
    public void userSelectLanguage(String language) {
        globalStepAction.selectLanguage(language);
    }

    @And("user select menu {string}")
    public void userSelectMenu(String menuName) {
        globalStepAction.selectMenu(menuName);
    }

    @And("user select sub menu {string}")
    public void userSelectSubMenu(String submenuName) {
        globalStepAction.selectMenu(submenuName);
    }

    @And("user click button {string}")
    public void userClickButton(String buttonName)throws Exception {
        globalStepAction.clickButton(buttonName);
    }

    @And("user input text box {string} with value {string}")
    public void userInputTextBoxWithValue(String textBoxName, String textBoxValue) throws Exception{
        Thread.sleep(200);
        globalStepAction.inputTextBox(textBoxName, textBoxValue);
    }


    @And("user input text box predefine {string} with value {string}")
    public void userInputTextBoxPredefineWithValue(String textBoxName, String textBoxValue) throws Exception{
        Thread.sleep(200);
        globalStepAction.inputTextBoxPredefine(textBoxName, textBoxValue);
    }

    @And("user click check checkbox {string}")
    public void userClickCheckCheckbox(String checkboxName) {
        globalStepAction.userCheckCheckbox(checkboxName);
    }

    @And("user click radio button of {string} with value {string}")
    public void userClickRadioButtonOfWithValue(String groupName, String labelRadio) {
        globalStepAction.userClickRadioButtonOfWithValue(groupName, labelRadio);
    }

    @And("user input text area {string} with value {string}")
    public void userInputTextAreaWithValue(String textAreaName, String inputValue) {
        globalStepAction.userInputTextAreaWithValue(textAreaName, inputValue);
    }

    @And("user click on switch {string}")
    public void userClickOnSwitch(String marking) {
        globalStepAction.userClickOnSwitch(marking);
    }


    @And("user click combo box {string} and select value{string}")
    public void userClickComboBoxAndSelectValue(String dropdownName, String targetValue) {
        globalStepAction.userClickComboBoxAndSelectValue(dropdownName, targetValue);
    }
}
