package pagesAction;

import helper.Action;
import pageObject.*;
import pageObject.LoyaltyAdd;

public class PromoAddAction {

    public void userUploadBannerPromo(String filePath){
        Action.uploadFile(Promo.uploadBannerPromo,filePath);
    }

    public void userClickAddPromoCalculation(String promoType)throws Exception{
        Action.click(Promo.addPromoCalculation(promoType));
        Thread.sleep(200);
    }
    public void userInputPromoAmountLoyaltyMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputPromoAmountLoyaltyPromoMember(level));
        Action.click(PromoAddEdit.inputPromoAmountLoyaltyPromoMember(level));
        Action.inputText(PromoAddEdit.inputPromoAmountLoyaltyPromoMember(level),value);

    }

    public void userInputMaxAmountLoyaltyMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputMaxAmountLoyaltyMember(level));
        Action.click(PromoAddEdit.inputMaxAmountLoyaltyMember(level));
        Action.inputText(PromoAddEdit.inputMaxAmountLoyaltyMember(level),value);

    }

    public void userInputMinimumTransactionLoyaltyMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputMinTransactionLoyaltyPromoMember(level));
        Action.click(PromoAddEdit.inputMinTransactionLoyaltyPromoMember(level));
        Action.inputText(PromoAddEdit.inputMinTransactionLoyaltyPromoMember(level),value);
    }

    public void userInputMaximumTransactionLoyaltyMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputMaxTransactionLoyaltyPromoMember(level));
        Action.click(PromoAddEdit.inputMaxTransactionLoyaltyPromoMember(level));
        Action.inputText(PromoAddEdit.inputMaxTransactionLoyaltyPromoMember(level),value);
    }

    public void userInputPromoAmountGalileoMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputPromoAmountGalileoMember(level));
        Action.click(PromoAddEdit.inputPromoAmountGalileoMember(level));
        Action.inputText(PromoAddEdit.inputPromoAmountGalileoMember(level),value);
    }

    public void userInputMinimumTransactionGalileoMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputMinTransactionGalileoMember(level));
        Action.click(PromoAddEdit.inputMinTransactionGalileoMember(level));
        Action.inputText(PromoAddEdit.inputMinTransactionGalileoMember(level),value);
    }

    public void userInputMaximumTransactionGalileoMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputMaxTransactionGalileoMember(level));
        Action.click(PromoAddEdit.inputMaxTransactionGalileoMember(level));
        Action.inputText(PromoAddEdit.inputMaxTransactionGalileoMember(level),value);
    }

    public void userInputPercentageGalileoMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputPercentageGalileoMember(level));
        Action.click(PromoAddEdit.inputPercentageGalileoMember(level));
        Action.inputText(PromoAddEdit.inputPercentageGalileoMember(level),value);
    }

    public void userInputPromoAmountNonGalileoMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputPromoAmountNonGalileoMember(level));
        Action.click(PromoAddEdit.inputPromoAmountNonGalileoMember(level));
        Action.inputText(PromoAddEdit.inputPromoAmountNonGalileoMember(level),value);
    }

    public void userInputMinimumTransactionNonGalileoMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputMinTransactionNonGalileoMember(level));
        Action.click(PromoAddEdit.inputMinTransactionNonGalileoMember(level));
        Action.inputText(PromoAddEdit.inputMinTransactionNonGalileoMember(level),value);
    }

    public void userInputMaximumTransactionNonGalileoMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputMaxTransactionNonGalileoMember(level));
        Action.click(PromoAddEdit.inputMaxTransactionNonGalileoMember(level));
        Action.inputText(PromoAddEdit.inputMaxTransactionNonGalileoMember(level),value);
    }

    public void userClickCheckBoxVeryHugeLastMaximumTransactionNonGalileoMember() {
        Action.click(PromoAddEdit.checkBoxVHLMTNonGalileoMember);
    }

    public void userClickCheckBoxVeryHugeLastMaximumTransactionGalileoMember() {
        Action.click(PromoAddEdit.checkBoxVHLMTGalileoMember);
    }

    public void userClickCheckBoxVeryHugeLastMaximumTransactionLoyaltyMember() {
        Action.click(PromoAddEdit.checkBoxVHLMTLoyaltyProgramMember);

    }

    public void userClickClearAllTimePromoButton() {
        Action.click(PromoAddEdit.buttonClearAllPromoTime);
    }

    public void userClickAddDayPromoTimeButton() {
        Action.click(PromoAddEdit.buttonAddPromoTime);
    }

    public void userClickAddAllPromoTimeDayButton() {
        Action.click(PromoAddEdit.buttonAddAllDayPromoTime);
    }

    public void userClickDropdownDayRowAndSelectValue(String row, String targetValue) throws InterruptedException {
        Action.click(PromoAddEdit.dropdownDayPromoTime(row));
        Thread.sleep(200);
        Action.selectListDropdown(Global.dropdownList(targetValue));
    }


    public void userClickDropdownStartedAtRowAndSelectValue(String buttonName, String row, String dropdownValue) throws InterruptedException {
        Action.click(PromoAddEdit.dropdownStartedAt(buttonName,row));
        Thread.sleep(200);
        Action.selectListDropdown(Global.dropdownList(dropdownValue));
    }

    public void userClickDropdownEndedAtRowAndSelectValue(String buttonName, String row, String dropdownValue) throws InterruptedException {
        Action.click(PromoAddEdit.dropdownEndedAt(buttonName,row));
        Thread.sleep(200);
        Action.selectListDropdown(Global.dropdownList(dropdownValue));
    }

    public void userClickButtonOfPromoPaymentMethod(String buttonName, String paymentMethodName) {
        Action.click(PromoAddEdit.buttonSubPromoPaymentMethod(paymentMethodName,buttonName));
    }


    public void userClickDropdownPromoAppliedPaymentMethodRowWithValue(String paymentName, String row, String value) {
        String currentQRISvalue = Action.getText(PromoAddEdit.dropdownPromoPaymentMethod(paymentName,row));
        System.out.println(currentQRISvalue);


        if (currentQRISvalue.equalsIgnoreCase(value)) {
            System.out.println("equal");
        } else {
            Action.click(LoyaltyAdd.dropdownAppliedPaymentMethod(row, paymentName));
            Action.click(Global.dropdownList(value));
        }
    }

    public void userClickPromoAppliedPaymentMethodSubCheckbox(String value) {
        Action.click(PromoAddEdit.appliedPromoPaymentMethodSubCheckBox(value));
    }


    public void userInputPercentageLoyaltyMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputPercentageLoyaltyMember(level));
        Action.click(PromoAddEdit.inputPercentageLoyaltyMember(level));
        Action.inputText(PromoAddEdit.inputPercentageLoyaltyMember(level),value);
    }

    public void userInputMaxAmountGalileoMemberLevelWithValue(String level, String value) {
        Action.manualClearText(PromoAddEdit.inputMaxAmountGalileoMember(level));
        Action.click(PromoAddEdit.inputMaxAmountGalileoMember(level));
        Action.inputText(PromoAddEdit.inputMaxAmountGalileoMember(level),value);
    }

    public void userClickComboBoxPredefineAndSelectValue(String comboBoxName, String value) {
        Action.manualClearText(Global.comboBoxSelector(comboBoxName));
        Action.inputText(Global.comboBoxSelector(comboBoxName),value);
        Action.arrowDownKey(Global.comboBoxSelector(comboBoxName));
        Action.enterKey(Global.comboBoxSelector(comboBoxName));
    }


    public void userClickBurgerMenuPromoOf(String menuPromo) {
        Action.click(Promo.burgerMenuPromo(menuPromo));
    }
}
