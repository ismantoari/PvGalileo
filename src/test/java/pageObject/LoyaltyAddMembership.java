package pageObject;

import org.openqa.selenium.By;

public class LoyaltyAddMembership {
    public static By cancelAddMembership = By.xpath("//button[@class='MuiButtonBase-root MuiButton-root MuiButton-outlined MuiButton-outlinedInherit MuiButton-sizeMedium MuiButton-outlinedSizeMedium MuiButton-colorInherit MuiButton-root MuiButton-outlined MuiButton-outlinedInherit MuiButton-sizeMedium MuiButton-outlinedSizeMedium MuiButton-colorInherit css-15210vm']");

    public static By radioButtonPartialRedeem (String opt){
        return By.xpath("(//*[text()='Partial Redeem *']//following-sibling::div/descendant::label//*[text()='"+opt+"'])/preceding-sibling::*");
    }

    public static By buttonRewardList (String buttonName){
        return By.xpath("//*[text()='Reward List']/following-sibling::div/descendant::button[text()='"+buttonName+"']");
    }

    public static By uploadPictRewardList (String rowNumber){
        //return By.xpath("(//h6[text()='Reward List']/parent::div/following-sibling::div//descendant::*[@role='presentation'])//child::input[@type='file']["+rowNumber+"]");
        return By.xpath("(//h6[text()='Reward List']/parent::div/following-sibling::div//child::input[@accept='image/jpeg,image/png,image/jpg'])["+rowNumber+"]");
    }

    public static By inputRewardName (String number){
        return By.xpath("(//label[text()='Reward Name *']/following-sibling::div/child::input)["+number+"]");
    }

    public static By inputPointExpiryInDay = By.xpath("//label[text()='Point Expiry in Day']/parent::div/child::div//child::input");

//Add_Member_ship

    public static By inputMemberTypeColor = By.xpath("//label[text()='Member Type Color']//following-sibling::div/child::input");
    public static By inputMembershipDescription = By.xpath("((//label[text()='Description']//parent::div)//child::div//child::textarea)[3]");

    public static By inputRewardDescription (String rowList ){
        int row = Integer.valueOf(rowList) - 1;
        String rowStr = Integer.toString(row);
        return By.name("reward_list."+rowStr+".reward_description");

    }

    public static By buttonSaveChangesLoyaltyAddMembership =  By.xpath("(//button[text()='Save Changes'])[2]");

}


