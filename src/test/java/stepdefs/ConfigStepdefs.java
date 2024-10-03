package stepdefs;

import io.cucumber.java.en.And;
import pagesAction.ConfigAction;
import pagesAction.MerchantAddMerchantListAction;

public class ConfigStepdefs {
    ConfigAction configAddEdit = new ConfigAction();

        @And("user click button add merchant type")
        public void userClickButtonAddMerchantType(){
            configAddEdit.userClickButtonAddMerchantType();

        }
}
