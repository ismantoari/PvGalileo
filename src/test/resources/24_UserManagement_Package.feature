Feature: User Management - Package

#add package
  @web
  Scenario: Add Package
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Package"
    And user click button "And Package"
    #package detail
    And user input text box "Package Name *" with value "PQA Package"
    And user input text area "Package Description" with value "ini desc"
    #privilege list
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "New Entry Data"
    And user click button "Add Package"
    And stop

#cancel add package
  @web
  Scenario: Cancel Add Package
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Package"
    And user click button "And Package"
    #package detail
    And user input text box "Package Name *" with value "PQA Package"
    And user input text area "Package Description" with value "ini desc"
    #privilege list
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "New Entry Data"
    And user click button "Cancel"
    And stop