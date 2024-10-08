Feature: Loyalty Program - Promo

    #normal case 1 promo calculation
  @web
  Scenario: Add new promo
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview"
    And user upload banner promo "D:\PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "PVS Loyalty"
    And user input text box "Promo Name *" with value "QA Promo"
    And user input text box "Promo Code *" with value "1022"
    And user input text box "Program Fund *" with value "2000000"
    And user input text area "Description, Additional Terms & Conditions" with value "Term & Cond QA Promo"
    And user click on switch "Publish Promo"
    #Promo Calculation - Loyalty Program Member
    And user click dropdown "Promo Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click add promo calculation "Loyalty Program Member"
    And user click combo box check box "Membership" and select value "Standard"
    And user input text box predefine "Promo Amount *" with value "2000"
    And user input text box predefine "Minimum Transaction *" with value "2000"
    And user input text box predefine "Maximum Transaction *" with value "10000"

    #Promo Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "03-09-2024"
    And user input text box predefine "Ended at *" with value "04-09-2024"
    And user click combo box "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Amount" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time
    And user click button "Add"
    #Promo Payment Method
#    And user click button "Add Promo"
    And stop

    #normal case 2 promo calculation
  @web
  Scenario: Add new promo
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview "
    And user upload banner promo "D:\PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "PVS Loyalty 2"
    And user input text box "Promo Name *" with value "QAP2"
    And user input text box "Promo Code *" with value "1023"
    And user input text box "Program Fund *" with value "3000000"
    And user input text area "Description, Additional Terms & Conditions" with value "T&C QA Promo"
    And user click on switch "Publish Promo"
    #Promo Calculation - Loyalty Program Member
    And user click dropdown "Promo Type *" and select value "Extra Point Reward"
    And user click dropdown "Type *" and select value "Percentage"
    And user click add promo calculation "Loyalty Program Member"
    And user click combo box check box "Membership" and select value "Standard"
    And user input text box predefine "Extra Point Percentage *" with value "5"
    And user input text box predefine "Maximum Points *" with value "200"
    And user input text box predefine "Minimum Transaction *" with value "10000"
    And user input text box predefine "Maximum Transaction *" with value "10000"

    #Promo Calculation - Galileo Member
    And user click add promo calculation "Galileo Member"
#    And user input text box predefine "Promo Amount *" with value "2000"
#    And user input text box predefine "Minimum Transaction *" with value "2000"
#    And user input text box predefine "Maximum Transaction *" with value "10000"

    #Promo Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "03-09-2024"
    And user input text box predefine "Ended at *" with value "04-09-2024"
    And user click combo box "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Amount" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time
    And user click button "Add All Day"
    #Promo Payment Method
#    And user click button "Add Promo"
    And stop

      #normal case all promo calculation
  @web
  Scenario: Add new promo
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview"
    And user upload banner promo "D:\PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "PVS Loyalty"
    And user input text box "Promo Name *" with value "QA Promo"
    And user input text box "Promo Code *" with value "1022"
    And user input text box "Program Fund *" with value "2000000"
    And user input text area "Description, Additional Terms & Conditions" with value "Term & Cond QA Promo"
    And user click on switch "Publish Promo"
    #Promo Calculation - Loyalty Program Member
    And user click dropdown "Promo Type *" and select value "Extra Point Reward"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click add promo calculation "Loyalty Program Member"
    And user click combo box check box "Membership" and select value "Standard"
    And user input text box predefine "Extra Points *" with value "100"
    And user input text box predefine "Minimum Transaction *" with value "2000"
    And user input text box predefine "Maximum Transaction *" with value "10000"
    #Promo Calculation - Galileo Member
    And user click add promo calculation "Galileo Member"
#    And user input text box predefine "Promo Amount *" with value "2000"
#    And user input text box predefine "Minimum Transaction *" with value "2000"
#    And user input text box predefine "Maximum Transaction *" with value "10000"
    #Promo Calculation - Non-Galileo User
    And user click add promo calculation "Non-Galileo User"
#    And user input text box predefine "Promo Amount *" with value "2000"
#    And user input text box predefine "Minimum Transaction *" with value "2000"
#    And user input text box predefine "Maximum Transaction *" with value "10000"

    #Promo Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "03-09-2024"
    And user input text box predefine "Ended at *" with value "04-09-2024"
    And user click combo box "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Amount" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time
    And user click button "Add All Day"
    #Promo Payment Method
#    And user click button "Add Promo"
    And stop

