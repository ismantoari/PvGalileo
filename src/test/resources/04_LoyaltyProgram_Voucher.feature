Feature: Loyalty Program - Voucher

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
    And user input text box predefine "Expiry Date" with value "06-09-2024"
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
#    #Voucher Payment Method - get voucher
#    And user click check checkbox "All QRIS"
#    And user click check checkbox "All BNPL"
#    And user click check checkbox "All Bank"

#    And user click button "Add Voucher"
    And stop

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
    And user input text box "Voucher Name *" with value "Promo Loyalty PVS"
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
    And user
    #Voucher Time - Redeem Voucher
    And user click button "Same as get voucher"

    #Voucher Payment Method - get voucher
    And user click check checkbox "All Payment Method Including Cash"

#    And user click button "Add Voucher"
    And stop

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

#    And user click button "Cancel"
    And stop

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
#    #Voucher Payment Method - get voucher
#    And user click check checkbox "All QRIS"
#    And user click check checkbox "All BNPL"
#    And user click check checkbox "All Bank"

#    And user click button "Add Voucher"
    And stop