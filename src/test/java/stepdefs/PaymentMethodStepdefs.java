package stepdefs;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import pagesAction.PaymentMethodAction;

public class PaymentMethodStepdefs {
    PaymentMethodAction paymentMethodAction = new PaymentMethodAction();

    @And("user click payment method burger menu of {string}")
    public void userClickBurgerMenuOf(String menuPaymentMethod) {
        paymentMethodAction.userClickBurgerMenuPaymentMethodOf(menuPaymentMethod);
    }

    @And("user click dropdown {string} row {string} and select value {string}")
    public void userClickDropdownRowAndSelectValue(String dropdownName, String row, String value) throws InterruptedException {
        paymentMethodAction.userClickDropdownRowAndSelectValue( dropdownName, row, value);
    }

    @And("user input text box {string} row {string} with value {string}")
    public void userInputTextBoxRowWithValue(String textboxName, String row, String value) {
        paymentMethodAction.userInputTextBoxRowWithValue( textboxName,  row,  value);
    }

    @Then("show alert PIC Unique {string}")
    public void showAlertPopUpPICShouldBeUnique(String errorMessage) {
        paymentMethodAction.showAlertPopUpPICShouldBeUnique(errorMessage);
    }
}