#negative case no calculation promo
  @web
  Scenario: Add new promo
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview"
    And user upload banner promo "D:\PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "PVS Loyalty"
    And user input text box "Promo Name *" with value "QA Promo"
    And user input text box "Promo Code *" with value "1022"
    And user input text box "Program Fund *" with value "2000000"
    And user input text area "Description, Additional Terms & Conditions" with value "Term & Cond QA Promo"
    And user click on switch "Publish Promo"
    #Promo Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "03-09-2024"
    And user input text box predefine "Ended at *" with value "04-09-2024"
    And user click combo box "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Amount" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time
    And user click button "Add All Day"
    #Promo Payment Method
#    And user click button "Add Promo"
    And stop

# add existing promo name
  @web
  Scenario: Add existing promo name
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview"
    And user upload banner promo "D:\PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "PVS Loyalty"
    And user input text box "Promo Name *" with value "QA Promo"
    And user input text box "Promo Code *" with value "10221"
    And user input text box "Program Fund *" with value "2000000"
    And user input text area "Description, Additional Terms & Conditions" with value "Term & Cond QA Promo"
    And user click on switch "Publish Promo"
    #Promo Calculation - Loyalty Program Member
    And user click dropdown "Promo Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click add promo calculation "Loyalty Program Member"
    And user click combo box check box "Membership" and select value "Standard"
    And user input text box predefine "Promo Amount *" with value "2000"
    And user input text box predefine "Minimum Transaction *" with value "2000"
    And user input text box predefine "Maximum Transaction *" with value "10000"

    #Promo Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "03-09-2024"
    And user input text box predefine "Ended at *" with value "04-09-2024"
    And user click combo box "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Amount" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time
    And user click button "Add"
    #Promo Payment Method
#    And user click button "Add Promo"
    And stop




#    #normal case 1 promo calculation
#  @web
#  Scenario: Add new promo 1 promo Calculation
#    Given user already login as administrator
#    And user select language "English"
#    And user select menu "Loyalty Program"
#    And user select sub menu "Promo"
#    And user click button "Add Promo"
#    And user click on switch "Show Preview"
#    And user upload banner promo "F:\PQA.jpg"
#    And user click combo box "Loyalty Program *" and select value "PVS Loyalty"
#    And user input text box "Promo Name *" with value "QA Promo"
#    And user input text box "Promo Code *" with value "1022"
#    And user input text box "Program Fund *" with value "2000000"
#    And user input text area "Description, Additional Terms & Conditions" with value "Term & Cond QA Promo"
#    And user click on switch "Publish Promo"
#    #Promo Calculation - Loyalty Program Member
#    And user click dropdown "Promo Type *" and select value "Discount"
#    And user click dropdown "Type *" and select value "Fix Amount"
#    And user click add promo calculation "Loyalty Program Member"
#    And user click combo box check box "Membership" and select value "Standard"
#    And user input text box predefine "Promo Amount *" with value "2000"
#    And user input text box predefine "Minimum Transaction *" with value "2000"
#    And user input text box predefine "Maximum Transaction *" with value "10000"
#
#    #Promo Issuance Velocity & Restriction
#    And user input text box predefine "Started at *" with value "03-09-2024"
#    And user input text box predefine "Ended at *" with value "04-09-2024"
#    And user click combo box "Period Type" and select value "Daily"
#    And user input text box "Max Amount" with value "1000000"
#    And user input text box "Maximum Amount" with value "100000"
#    And user input text box "Maximum Count Per User" with value "10"
#    #Promo Place
#    And user click combo box check box "Merchant" and select value "Butler's Steak"
#    #Promo Time
#    And user click button "Add All Day"
#    #Promo Payment Method
##    And user click button "Add Promo"
#    And stop
#
#    #normal case 2 promo calculation
#  @web
#  Scenario: Add new promo 2 promo Calculation
#    Given user already login as administrator
#    And user select language "English"
#    And user select menu "Loyalty Program"
#    And user select sub menu "Promo"
#    And user click button "Add Promo"
#    And user click on switch "Show Preview "
#    And user upload banner promo "D:\PQA.jpg"
#    And user click combo box "Loyalty Program *" and select value "PVS Loyalty 2"
#    And user input text box "Promo Name *" with value "QAP2"
#    And user input text box "Promo Code *" with value "1023"
#    And user input text box "Program Fund *" with value "3000000"
#    And user input text area "Description, Additional Terms & Conditions" with value "T&C QA Promo"
#    And user click on switch "Publish Promo"
#    #Promo Calculation - Loyalty Program Member
#    And user click dropdown "Promo Type *" and select value "Extra Point Reward"
#    And user click dropdown "Type *" and select value "Percentage"
#    And user click add promo calculation "Loyalty Program Member"
#    And user click combo box check box "Membership" and select value "Standard"
#    And user input text box predefine "Extra Point Percentage *" with value "5"
    And user input text box predefine "Maximum Points *" with value "200"
    And user input text box predefine "Minimum Transaction *" with value "10000"
    And user input text box predefine "Maximum Transaction *" with value "10000"

    #Promo Calculation - Galileo Member
    And user click add promo calculation "Galileo Member"
