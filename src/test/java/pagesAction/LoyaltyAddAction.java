package pagesAction;

import org.openqa.selenium.support.ui.WebDriverWait;
import pageObject.LoyaltyAdd;
import helper.Action;
import pageObject.LoyaltyAddMembership;

public class LoyaltyAddAction {

    public void uploadLoyaltyLogo(String pictPath){
        Action.uploadFile(LoyaltyAdd.uploadLoyaltyLogoLocator, pictPath);
    }


    public void userClickAddMembership(){
        //Action.wait(LoyaltyAdd.buttonAddMembership);
        Action.click(LoyaltyAdd.buttonAddMembership);
    }

    public void userSelectPartialRedeem(String opt){
        Action.click(LoyaltyAddMembership.radioButtonPartialRedeem(opt));

    }


}
