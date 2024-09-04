Feature: Transaction History

  @web
  Scenario: Check Transaction Detail
    Given user already login as administrator
    And user select language "English"
    And user select menu "Transaction History"
    And user input text box predefine "Transaction Date" with value "03-09-2024"
    And user click combo box "Merchant" and select value "All"
    And user click button "Search"
    And stop