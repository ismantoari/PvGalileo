Feature: User Management - Group

# Check user management - group page
  @web
  Scenario: Check Group Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    When user select sub menu "Group"
    Then user is on "group" page

# Check user management - add group page
  @web
  Scenario: Check add Group Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Group"
    When user click button "Add Group"
    Then user is on "add group" page

#Add group 1
  @web
  Scenario: Add Group 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Group"
    And user click button "Add Group"
    #group detail
    And user input text box "Group Name *" with value "PQA Group"
    And user click combo box "Package *" and select value "test"
    And user click dropdown "Group Status" and select value "Active"
    And user input text area "Group Description" with value "ini description"
    #data filter
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Add Group"
    Then show alert pop up "Insert group list success"

#Add group 2
  @web
  Scenario: Add Group 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Group"
    And user click button "Add Group"
    #group detail
    And user input text box "Group Name *" with value "PQA Group 2"
    And user click combo box "Package *" and select value "Merchant"
    And user click dropdown "Group Status" and select value "Active"
    And user input text area "Group Description" with value "ini description"
    #data filter
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Add Group"
    Then show alert pop up "Insert group list success"

# edit group
  @web
  Scenario: Edit Group
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Group"
    And user search "PQA Group"
    And user click burger menu
    And user click list "Edit"
    #group detail
    And user input text box "Group Name *" with value "PQA Grouptest"
    And user click combo box "Package *" and select value "Merchant"
    And user click dropdown "Group Status" and select value "Inactive"
    And user input text area predefine "Group Description" with value "this is description"
    #data filter
    #reason
    And user click dropdown "Reason" and select value "change request"
    When user click button "Save Changes"
    Then show alert pop up "Update group list success"

#Cancel Add group
  @web
  Scenario: Cancel Add Group
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Group"
    And user click button "Add Group"
    #group detail
    And user input text box "Group Name *" with value "PQA Group"
    And user click combo box "Package *" and select value "test"
    And user click dropdown "Group Status" and select value "Active"
    And user input text area "Group Description" with value "ini description"
    #data filter
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Cancel"
    Then user is on "group" page

#Add Existing group
  @web
  Scenario: Add Existing Group
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Group"
    And user click button "Add Group"
    #group detail
    And user input text box "Group Name *" with value "PQA Group 2"
    And user click combo box "Package *" and select value "Merchant"
    And user click dropdown "Group Status" and select value "Active"
    And user input text area "Group Description" with value "ini description"
    #data filter
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Add Group"
    Then show alert pop up "Group already exists"

# delete Group 1
  @web
  Scenario: Delete Group 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Group"
    And user search "PQA Grouptest"
    And user click burger menu
    And user click list "Delete"
    And user click dropdown "Reason" and select value "change request"
    When user click button "Delete"
    Then show alert pop up "Delete group list success"

# delete group 2
  @web
  Scenario: Delete Group 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Group"
    And user search "PQA Group 2"
    And user click burger menu
    And user click list "Delete"
    And user click dropdown "Reason" and select value "change request"
    When user click button "Delete"
    Then show alert pop up "Delete group list success"