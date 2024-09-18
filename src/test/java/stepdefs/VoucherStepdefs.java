package stepdefs;

import io.cucumber.java.en.And;
import pagesAction.VoucherAction;

public class VoucherStepdefs {
    VoucherAction voucherAction = new VoucherAction();




    @And("user input text box loyalty {string} with value {string}")
    public void userInputTextBoxLoyaltyWithValue(String textBoxName, String value) {
        voucherAction.userInputTextBoxLoyaltyWithValue( textBoxName,  value);
    }

    @And("user click button {string} of {string}")
    public void userClickButtonOf(String buttonName, String parentName) {
        voucherAction.userClickButtonOf( buttonName, parentName);

    }

    @And("user click check checkbox {string} of {string}")
    public void userClickCheckCheckboxOf(String checkBoxName, String parentName) {
        voucherAction.userClickCheckCheckboxOf( checkBoxName,  parentName);
    }

    @And("user input text box galileo {string} with value {string}")
    public void userInputTextBoxGalileoWithValue(String textBoxName, String value) {
        voucherAction.userInputTextBoxGalileoWithValue( textBoxName, value);
    }


}
