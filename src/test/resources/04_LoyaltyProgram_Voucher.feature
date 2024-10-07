Feature: Loyalty Program - Voucher

# check loyalty voucher page
  @web
  Scenario: Check Voucher Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    When user select sub menu "Voucher"
    Then user is on "voucher" page

# check add loyalty voucher page
  @web
  Scenario: Check Add Voucher Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Voucher"
    When user click button "Add Voucher"
    Then user is on "add voucher" page

# Add Voucher 1
  @web
  Scenario: Add Voucher 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Voucher"
    And user click button "Add Voucher"
    #Voucher Identification
    And user click on switch "Show Preview"
    And user upload loyalty logo "D:/PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "Loyalty SQA 1"
    And user input text box "Voucher Name *" with value "Promo Loyalty PQA"
    And user input text box "Voucher Code *" with value "PLPVS1"
    And user input text box "Total Voucher *" with value "100"
    And user input text area "Description, Additional Terms & Conditions" with value "This is T&C"
    And user click on switch "Publish Voucher"
    #Voucher Calculation
    And user click dropdown "Voucher Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click check checkbox "Loyalty Program Member"
    And user input text box "Voucher Amount *" of "Loyalty Program Member" with value "10000"
    And user input text box "Minimum Transaction *" of "Loyalty Program Member" with value "100000"
    #Voucher Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "12-09-2024"
    And user input text box predefine "Ended at *" with value "14-09-2024"
    And user click dropdown "Period Type" and select value "Daily"
    And user input text box "Maximum Count" with value "100"
    And user input text box "Maximum Count Per User" with value "1"
    And user click combo box check box "Membership" and select value "silver Member"
    #Voucher Expiry
    And user click radio button of "Voucher Expiry" with value "In Date"
    And user input text box predefine "Expiry Date" with value "14-09-2024"
    #Voucher Awarding Rule
    And user click radio button of "Voucher Awarding Rule" with value "No"
    #Convert Point
    And user click radio button of "Convert Point" with value "No"
    #Occasion
    And user click radio button of "Occasion" with value "New Member"
    #Voucher Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
#    Voucher Time - get voucher
    And user click button "Add" of "Get Voucher"
    And user click dropdown day row "1" and select value "Wednesday" of "Get Voucher"
    And user click dropdown "Started at" "Hour" row "1" and select value "20" of "Get Voucher"
    And user click dropdown "Started at" "Minutes" row "1" and select value "49" of "Get Voucher"
    And user click dropdown "Ended at" "Hour" row "1" and select value "20" of "Get Voucher"
    And user click dropdown "Ended at" "Minutes" row "1" and select value "55" of "Get Voucher"
    #Voucher Time - Redeem Voucher
#    And click add redeem voucher promo time
    And user click button "Add" of "Redeem Voucher"
    And user click dropdown day row "1" and select value "Wednesday" of "Redeem Voucher"
    And user click dropdown "Started at" "Hour" row "1" and select value "20" of "Redeem Voucher"
    And user click dropdown "Started at" "Minutes" row "1" and select value "49" of "Redeem Voucher"
    And user click dropdown "Ended at" "Hour" row "1" and select value "20" of "Redeem Voucher"
    And user click dropdown "Ended at" "Minutes" row "1" and select value "55" of "Redeem Voucher"

    #Voucher Payment Method - get voucher
    And user click button "Add" of payment method "QRIS" on "Get Voucher"
    And user click dropdown applied payment method "QRIS" row "1" with value "Monei" of "Get Voucher"
    And user click applied payment method "QRIS" sub checkbox "Monei" of "Get Voucher"

    And user click button "Add" of payment method "BNPL" on "Get Voucher"
    And user click dropdown applied payment method "BNPL" row "1" with value "Indodana" of "Get Voucher"
    And user click applied payment method "BNPL" sub checkbox "Indodana Paylater" of "Get Voucher"

    And user click button "Add" of payment method "Bank" on "Get Voucher"
    And user click dropdown applied payment method "Bank" row "1" with value "BNI" of "Get Voucher"
    And user click applied payment method "Bank" sub checkbox "BNI Debit" of "Get Voucher"

