Feature: Feature - Merchant Type

# check merchant type page
  @web
  Scenario: Check Merchant Type Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Config"
    When user select sub menu "Merchant Type" 
    Then user is on "merchant type" page

# check add merchant type page
  @web
  Scenario: Check Add Merchant Type Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Config"
    And user select sub menu "Merchant Type"
    When user click button "Add Merchant Type"
    Then user is on "add merchant type" page

# add merchant type 1
  @web
  Scenario: Add Merchant Type - Edit
    Given user already login as administrator
    And user select language "English"
    And user select menu "Config"
    And user select sub menu "Merchant Type"
    And user click button "Add Merchant Type"
    And user input text box "Merchant Type Name *" with value "Beverage Edit"
    And user input text area "Description" with value "this is for edit case"
    When user click button add merchant type
    Then show alert pop up "Insert Merchant type success"

# add merchant type 2
  @web
  Scenario: Add Merchant Type - Delete
    Given user already login as administrator
    And user select language "English"
    And user select menu "Config"
    And user select sub menu "Merchant Type"
    And user click button "Add Merchant Type"
    And user input text box "Merchant Type Name *" with value "Beverage Delete"
    And user input text area "Description" with value "this is for delete case"
    When user click button add merchant type
    Then show alert pop up "Insert Merchant type success"

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
    Then user is on "merchant type" page

# edit merchant type
  @web
  Scenario: Edit Merchant Type
    Given user already login as administrator
    And user select language "English"
    And user select menu "Config"
    And user select sub menu "Merchant Type"
    And user search "Beverage Edit"
    And user click burger menu
    And user click list "Edit"
    And user input text box predefine "Merchant Type Name *" with value "Beverage"
    And user input text area predefine "Description" with value "this is desc"
    When user click button "Save Changes"
    Then show alert pop up "Edit Merchant type success"

# delete merchant type
  @web
  Scenario: Delete Merchant Type
    Given user already login as administrator
    And user select language "English"
    And user select menu "Config"
    And user select sub menu "Merchant Type"
    And user search "Beverage Delete"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete Merchant type success"