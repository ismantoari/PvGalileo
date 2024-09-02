package pagesAction;

import org.junit.experimental.theories.Theories;
import pageObject.*;
import helper.Action;
import helper.Endpoint;

public class GlobalStepAction {

    public void verifyAlertPopUp (String alertText) throws Exception{
        Thread.sleep(2000);
        Action.verifyAlert(Global.alertPopup, alertText);
        Action.click(Global.alertPopup);
    }

    public void verifyURL(String urlTarget){
        Action.verifyURL(urlTarget);
    }

    public void userAlreadyLoginAsAdministrator()throws Exception{
        Action.openWeb();
        Action.inputText(pageObject.Login.inputUsername, Endpoint.validUsername);
        Action.inputText(pageObject.Login.inputPassword, Endpoint.validPassword);
        Action.click(pageObject.Login.buttonLogin);
        Action.wait(pageObject.Global.alertPopup);
        verifyAlertPopUp("Login success");
    }

    public void selectLanguage(String language){
        Action.click(pageObject.Global.buttonFlagLanguage);
        Action.wait(pageObject.Global.selectLanguage(language));
        Action.click(pageObject.Global.selectLanguage(language));
    }

    public void selectMenu(String menuName){
        Action.click(Global.menu(menuName));
    }

    public void clickButton(String buttonName)throws Exception{
        Thread.sleep(200);
        Action.click(Global.button(buttonName));
    }

    public void inputTextArea(String textAreaName, String inputValue){
        Action.click(Global.textArea(textAreaName));
        Action.inputText(Global.textArea(textAreaName),inputValue);
    }

    public void inputTextBoxPredefine(String textBoxMark, String inputValue) {
        Action.manualClearText(Global.textBox(textBoxMark));
        Action.inputText(Global.textBox(textBoxMark),inputValue);
    }


    public void inputTextBox(String textBoxMark, String inputValue) {
        if (textBoxMark.equalsIgnoreCase("Address")) {
            Action.click(Global.textArea(textBoxMark));
            Action.inputText(Global.textArea(textBoxMark), inputValue);

        } else if (textBoxMark.equalsIgnoreCase("Description")) {
            Action.click(Global.textArea(textBoxMark));
            Action.inputText(Global.textArea(textBoxMark),inputValue);
        } else if (textBoxMark.equalsIgnoreCase("Description Term & Condition")) {
            Action.click(Global.textArea(textBoxMark));
            Action.inputText(Global.textArea(textBoxMark),inputValue);
        } else {
            //Action.click(Global.textBox(textBoxMark));
            Action.clearText(Global.textBox(textBoxMark));
            Action.inputText(Global.textBox(textBoxMark),inputValue);
        }
    }

    public void userCheckCheckbox(String checkboxName){
        Action.click(Global.checkbox(checkboxName));
    }

    public void userClickRadioButtonOfWithValue(String groupName, String labelRadio){
        Action.click(Global.radioButton(groupName, labelRadio));
    }

    public void userInputTextAreaWithValue(String textAreaName, String inputValue){
        Action.click(Global.textArea(textAreaName));
        Action.inputText(Global.textArea(textAreaName),inputValue);
    }

    public void userClickOnSwitch(String marking){
        Action.click(Global.switchButton(marking));
    }

    public void userClickComboBoxAndSelectValue(String dropdownName, String targetValue)    {
        Action.inputText(Global.comboBoxSelector(dropdownName),targetValue);
        Action.arrowDownKey(Global.comboBoxSelector(dropdownName));
        Action.enterKey(Global.comboBoxSelector(dropdownName));
        //Action.tabKey(Global.comboBoxSelector(dropdownName));


    }


}