#    #Voucher Payment Method - redeem voucher
    And user click button "Add" of payment method "QRIS" on "Redeem Voucher"
    And user click dropdown applied payment method "QRIS" row "1" with value "Monei" of "Redeem Voucher"
    And user click applied payment method "QRIS" sub checkbox "Monei" of "Redeem Voucher"

    And user click button "Add" of payment method "BNPL" on "Redeem Voucher"
    And user click dropdown applied payment method "BNPL" row "1" with value "Indodana" of "Redeem Voucher"
    And user click applied payment method "BNPL" sub checkbox "Indodana Paylater" of "Redeem Voucher"

    And user click button "Add" of payment method "Bank" on "Redeem Voucher"
    And user click dropdown applied payment method "Bank" row "1" with value "BNI" of "Redeem Voucher"
    And user click applied payment method "Bank" sub checkbox "BNI Debit" of "Redeem Voucher"

    When user click button "Add Voucher"
    Then show alert pop up "Insert voucher success"

# Add Voucher 2
  @web
  Scenario: Add Voucher 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Voucher"
    And user click button "Add Voucher"
    #Voucher Identification
    And user click on switch "Show Preview"
    And user upload loyalty logo "D:/PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "PVS Loyalty"
    And user input text box "Voucher Name *" with value "Promo Loyalty PQA 2"
    And user input text box "Voucher Code *" with value "PLPQA2"
    And user input text box "Total Voucher *" with value "100"
    And user input text area "Description, Additional Terms & Conditions" with value "This is T&C"
    And user click on switch "Publish Voucher"
    #Voucher Calculation 1
    And user click dropdown "Voucher Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click check checkbox "Loyalty Program Member"
    And user input text box "Voucher Amount *" of "Loyalty Program Member" with value "10000"
    And user input text box "Minimum Transaction *" of "Loyalty Program Member" with value "100000"
    And user click combo box check box "Membership" and select value "silver Member"
     #Voucher Calculation 2
    And user click check checkbox "Galileo Member"
    And user input text box "Voucher Amount *" of "Galileo Member" with value "10000"
    And user input text box "Minimum Transaction *" of "Galileo Member" with value "100000"
  # Voucher Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "19-09-2024"
    And user input text box predefine "Ended at *" with value "25-09-2024"
    And user click dropdown "Period Type" and select value "Daily"
    And user input text box "Maximum Count" with value "100"
    And user input text box "Maximum Count Per User" with value "1"
    #Voucher Expiry
    And user click radio button of "Voucher Expiry" with value "In Day(s)"
    And user input text box predefine "Expiry Day(s)" with value "2"
    #Voucher Awarding Rule
    And user click radio button of "Voucher Awarding Rule" with value "No"
    #Convert Point
    And user click radio button of "Convert Point" with value "No"
    #Occasion
    And user click radio button of "Occasion" with value "New Member"
    #Voucher Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"

    #Voucher Time - get voucher
    And user click button "Add All Day" of "Get Voucher"
    #Voucher Time - Redeem Voucher
    And user click button "Add All Day" of "Redeem Voucher"

    #Voucher Payment Method - get voucher
    And user click check checkbox of "Get Voucher"

    #Voucher Payment Method - get voucher
    And user click check checkbox of "Redeem Voucher"

    When user click button "Add Voucher"
    Then show alert pop up "Insert voucher success"

# Cancel Add Voucher
  @web
  Scenario: Cancel Add Voucher
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Voucher"
    And user click button "Add Voucher"
    #Voucher Identification
    And user click on switch "Show Preview"
    And user upload loyalty logo "D:/PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "PVS Loyalty"
    And user input text box "Voucher Name *" with value "Promo Loyalty PVS"
    And user input text box "Voucher Code *" with value "PLPVS1"
    And user input text box "Total Voucher *" with value "100"
    And user input text area "Description, Additional Terms & Conditions" with value "This is T&C"
    And user click on switch "Publish Voucher"
    #Voucher Calculation
    And user click dropdown "Voucher Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click check checkbox "Loyalty Program Member"
    And user input text box "Voucher Amount *" of "Loyalty Program Member" with value "10000"
    And user input text box "Minimum Transaction *" of "Loyalty Program Member" with value "100000"
    #Voucher Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "04-09-2024"
    And user input text box predefine "Ended at *" with value "05-09-2024"
    And user click dropdown "Period Type" and select value "Daily"
    And user input text box "Maximum Count" with value "100"
    And user input text box "Maximum Count Per User" with value "1"
    #Voucher Expiry
    And user click radio button of "Voucher Expiry" with value "In Date"
    And user input text box predefine "Expiry Date" with value "05-09-2024"
    #Voucher Awarding Rule
    And user click radio button of "Voucher Awarding Rule" with value "No"
    #Convert Point
    And user click radio button of "Convert Point" with value "No"
    #Occasion
    And user click radio button of "Occasion" with value "New Member"
    #Voucher Place
