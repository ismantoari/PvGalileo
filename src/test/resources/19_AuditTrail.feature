Feature: Audit Trail

#check audit trail
  @web
  Scenario: Check Audit Trail
    Given user already login as administrator
    And user select language "English"
    And user select menu "Audit Trail"
    And user input text box predefine "Date Time" with value "03-09-2024"
    And user click combo box "User Name" and select value "administrator"
    And user click button "Search"
    And stop
    And stop

#download audit trail
  @web
  Scenario: Download Audit Trail
    Given user already login as administrator
    And user select language "English"
    And user select menu "Audit Trail"
    And user input text box predefine "Date Time" with value "03-09-2024"
    And user click combo box "User Name" and select value "administrator"
    And user click button "Search"
    And user click button " CSV"
    And stop