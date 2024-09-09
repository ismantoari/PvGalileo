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
    public void userIsOnPage(String urlTarget) throws Exception {
        globalStepAction.verifyURL(urlTarget);
    }

    @Given("user already login as administrator")
    public void userAlreadyLoginAsAdministrator() throws Exception {
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
    public void userClickButton(String buttonName) throws Exception {
        globalStepAction.clickButton(buttonName);
    }

    @And("user input text box {string} with value {string}")
    public void userInputTextBoxWithValue(String textBoxName, String textBoxValue) throws Exception {
        Thread.sleep(200);
        globalStepAction.inputTextBox(textBoxName, textBoxValue);
    }


    @And("user input text box predefine {string} with value {string}")
    public void userInputTextBoxPredefineWithValue(String textBoxName, String textBoxValue) throws Exception {
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


    @And("user click combo box {string} and select value {string}")
    public void userClickComboBoxAndSelectValue(String dropdownName, String targetValue) {
        globalStepAction.userClickComboBoxAndSelectValue(dropdownName, targetValue);
    }

    @And("user click combo box check box {string} and select value {string}")
    public void userClickComboBoxCheckBoxAndSelectValue(String dropdownName, String targetValue) {
        globalStepAction.userClickComboBoxCheckBoxAndSelectValue(dropdownName, targetValue);
    }

    @And("user click dropdown {string} and select value {string}")
    public void userClickDropdownAndSelectValue(String dropdownName, String targetValue) throws Exception {
        globalStepAction.userClickDropdownAndSelectValue(dropdownName, targetValue);
        Thread.sleep(200);
    }


    @And("user search {string}")
    public void userSearch(String searchText) {
        globalStepAction.userSearch(searchText);
    }

    @And("user click burger menu")
    public void userClickBurgerMenu() {
        globalStepAction.userClickBurgerMenu();
    }

    @And("user click list {string}")
    public void userClickList(String targetName) {
        globalStepAction.userClickList(targetName);
    }

    @And("user click buttonDrop {string} and select value {string}")
    public void userClickButtonDropAndSelectValue(String buttonName, String targetValue) throws Exception {
        globalStepAction.userClickbuttonDropAndSelectValue(buttonName, targetValue);
        Thread.sleep(200);
    }

    @And("user input text area predefine {string} with value {string}")
    public void userInputTextAreaPredefineWithValue(String textAreaName, String inputValue) {
        globalStepAction.userInputTextAreaWithValuePredifine(textAreaName, inputValue);
    }
}

//@And("user select sub menu {string} on menu {string}")
//public void userSelectSubMenuOnMenu(String menuName, String submenuName) {
//    globalStepAction.selectSubmenu(menuName, submenuName);
//
//}

