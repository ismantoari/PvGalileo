package helper;

public class Endpoint {
    public static final String validUsername = "administrator";
    public static final String validPassword = "pvs1909~";
    public static final String url = "http://192.168.7.110"; //QA

    // public static final String url = "http://182.253.33.106"; //pub
    public static final String port = "9797";
    public static final String hostGalileo = url + ":"  + port;


    // ---------- LIST OF GALILEO PAGE ------------------
    // Dashboard
    public static final String dashboard = hostGalileo + "/dashboard";

    // Loyalty program - loyalty
    public static final String loyalty = hostGalileo + "/loyalty-program/loyalty";
    public static final String addLoyalty = hostGalileo + "/loyalty-program/loyalty/add";

    // Loyalty program - promo
    public static final String promo = hostGalileo + "/loyalty-program/promo";
    public static final String addPromo = hostGalileo + "/loyalty-program/promo/add";

    // Loyalty Program - voucher
    public static final String voucher = hostGalileo + "/loyalty-program/voucher";
    public static final String addVoucher = hostGalileo + "/loyalty-program/voucher/add";

    // Payment issuer - payment method
    public static final String paymentMethod = hostGalileo + "/payment-issuer/payment-method";
    public static final String addPaymentMethodBank = hostGalileo + "/payment-issuer/payment-method/bank/add";
    public static final String addPaymentMethodWallet = hostGalileo + "/payment-issuer/payment-method/wallet/add";
    public static final String addPaymentMethodBNPL = hostGalileo + "/payment-issuer/payment-method/bnpl/add";

    // Payment issuer - issuer
    public static final String issuer = hostGalileo + "/payment-issuer/issuer";
    public static final String addIssuer = hostGalileo + "/payment-issuer/issuer";

    // Payment issuer - BIN
    public static final String BIN = hostGalileo + "/payment-issuer/bin";
    public static final String addBIN = hostGalileo + "/payment-issuer/bin/add";

    // Member - group member
    public static final String member = hostGalileo + "/member/group-member";
    public static final String addMember = hostGalileo + "/member/group-member/add";

    // location
    public static final String location = hostGalileo + "/landlord";
    public static final String addLocation = hostGalileo + "/landlord/add";

    // merchant list
    public static final String merchantList = hostGalileo + "/merchant/merchant-list";
    public static final String addMerchantListSingle = hostGalileo + "/merchant/merchant-list/add";
    public static final String addMerchantListMultiple = hostGalileo + "/merchant/merchant-list/multiple";

    // product setup
    public static final String productSetup = hostGalileo + "/merchant/product-setup";
    public static final String addProductSetup = hostGalileo + "/merchant/product-setup";


    // Transaction history
    public static final String transactionHistory = hostGalileo + "/transaction";

    // Report - loyalty program
    public static final String reportLPSummary = hostGalileo + "/report/loyalty-program/summary";
    public static final String reportLPDetail = hostGalileo + "/report/loyalty-program/detail";
    public static final String reportLPVoucherUsage = hostGalileo + "/report/loyalty-program/voucher";
    public static final String reportLPMember = hostGalileo + "/report/loyalty-program/member";

    // Report - merchant
    public static final String reportMerchantSummary = hostGalileo + "/report/merchant/summary";
    public static final String reportMerchantDetail = hostGalileo + "/report/merchant/detail";

    // Audit trail
    public static final String auditTrail = hostGalileo + "/audit-trail";

    // Config - merchant type
    public static final String merchantType = hostGalileo + "/config/merchant-type";
    public static final String addMerchantType = hostGalileo + "/config/merchant-type";

    // User management - user
    public static final String userUM = hostGalileo + "/management/user";
    public static final String addUserUM = hostGalileo + "/management/user/add";

    // User management - group
    public static final String groupUM = hostGalileo + "/management/group";
    public static final String addGroupUM = hostGalileo + "/management/group/add";

    // User management - subgroup
    public static final String subgroupUM = hostGalileo + "/management/subgroup";
    public static final String addSubgroupUM = hostGalileo + "/management/subgroup/add";

    // User management - package
    public static final String PakcageUM = hostGalileo + "/management/package";
    public static final String addPackageUM = hostGalileo + "/management/package/add";




}