#    And user click check checkbox "All Merchant"
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Voucher Time - get voucher
    And user click button "Add All Day" of "Get Voucher"
    #Voucher Time - Redeem Voucher
    And user click button "Add All Day" of "Redeem Voucher"

    #Voucher Payment Method - get voucher
    And user click check checkbox "All QRIS" of "Get Voucher"
    And user click check checkbox "All BNPL" of "Get Voucher"
    And user click check checkbox "All Bank" of "Get Voucher"
#    #Voucher Payment Method - get voucher
    And user click check checkbox "All QRIS" of "Redeem Voucher"
    And user click check checkbox "All BNPL" of "Redeem Voucher"
    And user click check checkbox "All Bank" of "Redeem Voucher"
#
    When user click button "Cancel"
    Then user is on "voucher" page

# Add Existing Voucher
  @web
  Scenario: Add Existing Voucher
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Voucher"
    And user click button "Add Voucher"
    #Voucher Identification
    And user click on switch "Show Preview"
    And user upload loyalty logo "D:/PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "Loyalty SQA 1"
    And user input text box "Voucher Name *" with value "Promo Loyalty PQA"
    And user input text box "Voucher Code *" with value "PLPVS1"
    And user input text box "Total Voucher *" with value "100"
    And user input text area "Description, Additional Terms & Conditions" with value "This is T&C"
    And user click on switch "Publish Voucher"
    #Voucher Calculation
    And user click dropdown "Voucher Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click check checkbox "Loyalty Program Member"
    And user input text box "Voucher Amount *" of "Loyalty Program Member" with value "10000"
    And user input text box "Minimum Transaction *" of "Loyalty Program Member" with value "100000"
    #Voucher Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "12-09-2024"
    And user input text box predefine "Ended at *" with value "14-09-2024"
    And user click dropdown "Period Type" and select value "Daily"
    And user input text box "Maximum Count" with value "100"
    And user input text box "Maximum Count Per User" with value "1"
    And user click combo box check box "Membership" and select value "silver Member"
    #Voucher Expiry
    And user click radio button of "Voucher Expiry" with value "In Date"
    And user input text box predefine "Expiry Date" with value "14-09-2024"
    #Voucher Awarding Rule
    And user click radio button of "Voucher Awarding Rule" with value "No"
    #Convert Point
    And user click radio button of "Convert Point" with value "No"
    #Occasion
    And user click radio button of "Occasion" with value "New Member"
    #Voucher Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
#    Voucher Time - get voucher
    And user click button "Add" of "Get Voucher"
    And user click dropdown day row "1" and select value "Wednesday" of "Get Voucher"
    And user click dropdown "Started at" "Hour" row "1" and select value "20" of "Get Voucher"
    And user click dropdown "Started at" "Minutes" row "1" and select value "49" of "Get Voucher"
    And user click dropdown "Ended at" "Hour" row "1" and select value "20" of "Get Voucher"
    And user click dropdown "Ended at" "Minutes" row "1" and select value "55" of "Get Voucher"
    #Voucher Time - Redeem Voucher
