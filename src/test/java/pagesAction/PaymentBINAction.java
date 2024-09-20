package pagesAction;

import helper.Action;
import pageObject.PaymentBIN;

public class PaymentBINAction {
    public void userClickBurgerMenuPaymentBINOf(String menuPaymentMethod) {
        Action.click(PaymentBIN.burgerMenuBin(menuPaymentMethod));
    }
}
