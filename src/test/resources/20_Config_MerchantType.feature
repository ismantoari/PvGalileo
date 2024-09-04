Feature: Feature - Merchant Type

# add merchant type
  @web
  Scenario: Add Merchant Type
    Given user already login as administrator
    And user select language "English"
    And user select menu "Config"
    And user select sub menu "Merchant Type"
    And user click button "Add Merchant Type"
    And user input text box "Merchant Type Name *" with value "Beverage"
    And user input text area "Description" with value "this is desc"
    And user click button "Add Merchant Type"
    And stop

# cancel add merchant
  @web
  Scenario: Cancel Add Merchant Type
    Given user already login as administrator
    And user select language "English"
    And user select menu "Config"
    And user select sub menu "Merchant Type"
    And user click button "Add Merchant Type"
    And user input text box "Merchant Type Name *" with value "Beverage"
    And user input text area "Description" with value "this is desc"
    And user click button "Cancel"
    And stop