package pagesAction;

import org.openqa.selenium.support.ui.WebDriverWait;
import pageObject.Global;
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

    public void userEditMembership(String membershipLevelName){
        Action.click(LoyaltyAdd.burgerButtonMembershipLevel(membershipLevelName));
    }
    public void userClickButtonOfPaymentMethod(String paymentMethodName , String buttonName){
        Action.click(LoyaltyAdd.buttonAddAppliedPaymentMethod(paymentMethodName, buttonName));

    }

    public void userClickDropdownAppliedPaymentMethodRowWithValue(String paymentMethodName, String row , String targetQRISValue) {

        String currentQRISvalue = Action.getText(LoyaltyAdd.dropdownAppliedPaymentMethod(row, paymentMethodName));
        System.out.println(currentQRISvalue);


        if (currentQRISvalue.equalsIgnoreCase(targetQRISValue)){
            System.out.println("equal");
        }
        else {
            Action.click(LoyaltyAdd.dropdownAppliedPaymentMethod (row,paymentMethodName));
            Action.click(Global.dropdownList(targetQRISValue));
        }


    }


}
