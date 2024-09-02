package pagesAction;

import helper.Action;
import org.openqa.selenium.By;
import pageObject.Global;
import pageObject.LoyaltyAdd;
import pageObject.LoyaltyAddMembership;
import static helper.BaseTest.driver;


public class LoyaltyAddMembershipAction {

    public void userClickRewardList(String buttonName){
        Action.click(LoyaltyAddMembership.buttonRewardList(buttonName));
    }

    public void uploadPictureRewardListWithPath(String rewardList, String pictPath)throws Exception{
        Thread.sleep(200);
        Action.uploadFile(LoyaltyAddMembership.uploadPictRewardList(rewardList), pictPath);
       // driver.findElement(LoyaltyAddMembership.uploadPictRewardList(rewardList)).sendKeys(pictPath);
    }

    public void userInputRewardNameOfRewardListWith(String rowRewardList, String name) throws Exception{
        Thread.sleep(500);
        Action.inputText(LoyaltyAddMembership.inputRewardName(rowRewardList),name);
    }

    public void inputPointExpiryInDay(String inputValue){
        Action.clearText(LoyaltyAddMembership.inputPointExpiryInDay);
        Action.inputText(LoyaltyAddMembership.inputPointExpiryInDay,inputValue);
    }


    By inputMemberTypeColor = By.xpath("//label[text()='Member Type Color']//following-sibling::div/child::input");
    public void userInputMemberTypeColor(String inputValue) {
        Action.clearText(LoyaltyAddMembership.inputMemberTypeColor);
        Action.manualClearText(LoyaltyAddMembership.inputMemberTypeColor);
        Action.inputText(LoyaltyAddMembership.inputMemberTypeColor,inputValue);
    }

    public void userInputAddMembershipDescription(String inputValue){
        Action.inputText(LoyaltyAddMembership.inputMembershipDescription, inputValue);
    }

    public void userInputRewardDescriptionOfRewardListWithValue(String row, String inputValue) throws Exception{
        Thread.sleep(200);
        Action.inputText(LoyaltyAddMembership.inputRewardDescription(row),inputValue);
    }
}
