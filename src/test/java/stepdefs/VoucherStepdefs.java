package stepdefs;

import io.cucumber.java.en.And;
import pagesAction.VoucherAction;

public class VoucherStepdefs {
    VoucherAction voucherAction = new VoucherAction();




    @And("user input text box {string} of {string} with value {string}")
    public void userInputTextBoxLoyaltyWithValue( String fieldName, String memberMarking, String value) {
        voucherAction.userInputTextBoxLoyaltyWithValue(  fieldName,memberMarking, value);
    }

    @And("user click button {string} of {string}")
    public void userClickButtonOf(String buttonName, String parentName) {
        voucherAction.userClickButtonOf( buttonName, parentName);

    }

    @And("user click check checkbox of {string}")
    public void userClickCheckCheckboxOf(String checkBoxName) {
        voucherAction.userClickCheckCheckboxOf( checkBoxName);
    }

    @And("user input text box galileo {string} with value {string}")
    public void userInputTextBoxGalileoWithValue(String textBoxName, String value) {
        voucherAction.userInputTextBoxGalileoWithValue( textBoxName, value);
    }


    @And("user click button {string} of payment method {string} on {string}")
    public void userClickButtonOfPaymentMethodOn( String buttonName, String paymentMethodName,String presentMarking ) {
        voucherAction.userClickButtonOfPaymentMethodOn( presentMarking, paymentMethodName,buttonName);
    }


    @And("user click applied payment method {string} sub checkbox {string} of {string}")
    public void userClickAppliedPaymentMethodSubCheckboxOf( String paymentMethodName, String checkBoxValue, String presentMarking) {
        voucherAction.userClickAppliedPaymentMethodSubCheckboxOf( presentMarking,paymentMethodName,  checkBoxValue);
    }

    @And("user click dropdown day row {string} and select value {string} of {string}")
    public void userClickDropdownDayRowAndSelectValueOf(String row, String value, String presentMarking) throws InterruptedException {
        voucherAction.userClickDropdownDayRowAndSelectValueOf( row, value, presentMarking);
    }

    @And("user click dropdown {string} {string} row {string} and select value {string} of {string}")
    public void userClickDropdownStartedAtRowAndSelectValueOf(String startOrEnd,String hourOrMinute,String row,String value,String presentMarking) throws InterruptedException {
        voucherAction.userClickDropdownStartedAtRowAndSelectValueOf( startOrEnd, hourOrMinute, row, value, presentMarking);

    }

    @And("user click dropdown ended at {string} row {string} and select value {string} of {string}")
    public void userClickDropdownEndedAtRowAndSelectValueOf(String tagName, String row, String value, String presentMarking) {
        voucherAction.userClickDropdownEndedAtRowAndSelectValueOf( tagName, row, value, presentMarking);

    }

    @And("user click dropdown applied payment method {string} row {string} with value {string} of {string}")
    public void userClickDropdownAppliedPaymentMethodRowWithValueOf(String paymentName, String row, String value, String presentMarking) {
        voucherAction.userClickDropdownAppliedPaymentMethodRowWithValueOf( paymentName,  row,  value,  presentMarking);
    }

    @And("user click check checkbox {string} of {string}")
    public void userClickAllCheckCheckboxOf(String checkboxName, String presentMarking) {
        voucherAction.userClickAllCheckCheckboxOf(checkboxName, presentMarking);
    }
}
