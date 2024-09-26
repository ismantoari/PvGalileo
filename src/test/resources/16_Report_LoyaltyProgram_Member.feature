Feature: Report - Loyalty Program - Member

#  check loyalty program Member page
  @web
  Scenario: Check Loyalty Program Member Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Loyalty Program"
    When user select sub sub menu "Member"
    Then user is on "loyalty program member" page

#Download Specific Date
  @web
  Scenario: Detail LP Member
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Loyalty Program"
    And user select sub sub menu "Member"
    And user click combo box "Loyalty Program" and select value "PVS Loyalty"
    And user input text box predefine "Date Time" with value "03-09-2024"
    When user click button "Download"
    Then stop
