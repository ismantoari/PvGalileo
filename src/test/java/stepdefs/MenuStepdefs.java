package stepdefs;
import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import pagesAction.MenuAction;

public class MenuStepdefs {
        MenuAction menuAction = new MenuAction();

    @And("user click sub menu report {string}")
    public void userClickSubMenuReport(String subMenuName) {
        menuAction.userClickSUbMenuReport(subMenuName);
    }

    @When("user select sub sub menu {string}")
    public void userSelectSubSubMenu(String submenuName) {
        menuAction.userSelectSubSubMenu( submenuName);
    }

}
