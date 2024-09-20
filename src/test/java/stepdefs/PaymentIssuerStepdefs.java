package stepdefs;

import io.cucumber.java.en.And;
import pagesAction.PaymentIssuerAction;
import pagesAction.PaymentMethodAction;

public class PaymentIssuerStepdefs {
    PaymentIssuerAction paymentIssuerAction = new PaymentIssuerAction();

    @And("user click payment issuer burger menu of {string}")
    public void userClickBurgerMenuOf(String menuPaymentIssuer) {
        paymentIssuerAction.userClickBurgerMenuPaymentIssuerOf(menuPaymentIssuer);
    }
}
