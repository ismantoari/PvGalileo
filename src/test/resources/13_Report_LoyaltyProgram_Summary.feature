Feature: Report - Loyalty Program - Summary

#  check loyalty program summary page
  Scenario: Check Loyalty Program Summary Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Loyalty Program"
    When user select sub menu "Summary"
    Then user is on "loyalty program summary" page

#Download Specific Date
  @web
  Scenario: Detail LP Summary Daily
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Loyalty Program"
    And user select sub menu "Summary"
    And user click combo box "Loyalty Program" and select value "Urban Forest loyalty"
    And user click dropdown "Period" and select value "Specific Date"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop

#Download Weekly
  @web
  Scenario: Detail LP Summary Weekly
    Given user already login as administrator
    And user select language "English"
    And user click sub menu report "Loyalty Program"
    And user select sub menu "Summary"
    And user click combo box "Loyalty Program" and select value "Urban Forest loyalty"
    And user click dropdown "Period" and select value "Weekly"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop

#Download Monthly
  @web
  Scenario: Detail LP Summary Monthly
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Loyalty Program"
    And user select sub menu "Summary"
    And user click combo box "Loyalty Program" and select value "Urban Forest loyalty"
    And user click dropdown "Period" and select value "Monthly"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop