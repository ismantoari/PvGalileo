Feature: User Management - Group

#Add group
  @web
  Scenario: Add Group
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
    And user click dropdown "Reason" and select value "New Entry Data"
    And user click button "Add Group"
    And stop

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
    And user click dropdown "Reason" and select value "New Entry Data"
    And user click button "Cancel"
    And stop