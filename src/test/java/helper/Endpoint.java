package helper;

public class Endpoint {
    public static final String validUsername = "administrator";
    public static final String validPassword = "pvs1909~";
    public static final String url = "http://192.168.7.110"; //QA

    // public static final String url = "http://182.253.33.106"; //pub
    public static final String port = "9797";
    public static final String hostGalileo = url + ":"  + port;


    // ---------- LIST OF GALILEO PAGE ------------------
    public static final String dashboard = hostGalileo + "/dashboard";

    public static final String loyalty = hostGalileo + "/loyalty-program/loyalty";

    public static final String addLoyalty = hostGalileo + "/loyalty-program/loyalty/add";




}
