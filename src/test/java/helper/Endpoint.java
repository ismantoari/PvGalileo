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

    public static final String issuer = hostGalileo + "/payment-issuer/issuer";

    public static final String addIssuer = hostGalileo + "/payment-issuer/issuer";

    public static final String member = hostGalileo + "/member/group-member";

    public static final String addMember = hostGalileo + "/member/group-member/add";

    public static final String promo = hostGalileo + "/loyalty-program/promo";

    public static final String addPromo = hostGalileo + "/loyalty-program/promo/add";

    public static final String voucher = hostGalileo + "/loyalty-program/voucher";

    public static final String addVoucher = hostGalileo + "/loyalty-program/voucher/add";

    public static final String paymentMethod = hostGalileo + "/payment-issuer/payment-method";

    public static final String addPaymentMethodBank = hostGalileo + "/payment-issuer/payment-method/bank/add";

    public static final String addPaymentMethodWallet = hostGalileo + "/payment-issuer/payment-method/wallet/add";

    public static final String addPaymentMethodBNPL = hostGalileo + "/payment-issuer/payment-method/bnpl/add";

    public static final String BIN = hostGalileo + "/payment-issuer/bin";

    public static final String addBIN = hostGalileo + "/payment-issuer/bin/add";


    public static final String location = hostGalileo + "/landlord";
    public static final String addLocation = hostGalileo + "/landlord/add";

    public static final String reportLPSummary = hostGalileo + "/report/loyalty-program/summary";
    public static final String reportLPDetail = hostGalileo + "/report/loyalty-program/detail";
    public static final String reportLPVoucherUsage = hostGalileo + "/report/loyalty-program/voucher";
    public static final String reportLPMember = hostGalileo + "/report/loyalty-program/member";
    public static final String reportMerchantSummary = hostGalileo + "/report/merchant/summary";
    public static final String reportMerchantDetail = hostGalileo + "/report/merchant/detail";

    public static final String auditTrail = hostGalileo + "/audit-trail";
    public static final String transactionHistory = hostGalileo + "/transaction";
    public static final String merchantType = hostGalileo + "/config/merchant-type";
    public static final String addMerchantType = hostGalileo + "/config/merchant-type";




}
