package pagesAction;

import helper.Action;
import pageObject.PaymentMethod;

public class PaymentMethodAction {
    public void userClickBurgerMenuPaymentMethodOf(String menuPaymentMethod) {
        Action.click(PaymentMethod.burgerMenuPaymentMethod(menuPaymentMethod));
    }
}
