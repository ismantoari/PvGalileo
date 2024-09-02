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
    And user click combo box "Loyalty Program *" and select value"PVS Loyalty"
    And user input text box "Promo Name *" with value "QA Promo"

    And stop
    And stop
