package stepdefs;

import io.cucumber.java.en.And;
import pagesAction.PaymentBINAction;

public class PaymentBINStepdefs {
    PaymentBINAction paymentBINAction = new PaymentBINAction();

    @And("user click BIN burger menu of {string}")
    public void userClickBurgerMenuOf(String menuPaymentBIN) {
        paymentBINAction.userClickBurgerMenuPaymentBINOf(menuPaymentBIN);
    }
}
