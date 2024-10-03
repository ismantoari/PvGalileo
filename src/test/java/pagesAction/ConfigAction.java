package pagesAction;

import helper.Action;
import pageObject.ConfigAddEdit;

public class ConfigAction {
    public void userClickButtonAddMerchantType() {
        Action.click(ConfigAddEdit.button());
    }
}
