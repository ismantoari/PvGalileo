package pagesAction;

import helper.Action;
import pageObject.MerchantAddMerchantList;

public class MerchantAddMerchantListAction {
    public void userClickMIDList(String buttonName){
        Action.click(MerchantAddMerchantList.buttonMIDList(buttonName));
    }
}
