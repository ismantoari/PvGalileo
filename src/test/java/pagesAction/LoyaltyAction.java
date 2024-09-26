package pagesAction;

import helper.Action;
import io.cucumber.java.en_old.Ac;
import org.junit.Assert;
import pageObject.*;
import pageObject.LoyaltyAdd;

public class LoyaltyAction {


    public void userEditMembershipLevelName(String membership) {
        Action.click(LoyaltyAdd.burgerButtonMembershipLevelName(membership));
    }

    public void verifyCreatedNewLoyaltyName(String loyaltyName){
        Action.inputText(Global.searchBox, loyaltyName);
        String actualLoyaltyName = Action.getText(pageObject.Loyalty.loyaltyNameLocator);
        Action.verifyEqualsText(actualLoyaltyName, loyaltyName);
    }

    public void userOnAddLoyaltyPage(String expectedURL){
        String actualURL = Action.getUrl();
        Action.verifyEqualsText(actualURL, expectedURL);
    }

    public void clickButtonPaymentMethod(String paymentMethod, String buttonName) {
        Action.click(LoyaltyAdd.buttonAddAppliedPaymentMethod(paymentMethod,buttonName));
    }


    public void userClickDropdownPaymentMethodWithValue(String dropdownPaymentMethodName, String row, String dropdownPaymentMethodValue) {
        String currentQRISvalue = Action.getText(LoyaltyAdd.dropdownAppliedPaymentMethod(row, dropdownPaymentMethodName));
        System.out.println(currentQRISvalue);


        if (currentQRISvalue.equalsIgnoreCase(dropdownPaymentMethodValue)){
            System.out.println("equal");
        }
        else {
            Action.click(LoyaltyAdd.dropdownAppliedPaymentMethod (row,dropdownPaymentMethodName));
            Action.click(Global.dropdownList(dropdownPaymentMethodValue));
        }

    }

    public void userClickAppliedPaymentMethodSubCheckbox(String appliedPaymentCheckbox) {
        Action.click(LoyaltyAdd.appliedPaymentMethodSubCheckBox(appliedPaymentCheckbox));
    }

    public void userClickButtonMembership() {
        Action.click(LoyaltyAddMembership.buttonSaveChangesLoyaltyAddMembership);
    }

    public void userClickBurgerMenuLoyaltyOf(String menuLoyalty) {
        Action.click(Loyalty.burgerMenuLoyalty(menuLoyalty));
    }

    public void userClickButtonAtAddMembership(String buttonName) {
        Action.click(LoyaltyAddMembership.cancelAddMembership);
    }

    public void verifyDeletedLoyaltyName(String loyaltyName) {
        Action.verifyNotEqualsText(null, loyaltyName);
    }
}
