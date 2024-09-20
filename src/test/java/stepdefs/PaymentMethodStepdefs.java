package stepdefs;

import io.cucumber.java.en.And;
import pagesAction.PaymentMethodAction;

public class PaymentMethodStepdefs {
    PaymentMethodAction paymentMethodAction = new PaymentMethodAction();

    @And("user click payment method burger menu of {string}")
    public void userClickBurgerMenuOf(String menuPaymentMethod) {
        paymentMethodAction.userClickBurgerMenuPaymentMethodOf(menuPaymentMethod);
    }
}
