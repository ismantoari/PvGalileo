package stepdefs;

import io.cucumber.java.en.And;
import pagesAction.MerchantAddMerchantListAction;

public class MerchantStepdefs {
    MerchantAddMerchantListAction merchantAddMerchantList = new MerchantAddMerchantListAction();

    @And("user click button add MID list")
    public void userClickButtonAddRewardList(){
        merchantAddMerchantList.userClickMIDList("Add");

    }
}

