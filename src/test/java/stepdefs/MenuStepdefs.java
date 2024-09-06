package stepdefs;

import io.cucumber.java.en.And;
import pagesAction.MenuAction;

public class MenuStepdefs {

    MenuAction menuAction = new MenuAction();

    @And("user click sub menu Report {string}")
    public void userClickSubMenuReport(String subMenuName) {
        menuAction.userClickSubMenuReport(subMenuName);
    }
}
