package pagesAction;

import helper.Action;
import io.cucumber.java.en_old.Ac;
import pageObject.Global;
import pageObject.LoyaltyAdd;
import pageObject.PromoAddEdit;
import pageObject.VoucherAddEdit;

public class VoucherAction {


    public void userInputTextBoxLoyaltyWithValue( String fieldName,String memberMarking,String value) {
        Action.manualClearText(VoucherAddEdit.inputVoucherCalculation(memberMarking,fieldName));
        Action.click(VoucherAddEdit.inputVoucherCalculation(memberMarking,fieldName));
        Action.inputText(VoucherAddEdit.inputVoucherCalculation(memberMarking,fieldName),value);
    }

    public void userClickButtonOf(String buttonName, String parentName) {
        Action.click(VoucherAddEdit.buttonVoucherTime(parentName,buttonName));
    }

    public void userClickCheckCheckboxOf(String checkBoxName) {
        Action.click(VoucherAddEdit.checkAllPaymentMethod(checkBoxName));
    }

    public void userInputTextBoxGalileoWithValue(String textBoxName, String value) {

    }

    public void userClickButtonOfPaymentMethodOn(String presentMarking, String paymentMethodName, String buttonName) {
        Action.click(VoucherAddEdit.buttonDynamic( presentMarking,  paymentMethodName,  buttonName));

    }

    public void userClickAppliedPaymentMethodSubCheckboxOf(String presentMarking, String paymentMethodName,String checkBoxValue) {
        Action.click(VoucherAddEdit.checkBoxName(presentMarking,paymentMethodName,checkBoxValue));

    }

    public void userClickDropdownDayRowAndSelectValueOf(String row, String value, String presentMarking) throws InterruptedException {
        Action.click(VoucherAddEdit.dropDownSelectDay(presentMarking,row));
        Thread.sleep(200);
        Action.selectListDropdown(Global.dropdownList(value));
    }
    public void userClickDropdownStartedAtRowAndSelectValueOf(String startOrEnd, String hourOrMinute, String row, String value, String presentMarking) throws InterruptedException {
        Action.click(VoucherAddEdit.dropDownSelectTime( presentMarking, startOrEnd, row, hourOrMinute));
        Thread.sleep(200);
        Action.selectListDropdown(Global.dropdownList(value));
    }

    public void userClickDropdownEndedAtRowAndSelectValueOf(String tagName, String row, String value, String presentMarking) {

    }

    public void userClickDropdownAppliedPaymentMethodRowWithValueOf(String paymentName, String row, String value, String presentMarking) {
        String currentQRISvalue = Action.getText(VoucherAddEdit.dropDownPaymentMethod(presentMarking,paymentName,row));
        System.out.println(currentQRISvalue);


        if (currentQRISvalue.equalsIgnoreCase(value)) {
            System.out.println("equal");
        } else {
            Action.click(VoucherAddEdit.dropDownPaymentMethod(presentMarking,paymentName,row));
            Action.click(Global.dropdownList(value));
        }
    }

    public void userClickAllCheckCheckboxOf(String checkboxName, String presentMarking) {
        Action.click(VoucherAddEdit.voucherPaymentMethodCheck(presentMarking,checkboxName));
    }
}
