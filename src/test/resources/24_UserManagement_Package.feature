Feature: User Management - Package


#check package page
  @web
  Scenario: Check Package Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    When user select sub menu "Package"
    Then user is on "package" page

#check add package page
  @web
  Scenario: Check Add Package Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Package"
    When user click button "Add Package"
    Then user is on "add package" page

#add package 1
  @web
  Scenario: Add Package 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Package"
    And user click button "Add Package"
    #package detail
    And user input text box "Package Name *" with value "PQA Package 1"
    And user input text area "Package Description" with value "ini desc"
    #privilege list
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Add Package"
    Then show alert pop up "Insert package list success"


#add package 2
  @web
  Scenario: Add Package 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Package"
    And user click button "Add Package"
    #package detail
    And user input text box "Package Name *" with value "PQA Package 2"
    And user input text area "Package Description" with value "ini desc"
    #privilege list
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Add Package"
    Then show alert pop up "Insert package list success"

#edit package
  @web
  Scenario: Edit Package
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Package"
    And user search "PQA Package 1"
    And user click burger menu
    And user click list "Edit"
    #package detail
    And user input text box predefine "Package Name *" with value "PQA Packagetest"
    And user input text area predefine "Package Description" with value "this is desc"
    #privilege list
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "change request"
    When user click button "Save Changes"
    Then show alert pop up "Update package list success"
    
#cancel add package
  @web
  Scenario: Cancel Add Package
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Package"
    And user click button "Add Package"
    #package detail
    And user input text box "Package Name *" with value "PQA Package"
    And user input text area "Package Description" with value "ini desc"
    #privilege list
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Cancel"
    Then user is on "package" page

#package already exists
  @web
  Scenario: Package already exists
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Package"
    And user click button "Add Package"
    #package detail
    And user input text box "Package Name *" with value "PQA Package 2"
    And user input text area "Package Description" with value "ini desc"
    #privilege list
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Add Package"
    Then show alert pop up "Package already exists"

# delete Subgroup 1
  @web
  Scenario: Delete Package 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Package"
    And user search "PQA Packagetest"
    And user click burger menu
    And user click list "Delete"
    And user click dropdown "Reason" and select value "change request"
    When user click button "Delete"
    Then show alert pop up "Delete package list success"

# delete Subgroup 2
  @web
  Scenario: Delete Package 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Package"
    And user search "PQA Package 2"
    And user click burger menu
    And user click list "Delete"
    And user click dropdown "Reason" and select value "change request"
    When user click button "Delete"
    Then show alert pop up "Delete package list success"