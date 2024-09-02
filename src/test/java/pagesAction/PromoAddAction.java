package pagesAction;

import helper.Action;
import pageObject.Promo;

public class PromoAddAction {

    public void userUploadBannerPromo(String filePath){
            Action.uploadFile(Promo.uploadBannerPromo,filePath);
}
}
