package pagesAction;

import helper.Action;
import pageObject.Menu;

public class MenuAction {
    public void userClickSUbMenuReport(String subMenuName) {
        Action.click(Menu.subMenuReport(subMenuName));
    }
}
