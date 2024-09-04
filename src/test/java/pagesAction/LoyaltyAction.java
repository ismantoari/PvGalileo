package pagesAction;

import helper.Action;
import org.junit.Assert;
import pageObject.*;

public class LoyaltyAction {



    public void verifyCreatedNewLoyaltyName(String loyaltyName){
        Action.inputText(Global.searchBox, loyaltyName);
        String actualLoyaltyName = Action.getText(pageObject.Loyalty.loyaltyNameLocator);
        Action.verifyEqualsText(actualLoyaltyName, loyaltyName);
    }

    public void userOnAddLoyaltyPage(String expectedURL){
        String actualURL = Action.getUrl();
        Action.verifyEqualsText(actualURL, expectedURL);
    }
}
