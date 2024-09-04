Feature: Report - Loyalty Program - Summary

#Download Specific Date
  @web
  Scenario: Detail LP Member
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
#   And user select sub menu "Loyalty Program"
    And user select sub menu "Member"
    And user click combo box "Loyalty Program" and select value "PVS Loyalty"
    And user input text box predefine "Date Time" with value "03-09-2024"
    And user click button "Download"
    And stop
