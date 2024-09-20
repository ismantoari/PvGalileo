Feature: Transaction History

# check transaction history page
  @web
  Scenario: Check Transaction Detail
    Given user already login as administrator
    And user select language "English"
    When user select menu "Transaction History"
    Then user is on "transaction history" page
    
#  search transaction detail
  @web
  Scenario: search Transaction Detail
    Given user already login as administrator
    And user select language "English"
    And user select menu "Transaction History"
    And user input text box predefine "Transaction Date" with value "03-09-2024"
    And user click combo box "Merchant" and select value "All"
    When user click button "Search"
    Then stop

# filter transaction detail
  @web
  Scenario: filter Transaction Detail
    Given user already login as administrator
    And user select language "English"
    And user select menu "Transaction History"
    And user input text box predefine "Transaction Date" with value "03-09-2024"
    And user click combo box "Merchant" and select value "All"
    And user click button "Search"
    When user click dropdown "transactionType" and select value "Sale Galileo"
    Then stop