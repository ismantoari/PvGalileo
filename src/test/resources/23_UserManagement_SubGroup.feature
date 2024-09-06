Feature: User Management - Subgroup

#add subgroup
  @web
  Scenario: Add Subgroup
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Subgroup"
    #subgroup detail
    And user input text box "Subgroup Name *" with value "PQA Subgroup"
    And user click combo box "Group Name *" and select value "test desc"
    And user input text area "Subgroup Description" with value "ini desc"
    #Privilege List
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "New Entry Data"
    And user click button "Add Subgroup"
    And stop

#cancel add subgroup
  @web
  Scenario: Add Subgroup
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Subgroup"
    #subgroup detail
    And user input text box "Subgroup Name *" with value "PQA Subgroup"
    And user click combo box "Group Name *" and select value "test desc"
    And user input text area "Subgroup Description" with value "ini desc"
    #Privilege List
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "New Entry Data"
    And user click button "Cancel"
    And stop
