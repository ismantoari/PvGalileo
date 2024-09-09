package stepdefs;
import io.cucumber.java.en.And;
import pagesAction.MenuAction;

public class MenuStepdefs {
        MenuAction menuAction = new MenuAction();

    @And("user click sub menu report {string}")
    public void userClickSubMenuReport(String subMenuName) {
        menuAction.userClickSUbMenuReport(subMenuName);
    }

}
