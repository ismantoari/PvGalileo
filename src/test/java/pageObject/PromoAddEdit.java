package pageObject;

import org.openqa.selenium.By;

public class PromoAddEdit {

    public static By uploadBannerPromo = By.xpath("//input[@accept='image/jpeg,image/png,image/jpg']");

    public static By addPromoCalculation (String promoCategory){
        return By.xpath("//h6[text()='"+promoCategory+"']/following-sibling::button");
    }
    //Promo Calculation-> Loyalty Program Member -> Level 1/2/3/dst
    public static By inputPromoAmountLoyaltyPromoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_loyalty_program_member."+levelStr+".max_amount_gained");
    }
    public static By inputPercentageLoyaltyMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_loyalty_program_member."+levelStr+".percentage");
    }
    public static By inputMaxAmountLoyaltyMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_loyalty_program_member."+levelStr+".max_amount_gained");
    }


    public static By inputMinTransactionLoyaltyPromoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_loyalty_program_member."+levelStr+".min_trx_amount");
    }
    public static By inputMaxTransactionLoyaltyPromoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_loyalty_program_member."+levelStr+".max_trx_amount");
    }

    public static By inputPromoAmountGalileoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_galileo_member."+levelStr+".max_amount_gained");
    }
    public static By inputPercentageGalileoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_galileo_member."+levelStr+".percentage");
    }

    public static By inputMaxAmountGalileoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_galileo_member."+levelStr+".max_amount_gained");
    }


    public static By inputMinTransactionGalileoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_galileo_member."+levelStr+".min_trx_amount");
    }
    public static By inputMaxTransactionGalileoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_galileo_member."+levelStr+".max_trx_amount");
    }

    public static By inputPromoAmountNonGalileoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_non_galileo_user."+levelStr+".max_amount_gained");
    }

    public static By inputPercentageNonGalileoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_non_galileo_user."+level+".percentage");
    }


    public static By inputMinTransactionNonGalileoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_non_galileo_user."+levelStr+".min_trx_amount");
    }
    public static By inputMaxAmountNonGalileoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_non_galileo_user."+level+".max_amount_gained");
    }

    public static By inputMaxTransactionNonGalileoMember(String level)    {
        int levelInt = Integer.parseInt(level);
        int levelTarget = levelInt - 1;
        String levelStr = Integer.toString(levelTarget);
        return By.id("promo_amount_non_galileo_user."+levelStr+".max_trx_amount");
    }

    public static By checkBoxVHLMTLoyaltyProgramMember = By.name("promo_amount_loyalty_program_member.unlimited_flag");
    public static By checkBoxVHLMTGalileoMember = By.name("promo_amount_galileo_member.unlimited_flag");
    public static By checkBoxVHLMTNonGalileoMember = By.name("promo_amount_non_galileo_user.unlimited_flag");

    public static By buttonAddPromoTime = By.xpath("(//*[text()='Promo Time']/parent::div/following-sibling::div//child::button[text()='Add'])[1]");
    public static By buttonAddAllDayPromoTime = By.xpath("(//*[text()='Promo Time']/parent::div/following-sibling::div//child::button[text()='Add All Day'])[1]");
    public static By buttonClearAllPromoTime = By.xpath("(//*[text()='Promo Time']/parent::div/following-sibling::div//child::button[text()='Clear All'])[1]");

    public static By dropdownDayPromoTime (String row){
        return By.xpath("(//label[text()='Day']/following-sibling::div/child::div[1])["+row+"]");
    }


    public static By dropdownStartedAt (String buttonName, String row){
        return By.xpath("(//p[text()='Started at']/parent::label/following-sibling::div//child::label[text()='"+buttonName+"']/following-sibling::div)["+row+"]");
    }


    public static By dropdownEndedAt (String buttonName, String row){
        return By.xpath("(//p[text()='Ended at']/parent::label/following-sibling::div//child::label[text()='"+buttonName+"']/following-sibling::div)["+row+"]");
    }

    public static By buttonSubPromoPaymentMethod (String paymentName, String buttonName){
        return By.xpath("//h6[text()='Promo Payment Method']/parent::div/following-sibling::div//child::p[text()='"+paymentName+"']/following-sibling::div//child::button[text()='"+buttonName+"']");
    }

    public static By dropdownPromoPaymentMethod(String paymentName, String row) {
        return By.xpath("(//label[text()='"+paymentName+"']/following-sibling::div/child::label[text()='"+paymentName+"']/following-sibling::div)["+row+"]");

    }

    public static By appliedPromoPaymentMethodSubCheckBox(String value){
        return By.xpath("//*[text()='"+value+"']//ancestor::span/preceding-sibling::span");
    }

    public static By promoCalculationErrorMsg(String errorMsg) {
        return By.xpath("//h6[text()='Promo Calculation']/parent::div/following-sibling::span[text()='"+errorMsg+"']");
    }
}