#    And click add redeem voucher promo time
    And user click button "Add" of "Redeem Voucher"
    And user click dropdown day row "1" and select value "Wednesday" of "Redeem Voucher"
    And user click dropdown "Started at" "Hour" row "1" and select value "20" of "Redeem Voucher"
    And user click dropdown "Started at" "Minutes" row "1" and select value "49" of "Redeem Voucher"
    And user click dropdown "Ended at" "Hour" row "1" and select value "20" of "Redeem Voucher"
    And user click dropdown "Ended at" "Minutes" row "1" and select value "55" of "Redeem Voucher"

    #Voucher Payment Method - get voucher
    And user click button "Add" of payment method "QRIS" on "Get Voucher"
    And user click dropdown applied payment method "QRIS" row "1" with value "Monei" of "Get Voucher"
    And user click applied payment method "QRIS" sub checkbox "Monei" of "Get Voucher"

    And user click button "Add" of payment method "BNPL" on "Get Voucher"
    And user click dropdown applied payment method "BNPL" row "1" with value "Indodana" of "Get Voucher"
    And user click applied payment method "BNPL" sub checkbox "Indodana Paylater" of "Get Voucher"

    And user click button "Add" of payment method "Bank" on "Get Voucher"
    And user click dropdown applied payment method "Bank" row "1" with value "BNI" of "Get Voucher"
    And user click applied payment method "Bank" sub checkbox "BNI Debit" of "Get Voucher"

#    #Voucher Payment Method - redeem voucher
    And user click button "Add" of payment method "QRIS" on "Redeem Voucher"
    And user click dropdown applied payment method "QRIS" row "1" with value "Monei" of "Redeem Voucher"
    And user click applied payment method "QRIS" sub checkbox "Monei" of "Redeem Voucher"

    And user click button "Add" of payment method "BNPL" on "Redeem Voucher"
    And user click dropdown applied payment method "BNPL" row "1" with value "Indodana" of "Redeem Voucher"
    And user click applied payment method "BNPL" sub checkbox "Indodana Paylater" of "Redeem Voucher"

    And user click button "Add" of payment method "Bank" on "Redeem Voucher"
    And user click dropdown applied payment method "Bank" row "1" with value "BNI" of "Redeem Voucher"
    And user click applied payment method "Bank" sub checkbox "BNI Debit" of "Redeem Voucher"

    When user click button "Add Voucher"
    Then show alert pop up "Voucher already exists"

# check mandatory voucher
  @web
  Scenario: check mandatory voucher
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Voucher"
    And user click button "Add Voucher"
    And stop
    When user click button "Add Voucher"
    Then show error mandatory of "Voucher Name *" with message "Voucher Name is a required field"

# Edit Voucher
  @web
  Scenario: Edit Voucher
  Given user already login as administrator
  And user select language "English"
  And user select menu "Loyalty Program"
  And user select sub menu "Voucher"
  And user search "Promo Loyalty PQA 2"
  And user click burger menu
  And user click list "Edit"
  And user click on switch "Show Preview"
  And user upload loyalty logo "D:/PQA.jpg"
  And user click combo box predefine "Loyalty Program *" and select value "PVS Loyalty"
  And user input text box predefine "Voucher Name *" with value "Promo Loyalty PQA 2"
  And user input text box predefine "Voucher Code *" with value "PLPaja"
  And user input text box predefine "Total Voucher *" with value "10"
  And user input text area predefine "Description, Additional Terms & Conditions" with value "T&C applied"
  And user click on switch "Publish Voucher"

  And user input text box predefine "Started at *" with value "16-09-2024"
  And user input text box predefine "Ended at *" with value "20-09-2024"
  And user click dropdown "Period Type" and select value "Daily"
  And user input text box predefine "Maximum Count" with value "10"
  And user input text box predefine "Maximum Count Per User" with value "1"
  #Voucher Expiry
  And user click radio button of "Voucher Expiry" with value "In Day(s)"
  And user input text box predefine "Expiry Day(s)" with value "4"
  #Voucher Awarding Rule
  And user click radio button of "Voucher Awarding Rule" with value "No"
  #Convert Point
  And user click radio button of "Convert Point" with value "No"
  #Occasion
  And user click radio button of "Occasion" with value "New Member"
  #Voucher Place
  And user click check checkbox "All Merchant"
#  And user click combo box check box "Merchant" and select value "Toma's Brasserie"


  When user click button "Save Changes"
  Then show alert pop up "Update Voucher list success"
  
# Delete Voucher
  @web
  Scenario: Delete Voucher
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Voucher"
    And user search "Promo Loyalty PQA 2"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete voucher success"
    Then verify deleted loyalty name "Promo Loyalty PQA 2"