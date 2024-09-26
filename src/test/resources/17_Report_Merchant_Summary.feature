Feature: Report - Merchant - Summary

#  check merchant summary page
  @web
  Scenario: Check Merchant Summary Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Merchant"
    When user select sub menu "Summary"
    Then user is on "merchant summary" page

#Download Specific Date
  @web
  Scenario: Detail LP Summary SD
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Merchant"
    And user select sub menu "Summary"
    And user click combo box "Merchant" and select value "Butler's Steak"
    And user click dropdown "Period" and select value "Specific Date"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop

#Download Weekly
  @web
  Scenario: Detail LP Summary Weekly 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Merchant"
    And user select sub menu "Summary"
    And user click combo box "Merchant" and select value "Butler's Steak"
    And user click dropdown "Period" and select value "Weekly"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop

#Download Monthly
  @web
  Scenario: Detail LP Summary Monthly 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Merchant"
    And user select sub menu "Summary"
    And user click combo box "Merchant" and select value "Butler's Steak"
    And user click dropdown "Period" and select value "Monthly"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop