Feature: Loyalty Program - Promo

  @web
  Scenario: Add new Promo
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user click button "Add Promo"
    #show preview
    #add banner
    And user click Dropdown "Loyalty Program *" with value "PVS Loyalty"
    And user input text box "Promo Name *" with value "PVS Loyalty Promo"
    And user input text box "Promo Code *" with value "PVSPromo12"
    And user input text box "Program Fund *" with value "100000000"
    And user input text area "Description, Additional Terms & Conditions" with value "desc"
    #publish promo
#    And user click dropdown "Promo Type *" with value "Discount"
#    And user click dropdown "Type *" with value "Fix Amount"
    And user click button "Loyalty Program Member"
    And user input text box "Promo Amount *" with value "Rp50.000"
    And user input text box "Minimum Transaction *" with value "Rp100.000"
    And user input text box "Maximum Transaction *" with value "Rp150.000"
    And user click button "Galileo Member"
    
    And stop
