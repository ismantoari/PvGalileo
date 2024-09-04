package stepdefs;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.rules.ExpectedException;
import pagesAction.LoyaltyAction;
import pagesAction.LoyaltyAddMembershipAction;
import pagesAction.LoyaltyAddAction;


public class LoyaltyStepdefs {
    LoyaltyAction loyaltyAction = new LoyaltyAction();

    LoyaltyAddAction loyaltyAddAction = new LoyaltyAddAction();
    LoyaltyAddMembershipAction loyaltyAddMembershipAction = new LoyaltyAddMembershipAction();

    @And("user upload loyalty logo {string}")
    public void userUploadLoyaltyLogo(String pictPath) {
        loyaltyAddAction.uploadLoyaltyLogo(pictPath);
    }

    @And("user click add membership")
    public void userClickAddMembership()  throws Exception{
        Thread.sleep(300);
        loyaltyAddAction.userClickAddMembership();
    }

    @And("user select Partial Redeem {string}")
    public void userSelectPartialRedeem(String opt) {
        loyaltyAddAction.userSelectPartialRedeem(opt);
    }

    @And("user click button add reward list")
    public void userClickButtonAddRewardList(){
        loyaltyAddMembershipAction.userClickRewardList("Add");

    }

    @And("user upload picture reward list {string} with path {string}")
    public void userUploadPictureRewardListWithPath(String rewardList, String pictPath) throws Exception{
        loyaltyAddMembershipAction.uploadPictureRewardListWithPath(rewardList, pictPath);
    }

    @And("user input reward name of reward list {string} with {string}")
    public void userInputRewardNameOfRewardListWith(String rowRewardList, String name) throws Exception {
        loyaltyAddMembershipAction.userInputRewardNameOfRewardListWith(rowRewardList, name);
    }

    @And("user input Point Expiry in Day with value {string}")
    public void userInputPointExpiryInDayWithValue(String inputValue) {
        loyaltyAddMembershipAction.inputPointExpiryInDay(inputValue);
    }

    @And("user input Member Type Color with value {string}")
    public void userInputMemberTypeColorWithValue(String inputValue) throws Exception{
        loyaltyAddMembershipAction.userInputMemberTypeColor(inputValue);
    }

    @And("user input add membership description with value {string}")
    public void userInputAddMembershipDescriptionWithValue(String inputValue) {
        loyaltyAddMembershipAction.userInputAddMembershipDescription(inputValue);
    }

    @And("user input Reward Description of reward list {string} with value {string}")
    public void userInputRewardDescriptionOfRewardListWithValue(String rowList, String inputValue)throws Exception {
        loyaltyAddMembershipAction.userInputRewardDescriptionOfRewardListWithValue(rowList,inputValue);
    }

    @Then("verify created new loyalty name {string}")
    public void verifyCreatedNewLoyaltyName(String loyaltyName) {
        loyaltyAction.verifyCreatedNewLoyaltyName(loyaltyName);

    }

    @Then("user on add loyalty page")
    public void userOnAddLoyaltyPage(String expectedURL) {
        loyaltyAction.userOnAddLoyaltyPage(expectedURL);
    }

    @And("user edit membership {string}")
    public void userEditMembership(String membershipLevelName) {
        loyaltyAddAction.userEditMembership(membershipLevelName);
    }
}
