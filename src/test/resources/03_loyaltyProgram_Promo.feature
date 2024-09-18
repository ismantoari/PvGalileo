Feature: Loyalty Program - Promo

# Check promo page
  @web
  Scenario: check promo page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    When user select sub menu "Promo"
    Then user is on "promo" page
# Check add promo page
  @web
  Scenario: check add promo page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    When user click button "Add Promo"
    Then user is on "add promo" page

#normal case 1 promo calculation
  @web
  Scenario: Add new promo 1 
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview"
    And user upload banner promo "D:\PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "Loyalty SQA 1"
    And user input text box "Promo Name *" with value "QA Promo"
    And user input text box "Promo Code *" with value "1022"
    And user input text box "Program Fund *" with value "2000000"
    And user input text area "Description, Additional Terms & Conditions" with value "Term & Cond QA Promo"
    And user click on switch "Publish Promo"
    #Promo Calculation - Loyalty Program Member
    And user click dropdown "Promo Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click add promo calculation "Loyalty Program Member"
    And user click combo box check box "Membership" and select value "silver Member"
    And user input text box predefine "Promo Amount *" with value "2000"
    And user input text box predefine "Minimum Transaction *" with value "2000"
    And user input text box predefine "Maximum Transaction *" with value "10000"
    And user click check box very huge last maximum transaction loyalty member
    #Promo Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "12-09-2024"
    And user input text box predefine "Ended at *" with value "14-09-2024"
    And user click dropdown "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Count" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time
#    And user click button add of promo time
    And user click add day promo time button
    And user click add all promo time day button
    #Promo Payment Method
    And user click button "Add" of promo payment method "Wallet"
    And user click dropdown promo applied payment method "Wallet" row "1" with value "Allo"
    And user click promo applied payment method sub checkbox "Allo Cash"
    When user click button "Add Promo"
    Then show alert pop up "Insert promo list success"

# normal case 2 promo calculation
  @web
  Scenario: Add new promo 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview"
    And user upload banner promo "D:\PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "Loyalty SQA 1"
    And user input text box "Promo Name *" with value "QA Promo 2"
    And user input text box "Promo Code *" with value "1023"
    And user input text box "Program Fund *" with value "3000000"
    And user input text area "Description, Additional Terms & Conditions" with value "T&C QA Promo"
    And user click on switch "Publish Promo"
    #Promo Calculation - Loyalty Program Member
    And user click dropdown "Promo Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Percentage"
    #LEVEL 1
    And user click add promo calculation "Loyalty Program Member"
    And user click combo box check box "Membership" and select value "Silver Member"
    And user input percentage loyalty member level "1" with value "20"
    And user input max amount loyalty member level "1" with value "100"
    And user input minimum transaction loyalty member level "1" with value "2000"
    And user input maximum transaction loyalty member level "1" with value "10000"
    #LEVEL 2
    And user click add promo calculation "Loyalty Program Member"
    And user input percentage loyalty member level "2" with value "20"
    And user input max amount loyalty member level "2" with value "100"
    And user input minimum transaction loyalty member level "2" with value "2000"
    And user input maximum transaction loyalty member level "2" with value "10000"
    #LEVEL 3
    And user click add promo calculation "Loyalty Program Member"
    And user input percentage loyalty member level "3" with value "20"
    And user input max amount loyalty member level "3" with value "100"
    And user input minimum transaction loyalty member level "3" with value "2000"
    And user input maximum transaction loyalty member level "3" with value "10000"

    #Promo Calculation - Galileo Member
    And user click add promo calculation "Galileo Member"
    And user input percentage galileo member level "1" with value "20"
    And user input max amount galileo member level "1" with value "100"
    And user input minimum transaction galileo member level "1" with value "2000"
    And user input maximum transaction galileo member level "1" with value "10000"
    And user click check box very huge last maximum transaction galileo member

    #Promo Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "17-09-2024"
    And user input text box predefine "Ended at *" with value "19-09-2024"
    And user click dropdown "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Count" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time
    And user click clear all promo time button
    And user click add day promo time button
    And user click add all promo time day button
    #Promo Payment Method
    And user click check checkbox "All Wallet"
    And user click check checkbox "All BNPL"
    And user click check checkbox "All Bank"
#    When user click button "Add Promo"
#    Then show alert pop up "Insert Promo list success"

# normal case all promo calculation
  @web
  Scenario: Add new promo 3
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview"
    And user upload banner promo "D:\PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "Loyalty SQA 1"
    And user input text box "Promo Name *" with value "QA Promo 3"
    And user input text box "Promo Code *" with value "1024"
    And user input text box "Program Fund *" with value "2000000"
    And user input text area "Description, Additional Terms & Conditions" with value "Term & Cond QA Promo"
    And user click on switch "Publish Promo"
    #Promo Calculation - Loyalty Program Member
    And user click dropdown "Promo Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Fix Amount"

    And user click add promo calculation "Loyalty Program Member"
    And user click combo box check box "Membership" and select value "bronze Member"
    And user input promo amount loyalty member level "1" with value "100"
    And user input minimum transaction loyalty member level "1" with value "2000"
    And user input maximum transaction loyalty member level "1" with value "10000"

    #Promo Calculation - Galileo Member
    And user click add promo calculation "Galileo Member"
    And user input promo amount galileo member level "1" with value "100"
    And user input minimum transaction galileo member level "1" with value "2000"
    And user input maximum transaction galileo member level "1" with value "10000"

    #Promo Calculation - Non-Galileo User
    And user click add promo calculation "Non-Galileo User"
    And user input promo amount non galileo member level "1" with value "100"
    And user input minimum transaction non galileo member level "1" with value "2000"
    And user input maximum transaction non galileo member level "1" with value "10000"
    And user click check box very huge last maximum transaction non galileo member

    #Promo Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "17-09-2024"
    And user input text box predefine "Ended at *" with value "19-09-2024"
    And user click dropdown "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Count" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time
    And user click clear all promo time button
    And user click add day promo time button
#    And user click add all promo time day button
    And user click dropdown day row "1" and select value "Wednesday"
    And user click dropdown started at "Hour" row "1" and select value "20"
    And user click dropdown started at "Minutes" row "1" and select value "49"
    And user click dropdown ended at "Hour" row "1" and select value "20"
    And user click dropdown ended at "Minutes" row "1" and select value "55"

    #Promo Payment Method
    And user click button "Add" of payment method "Wallet"
    And user click dropdown applied payment method "Wallet" row "1" with value "Allo"
    And user click applied payment method sub checkbox "Allo Cash"

    And user click button "Add" of payment method "BNPL"
    And user click dropdown applied payment method "BNPL" row "1" with value "Kredivo"
    And user click applied payment method sub checkbox "Kredivo Credit"

    And user click button "Add" of payment method "Bank"
    And user click dropdown applied payment method "Bank" row "1" with value "BCA"
    And user click applied payment method sub checkbox "BCA Debit"

#    When user click button "Add Promo"
#    Then show alert pop up "Insert Promo list success"

# negative case no calculation promo
  @web
  Scenario: Add new promo with no calculation promo
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview"
    And user upload banner promo "D:\PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "Loyalty SQA 1"
    And user input text box "Promo Name *" with value "QA Promo"
    And user input text box "Promo Code *" with value "1022"
    And user input text box "Program Fund *" with value "2000000"
    And user input text area "Description, Additional Terms & Conditions" with value "Term & Cond QA Promo"
    And user click on switch "Publish Promo"
    #Promo Issuance Velocity & Restriction
    And user input text box predefine "Started at *" with value "03-09-2024"
    And user input text box predefine "Ended at *" with value "04-09-2024"
    And user click dropdown "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Count" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time
    And user click add all promo time day button
    #Promo Payment Method
    When user click button "Add Promo"
    Then show alert pop up "Invalid parameter"

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
    And user click combo box "Loyalty Program *" and select value "Loyalty SQA 1"
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
    And user input text box predefine "Started at *" with value "13-09-2024"
    And user input text box predefine "Ended at *" with value "14-09-2024"
    And user click dropdown "Period Type" and select value "Daily"
    And user input text box "Max Amount" with value "1000000"
    And user input text box "Maximum Count" with value "100000"
    And user input text box "Maximum Count Per User" with value "10"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Payment Method
    When user click button "Add Promo"
    When user click button "Add Promo"
    Then show alert pop up "Promo already exists"

# cancel add promo
  @web
  Scenario: Cancel Add Promo
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview"
    And user upload banner promo "D:\PQA.jpg"
    And user click combo box "Loyalty Program *" and select value "Loyalty SQA 1"
    And user input text box "Promo Name *" with value "QA Promo"
    And user input text box "Promo Code *" with value "1022"
    And user input text box "Program Fund *" with value "2000000"
    And user input text area "Description, Additional Terms & Conditions" with value "Term & Cond QA Promo"
    And user click on switch "Publish Promo"
    #Promo Place
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    #Promo Time
#    And user click button add of promo time
    And user click add all promo time day button

    #Promo Payment Method
    And user click button "Add" of payment method "Wallet"
    And user click dropdown applied payment method "Wallet" row "1" with value "Allo"
    And user click applied payment method sub checkbox "Allo Cash"
    When user click button "Cancel"
    Then user is on "promo" page

# edit promo
  @web
  Scenario: Edit promo
  Given user already login as administrator
  And user select language "English"
  And user select menu "Loyalty Program"
  And user select sub menu "Promo"
  And user search "QA Promo 2"
  And user click burger menu
  And user click list "Edit"
  And user click combo box predefine "Loyalty Program *" and select value "Loyalty SQA 1"
  And user input text box predefine "Promo Name *" with value "QA Promo 4"
  And user input text box predefine "Promo Code *" with value "1025"
  And user input text box predefine "Program Fund *" with value "4500000"
  And user input text area predefine "Description, Additional Terms & Conditions" with value "T&C QA Promo applied"
  And user click on switch "Publish Promo"
  # Promo Calculation - Loyalty Program Member
  And user click dropdown "Promo Type *" and select value "Extra Points Reward"
  And user click dropdown "Type *" and select value "Fix Amount"
  And user click add promo calculation "Loyalty Program Member"
  And user click combo box check box "Membership" and select value "bronze Member"
  And user input text box predefine "Extra Points *" with value "5000"
  And user input text box predefine "Minimum Transaction *" with value "10000"
  And user input text box predefine "Maximum Transaction *" with value "10000"

  # Promo Issuance Velocity & Restriction
  And user input text box predefine "Started at *" with value "16-09-2024"
  And user input text box predefine "Ended at *" with value "18-09-2024"
  And user click dropdown "Period Type" and select value "Weekly"
  And user input text box predefine "Max Amount" with value "4000000"
  And user input text box predefine "Maximum Count" with value "200000"
  And user input text box predefine "Maximum Count Per User" with value "20"
  # Promo Place
  And user click combo box check box "Merchant" and select value "Toma's Brasserie"
  # Promo Payment Method
  And user click check checkbox "All Payment Method Including Cash"
#  When user click button "Save Changes"
#  Then show alert pop up "Update Promo list success"

# delete promo
  @web
  Scenario: Delete promo
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user search "QA Promo 3"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete Promo list success"
