package pagesAction;

import helper.Action;
import pageObject.PaymentIssuer;
import pageObject.PaymentMethod;

public class PaymentIssuerAction {
    public void userClickBurgerMenuPaymentIssuerOf(String menuPaymentMethod) {
        Action.click(PaymentIssuer.burgerMenuPaymentIssuer(menuPaymentMethod));
    }
}
