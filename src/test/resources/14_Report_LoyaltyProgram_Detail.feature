Feature: Report - Loyalty Program - Summary

#Download Specific Date
  @web
  Scenario: Detail LP Detail SD
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
#   And user select sub menu "Loyalty Program"
    And user select sub menu "Detail"
    And user click combo box "Loyalty Program" and select value "PVS Loyalty"
    And user click dropdown "Period" and select value "Specific Date"
    And user input text box predefine "Date Time" with value "03-09-2024"
    And user click button "Download"
    And stop

#Download Weekly
  @web
  Scenario: Detail LP Detail Weekly
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
#   And user select sub menu "Loyalty Program"
    And user select sub menu "Detail"
    And user click combo box "Loyalty Program" and select value "PVS Loyalty"
    And user click dropdown "Period" and select value "Weekly"
    And user input text box predefine "Date Time" with value "03-09-2024"
    And user click button "Download"
    And stop

#Download Monthly
  @web
  Scenario: Detail LP Detail Monthly
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
#   And user select sub menu "Loyalty Program"
    And user select sub menu "Detail"
    And user click combo box "Loyalty Program" and select value "PVS Loyalty"
    And user click dropdown "Period" and select value "Monthly"
    And user input text box predefine "Date Time" with value "03-09-2024"
    And user click button "Download"
    And stop