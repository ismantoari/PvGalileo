Feature: Report - Merchant - Detail

#  check merchant detail page
  @web
  Scenario: Check Merchant Detail Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Merchant"
    When user select sub menu "Detail"
    Then user is on "merchant detail" page

#Download Specific Date
  @web
  Scenario: Detail LP Detail SD
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Merchant"
    And user select sub menu "Detail"
    And user click combo box "Merchant" and select value "Butler's Steak"
    And user click dropdown "Period" and select value "Specific Date"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop

#Download Weekly
  @web
  Scenario: Detail LP Detail Weekly Merchant
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Merchant"
    And user select sub menu "Detail"
    And user click combo box "Merchant" and select value "Butler's Steak"
    And user click dropdown "Period" and select value "Weekly"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop

#Download Monthly
  @web
  Scenario: Detail LP Detail Monthly Merchant
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Merchant"
    And user select sub menu "Detail"
    And user click combo box "Merchant" and select value "Butler's Steak"
    And user click dropdown "Period" and select value "Monthly"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop