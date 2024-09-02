Feature: Loyalty Program - Promo

  @web
  Scenario: Add new promo
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    And user click on switch "Show Preview"
    And user upload banner promo "F:\wide.png"
    And user click combo box "Loyalty Program *" and select value "PVS Loyalty"
    And user input text box "Promo Name *" with value "QA Promo"
    And user input text box "Promo Code *" with value "1022"
    And user input text box "Program Fund *" with value "2000000"
    And user input text area "Description, Additional Terms & Conditions" with value "Term & Cond QA Promo"
    And user click on switch "Publish Promo"
    #Promo Calculation
    And user click dropdown "Promo Type *" and select value "Discount"
    And user click dropdown "Type *" and select value "Fix Amount"
    And user click add promo calculation "Loyalty Program Member"
    And user click combo box check box "Membership" and select value "Standard"
    And user input text box predefine "Promo Amount *" with value "2000"

    And stop
    And stop