#    And user input text box predefine "Promo Amount *" with value "2000"
#    And user input text box predefine "Minimum Transaction *" with value "2000"
#    And user input text box predefine "Maximum Transaction *" with value "10000"

    #Promo Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "03-09-2024"
    And user input text box predefine "Ended at *" with value "04-09-2024"
    And user click combo box "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Amount" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time
    And user click button "Add All Day"
    #Promo Payment Method
#    And user click button "Add Promo"
    And stop

      #normal case all promo calculation
  @web
  Scenario: Add new promo

# add existing promo code
  @web
  Scenario: Add existing promo code

    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview"
    And user upload banner promo "D:\PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "PVS Loyalty"

    And user input text box "Promo Name *" with value "QA Promo"

    And user input text box "Promo Name *" with value "QA Promo 1"

    And user input text box "Promo Code *" with value "1022"
    And user input text box "Program Fund *" with value "2000000"
    And user input text area "Description, Additional Terms & Conditions" with value "Term & Cond QA Promo"
    And user click on switch "Publish Promo"
    #Promo Calculation - Loyalty Program Member

    And user click dropdown "Promo Type *" and select value "Extra Point Reward"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click add promo calculation "Loyalty Program Member"
    And user click combo box check box "Membership" and select value "Standard"
    And user input text box predefine "Extra Points *" with value "100"
    And user input text box predefine "Minimum Transaction *" with value "2000"
    And user input text box predefine "Maximum Transaction *" with value "10000"
    #Promo Calculation - Galileo Member
    And user click add promo calculation "Galileo Member"
#    And user input text box predefine "Promo Amount *" with value "2000"
#    And user input text box predefine "Minimum Transaction *" with value "2000"
#    And user input text box predefine "Maximum Transaction *" with value "10000"
    #Promo Calculation - Non-Galileo User
    And user click add promo calculation "Non-Galileo User"
#    And user input text box predefine "Promo Amount *" with value "2000"
#    And user input text box predefine "Minimum Transaction *" with value "2000"
#    And user input text box predefine "Maximum Transaction *" with value "10000"

    And user click dropdown "Promo Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click add promo calculation "Loyalty Program Member"
    And user click combo box check box "Membership" and select value "Standard"
    And user input text box predefine "Promo Amount *" with value "2000"
    And user input text box predefine "Minimum Transaction *" with value "2000"
    And user input text box predefine "Maximum Transaction *" with value "10000"

    #Promo Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "03-09-2024"
    And user input text box predefine "Ended at *" with value "04-09-2024"
    And user click combo box "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Amount" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time

    And user click button "Add All Day"

    And user click button "Add"

    #Promo Payment Method
#    And user click button "Add Promo"
    And stop


#negative case no calculation promo
  @web
  Scenario: Add new promo

    # add existing promo code
  @web
  Scenario: Upload photo with another format

    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview"

    And user upload banner promo "D:\PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "PVS Loyalty"
    And user input text box "Promo Name *" with value "QA Promo"

    And user upload banner promo "D:\PQA.npg"
    And user click combo box "Loyalty Program *" and select value "PVS Loyalty"
    And user input text box "Promo Name *" with value "QA Promo 1"

    And user input text box "Promo Code *" with value "1022"
    And user input text box "Program Fund *" with value "2000000"
    And user input text area "Description, Additional Terms & Conditions" with value "Term & Cond QA Promo"
    And user click on switch "Publish Promo"


    #Promo Calculation - Loyalty Program Member
    And user click dropdown "Promo Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click add promo calculation "Loyalty Program Member"
    And user click combo box check box "Membership" and select value "Standard"
    And user input text box predefine "Promo Amount *" with value "2000"
    And user input text box predefine "Minimum Transaction *" with value "2000"
    And user input text box predefine "Maximum Transaction *" with value "10000"


    #Promo Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "03-09-2024"
    And user input text box predefine "Ended at *" with value "04-09-2024"
    And user click combo box "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Amount" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time

    And user click button "Add All Day"
    #Promo Payment Method
#    And user click button "Add Promo"
    And stop

    And user click button "Add"
    #Promo Payment Method
#    And user click button "Add Promo"
    And stop


