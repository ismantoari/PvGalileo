package stepdefs;

import io.cucumber.java.en.And;
import pagesAction.LocationAction;

public class LocationStepdefs {
    LocationAction locationAction = new LocationAction();
    @And("user upload loyalty logo {string} Facility {string}")
    public void userUploadLoyaltyLogoFacility(String pictPath, String row) throws Exception {
        locationAction.userUploadLoyaltyLogoFacility(pictPath,row );
        Thread.sleep(200);
    }
}
