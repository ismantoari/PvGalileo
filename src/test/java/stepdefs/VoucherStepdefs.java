package stepdefs;

import io.cucumber.java.en.And;
import pagesAction.VoucherAction;

public class VoucherStepdefs {
    VoucherAction voucherAction = new VoucherAction();

    @And("click add get voucher promo time")
    public void userClickAddGetPromoVoucherTime() throws Exception{
        voucherAction.userClickAddGetPromoVoucherTime();
    }


}
