Feature: Report - Loyalty Program - Detail


#  check loyalty program summary page
  @web
  Scenario: Check Loyalty Program Detail Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Loyalty Program"
    When user select sub menu "Detail"
    Then user is on "loyalty program detail" page

#Download Specific Date
  @web
  Scenario: Detail LP Detail SD 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Loyalty Program"
    And user select sub menu "Detail"
    And user click combo box "Loyalty Program" and select value "PVS Loyalty"
    And user click dropdown "Period" and select value "Specific Date"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop

#Download Weekly
  @web
  Scenario: Detail LP Detail Weekly 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Loyalty Program"
    And user select sub menu "Detail"
    And user click combo box "Loyalty Program" and select value "PVS Loyalty"
    And user click dropdown "Period" and select value "Weekly"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop

#Download Monthly
  @web
  Scenario: Detail LP Detail Monthly 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Loyalty Program"
    And user select sub menu "Detail"
    And user click combo box "Loyalty Program" and select value "PVS Loyalty"
    And user click dropdown "Period" and select value "Monthly"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop