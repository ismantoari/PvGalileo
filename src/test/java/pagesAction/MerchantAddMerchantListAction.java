package pagesAction;

import helper.Action;
import pageObject.MerchantAddMerchantList;

public class MerchantAddMerchantListAction {
    public void userClickMIDList(){
        Action.click(MerchantAddMerchantList.buttonMIDList());
    }

    public void clickButtonAddMerchantRepresentative() {
        Action.click(MerchantAddMerchantList.btnAddMerchantRepresentative());
    }
}
