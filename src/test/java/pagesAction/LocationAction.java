package pagesAction;

import helper.Action;
import pageObject.Location;
import pageObject.LoyaltyAdd;

public class LocationAction {
    public void userUploadLoyaltyLogoFacility(String pictPath,String row) {
        Action.uploadFile(Location.uploadLoyaltyLogoLocatorSpesific(row), pictPath);
    }
}
