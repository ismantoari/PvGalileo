package stepdefs;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import pagesAction.PromoAddAction;

public class PromoStepdefs {
    PromoAddAction promoAddAction = new PromoAddAction();

    @And("user upload banner promo {string}")
    public void userUploadBannerPromo(String filePath) {
        promoAddAction.userUploadBannerPromo(filePath);
    }

    @And("user click add promo calculation {string}")
    public void userClickAddPromoCalculation(String promoType) throws Exception{
        promoAddAction.userClickAddPromoCalculation(promoType);
    }


    @And("user input promo amount loyalty member level {string} with value {string}")
    public void userInputPromoAmountLoyaltyMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputPromoAmountLoyaltyMemberLevelWithValue(level,value);
    }

    @And("user input minimum transaction loyalty member level {string} with value {string}")
    public void userInputMinimumTransactionLoyaltyMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputMinimumTransactionLoyaltyMemberLevelWithValue(level,value);
    }

    @And("user input maximum transaction loyalty member level {string} with value {string}")
    public void userInputMaximumTransactionLoyaltyMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputMaximumTransactionLoyaltyMemberLevelWithValue(level,value);
    }

    @And("user input promo amount galileo member level {string} with value {string}")
    public void userInputPromoAmountGalileoMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputPromoAmountGalileoMemberLevelWithValue(level,value);
    }

    @And("user input minimum transaction galileo member level {string} with value {string}")
    public void userInputMinimumTransactionGalileoMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputMinimumTransactionGalileoMemberLevelWithValue( level,  value);
    }

    @And("user input maximum transaction galileo member level {string} with value {string}")
    public void userInputMaximumTransactionGalileoMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputMaximumTransactionGalileoMemberLevelWithValue( level,  value);
    }

    @And("user input promo amount non galileo member level {string} with value {string}")
    public void userInputPromoAmountNonGalileoMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputPromoAmountNonGalileoMemberLevelWithValue( level, value);
    }

    @And("user input minimum transaction non galileo member level {string} with value {string}")
    public void userInputMinimumTransactionNonGalileoMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputMinimumTransactionNonGalileoMemberLevelWithValue( level,  value);
    }

    @And("user input maximum transaction non galileo member level {string} with value {string}")
    public void userInputMaximumTransactionNonGalileoMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputMaximumTransactionNonGalileoMemberLevelWithValue( level,  value);
    }

    @And("user click check box very huge last maximum transaction non galileo member")
    public void userClickCheckBoxVeryHugeLastMaximumTransactionNonGalileoMember() {
        promoAddAction.userClickCheckBoxVeryHugeLastMaximumTransactionNonGalileoMember();
    }

    @And("user click check box very huge last maximum transaction galileo member")
    public void userClickCheckBoxVeryHugeLastMaximumTransactionGalileoMember() {
        promoAddAction.userClickCheckBoxVeryHugeLastMaximumTransactionGalileoMember();
    }

    @And("user click check box very huge last maximum transaction loyalty member")
    public void userClickCheckBoxVeryHugeLastMaximumTransactionLoyaltyMember() {
        promoAddAction.userClickCheckBoxVeryHugeLastMaximumTransactionLoyaltyMember();
    }

    @And("user click clear all promo time button")
    public void userClickClearAllTimePromoButton() {
        promoAddAction.userClickClearAllTimePromoButton();
    }

    @And("user click add day promo time button")
    public void userClickAddDayPromoTimeButton() {
        promoAddAction.userClickAddDayPromoTimeButton();
    }

    @And("user click add all promo time day button")
    public void userClickAddAllPromoTimeDayButton() {
        promoAddAction.userClickAddAllPromoTimeDayButton();
    }

    @And("user click dropdown day row {string} and select value {string}")
    public void userClickDropdownDayRowAndSelectValue(String row, String value) throws InterruptedException {
        promoAddAction.userClickDropdownDayRowAndSelectValue( row,  value);
    }


    @And("user click dropdown started at {string} row {string} and select value {string}")
    public void userClickDropdownStartedAtRowAndSelectValue(String buttonName, String row, String dropdownValue) throws InterruptedException {
        promoAddAction.userClickDropdownStartedAtRowAndSelectValue( buttonName, row, dropdownValue);
    }

    @And("user click dropdown ended at {string} row {string} and select value {string}")
    public void userClickDropdownEndedAtRowAndSelectValue(String buttonName, String row, String dropdownValue) throws InterruptedException {
        promoAddAction.userClickDropdownEndedAtRowAndSelectValue( buttonName, row, dropdownValue);
    }

    @And("user click button {string} of promo payment method {string}")
    public void userClickButtonOfPromoPaymentMethod(String buttonName, String paymentMethodName) {
        promoAddAction.userClickButtonOfPromoPaymentMethod( buttonName,  paymentMethodName);
    }

    @And("user click dropdown promo applied payment method {string} row {string} with value {string}")
    public void userClickDropdownPromoAppliedPaymentMethodRowWithValue(String paymentName, String row, String value) {
        promoAddAction.userClickDropdownPromoAppliedPaymentMethodRowWithValue( paymentName,  row,  value);
    }

    @And("user click promo applied payment method sub checkbox {string}")
    public void userClickPromoAppliedPaymentMethodSubCheckbox(String value) {
        promoAddAction.userClickPromoAppliedPaymentMethodSubCheckbox( value);
    }

    @And("user input percentage galileo member level {string} with value {string}")
    public void userInputPercentageGalileoMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputPercentageGalileoMemberLevelWithValue(level, value);
    }

    @And("user input percentage loyalty member level {string} with value {string}")
    public void userInputPercentageLoyaltyMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputPercentageLoyaltyMemberLevelWithValue( level, value);
    }

    @And("user input max amount loyalty member level {string} with value {string}")
    public void userInputMaxAmountLoyaltyMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputMaxAmountLoyaltyMemberLevelWithValue( level, value);

    }

    @And("user input max amount galileo member level {string} with value {string}")
    public void userInputMaxAmountGalileoMemberLevelWithValue(String level, String value) {
        promoAddAction.userInputMaxAmountGalileoMemberLevelWithValue( level,  value);
    }

    @And("user click combo box predefine {string} and select value {string}")
    public void userClickComboBoxPredefineAndSelectValue(String comboBoxName, String value) {
        promoAddAction.userClickComboBoxPredefineAndSelectValue( comboBoxName,  value);
    }

    @And("user click promo burger menu of {string}")
    public void userClickBurgerMenuOf(String menuLoyalty) {
        promoAddAction.userClickBurgerMenuPromoOf( menuLoyalty);
    }

    @Then("show error promo calculation with message {string}")
    public void showErrorMandatoryOfPromoCalculationWithMessage(String errorMessage) {
        promoAddAction.showErrorMandatoryOfPromoCalculationWithMessage( errorMessage);
    }
}
