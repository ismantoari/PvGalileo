Feature: Audit Trail
  
#  check page audit trail
  @web
  Scenario: Check Audit Trail Page
    Given user already login as administrator
    And user select language "English"
    When user select menu "Audit Trail"
    Then user is on "audit trail" page
  
#check audit trail
  @web
  Scenario: Check Audit Trail
    Given user already login as administrator
    And user select language "English"
    And user select menu "Audit Trail"
    And user input text box predefine "Date Time" with value "03-09-2024"
    And user click combo box "User Name" and select value "administrator"
    When user click button "Search"
    Then stop
    Then stop

#download audit trail
  @web
  Scenario: Download Audit Trail
    Given user already login as administrator
    And user select language "English"
    And user select menu "Audit Trail"
    And user input text box predefine "Date Time" with value "03-09-2024"
    And user click combo box "User Name" and select value "administrator"
    And user click button "Search"
    When user click button " CSV"
    Then stop