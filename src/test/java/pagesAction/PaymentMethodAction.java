package pagesAction;

import helper.Action;
import pageObject.Global;
import pageObject.PaymentMethod;

public class PaymentMethodAction {
    public void userClickBurgerMenuPaymentMethodOf(String menuPaymentMethod) {
        Action.click(PaymentMethod.burgerMenuPaymentMethod(menuPaymentMethod));
    }

    public void userClickDropdownRowAndSelectValue(String dropdownName, String row, String value) throws InterruptedException {
        Action.click(PaymentMethod.dropdownSelectorPaymentMethod(dropdownName, row));
        Thread.sleep(200);
        Action.selectListDropdown(Global.dropdownList(value));
    }

    public void userInputTextBoxRowWithValue(String textboxName, String row, String value) {
        Action.inputText(PaymentMethod.textBoxPaymentMethod(textboxName,row),value);
    }

    public void showAlertPopUpPICShouldBeUnique(String errorMessage) {
        Action.verifyAlert(PaymentMethod.errorMsgPICShouldUnique(),errorMessage);
        Action.click(PaymentMethod.errorMsgPICShouldUnique());
    }
}
