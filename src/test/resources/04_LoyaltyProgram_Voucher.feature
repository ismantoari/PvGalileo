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
    And user input text box "Voucher Amount *" with value "10000"
    And user input text box "Minimum Transaction *" with value "100000"
    #Voucher Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "12-09-2024"
    And user input text box predefine "Ended at *" with value "14-09-2024"
    And user click dropdown "Period Type" and select value "Daily"
    And user input text box "Maximum Count" with value "100"
    And user input text box "Maximum Count Per User" with value "1"
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
    #Voucher Time - get voucher
#    And click add get voucher promo time
    And user click button "Add All Day"
    #Voucher Time - Redeem Voucher
#    And click add redeem voucher promo time
    And user click button "Add All Day"
    And stop
    #Voucher Payment Method - get voucher
    And user click check checkbox "All QRIS"
    And user click check checkbox "All BNPL"
    And user click check checkbox "All Bank"
#    #Voucher Payment Method - get voucher
#    And user click check checkbox "All QRIS"
#    And user click check checkbox "All BNPL"
#    And user click check checkbox "All Bank"

    When user click button "Add Voucher"
    Then show alert pop up "Insert Voucher list success"

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
    And user input text box "Voucher Amount *" with value "10000"
    And user input text box "Minimum Transaction *" with value "100000"
#    #Voucher Calculation 2
#    And user click dropdown "Voucher Type *" and select value "Discount"
#    And user click dropdown "Type *" and select value "Fix Amount"
#    And user click check checkbox "Galileo Member"
#    And user input text box "Voucher Amount *" with value "10000"
#    And user input text box "Minimum Transaction *" with value "100000"
    #Voucher Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "04-09-2024"
    And user input text box predefine "Ended at *" with value "05-09-2024"
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
    And user click button "Add All Day"
#    And user
    #Voucher Time - Redeem Voucher
    And user click button "Same as get voucher"

    #Voucher Payment Method - get voucher
    And user click check checkbox "All Payment Method Including Cash"

    When user click button "Add Voucher"
    Then show alert pop up "Insert Voucher list success"

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
    And user input text box "Voucher Amount *" with value "10000"
    And user input text box "Minimum Transaction *" with value "100000"
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
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Voucher Time - get voucher
    And user click button "Add All Day"
    #Voucher Time - Redeem Voucher
    And user click button "Add All Day"

    #Voucher Payment Method - get voucher
    And user click check checkbox "All QRIS"
    And user click check checkbox "All BNPL"
    And user click check checkbox "All Bank"
    #Voucher Payment Method - get voucher
    And user click check checkbox "All QRIS"
    And user click check checkbox "All BNPL"
    And user click check checkbox "All Bank"

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
    And user click combo box "Loyalty Program *" and select value "PVS Loyalty"
    And user input text box "Voucher Name *" with value "Promo Loyalty PQA"
    And user input text box "Voucher Code *" with value "PLPVS1"
    And user input text box "Total Voucher *" with value "100"
    And user input text area "Description, Additional Terms & Conditions" with value "This is T&C"
    And user click on switch "Publish Voucher"
    #Voucher Calculation 1
    And user click dropdown "Voucher Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click check checkbox "Loyalty Program Member"
    And user input text box "Voucher Amount *" with value "10000"
    And user input text box "Minimum Transaction *" with value "100000"
#    #Voucher Calculation 2
#    And user click dropdown "Voucher Type *" and select value "Discount"
#    And user click dropdown "Type *" and select value "Fix Amount"
#    And user click check checkbox "Galileo Member"
#    And user input text box "Voucher Amount *" with value "10000"
#    And user input text box "Minimum Transaction *" with value "100000"
    #Voucher Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "04-09-2024"
    And user input text box predefine "Ended at *" with value "05-09-2024"
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
    And user click button "Add All Day"
#    And user
    #Voucher Time - Redeem Voucher
    And user click button "Same as get voucher"

    #Voucher Payment Method - get voucher
    And user click check checkbox "All Payment Method Including Cash"

    When user click button "Add Voucher"
    Then show alert pop up "Voucher Already Exists"

# check mandatory voucher
  @web
  Scenario: check mandatory voucher
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Voucher"
    And user click button "Add Voucher"
    When user click button "Add Voucher"
    Then show alert pop up "Invalid parameter"

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
  And user click combo box "Loyalty Program *" and select value "PVS Loyalty"
  And user input text box "Voucher Name *" with value "Promo Loyalty PQA 2"
  And user input text box "Voucher Code *" with value "PLPaja"
  And user input text box "Total Voucher *" with value "10"
  And user input text area "Description, Additional Terms & Conditions" with value "T&C applied"
  And user click on switch "Publish Voucher"

  And user input text box predefine "Started at *" with value "16-09-2024"
  And user input text box predefine "Ended at *" with value "20-09-2024"
  And user click dropdown "Period Type" and select value "Daily"
  And user input text box "Maximum Count" with value "10"
  And user input text box "Maximum Count Per User" with value "1"
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
  And user click combo box check box "Merchant" and select value "Toma's Brasserie"

  #Voucher Payment Method - get voucher
  And user click check checkbox "All Payment Method Including Cash"
  And user click check checkbox "All Payment Method Including Cash"
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
    Then show alert pop up "Delete voucher list success"