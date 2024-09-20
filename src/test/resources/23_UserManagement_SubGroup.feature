Feature: User Management - Subgroup

# check subgroup page
  @web
  Scenario: Check Subgroup Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    When user select sub menu "Subgroup"
    Then user is on "subgroup" page
    
# check add subgroup page
  @web
  Scenario: Check Add Subgroup Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Subgroup"
    When user click button "Add Subgroup"
    Then user is on "add subgroup" page
  
#add subgroup 1
  @web
  Scenario: Add Subgroup 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Subgroup"
    And user click button "Add Subgroup"
    #subgroup detail
    And user input text box "Subgroup Name *" with value "PQA Subgroup 1"
    And user click combo box "Group Name *" and select value "test desc"
    And user input text area "Subgroup Description" with value "ini desc"
    #Privilege List
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "New Entry Data"
    When user click button "Add Subgroup"
    Then show alert pop up "Insert subgroup list success"

#add subgroup 2
  @web
  Scenario: Add Subgroup 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Subgroup"
    And user click button "Add Subgroup"
    #subgroup detail
    And user input text box "Subgroup Name *" with value "PQA Subgroup 2"
    And user click combo box "Group Name *" and select value "test desc"
    And user input text area "Subgroup Description" with value "ini desc"
    #Privilege List
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "New Entry Data"
    When user click button "Add Subgroup"
    Then show alert pop up "Insert subgroup list success"

# edit subgroup
  @web
  Scenario: Edit Subgroup
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Subgroup"
    #subgroup detail
    And user input text box "Subgroup Name *" with value "PQA Subgrouptest"
    And user click combo box "Group Name *" and select value "Group lvl1"
    And user input text area "Subgroup Description" with value "this is desc"
    #Privilege List
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "change request"
    When user click button "Save Changes"
    Then show alert pop up "Update subgroup list success"

#cancel add subgroup
  @web
  Scenario: Cancel Add Subgroup
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Subgroup"
    #subgroup detail
    And user input text box "Subgroup Name *" with value "PQA Subgroup 1"
    And user click combo box "Group Name *" and select value "test desc"
    And user input text area "Subgroup Description" with value "ini desc"
    #Privilege List
    And user click button "Select All"
    #reason
    And user click dropdown "Reason" and select value "New Entry Data"
    When user click button "Cancel"
    Then user is on "subgroup" page

# delete Subgroup 1
  @web
  Scenario: Delete Subgroup 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Subgroup"
    And user search "PQA Subgrouptest"
    And user click burger menu
    And user click list "Delete"
    And user click dropdown "Reason" and select value "change request"
    When user click button "Delete"
    Then show alert pop up "Delete subgroup list success"

# delete Subgroup 2
  @web
  Scenario: Delete Subgroup 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "Subgroup"
    And user search "PQA Subgroup 1"
    And user click burger menu
    And user click list "Delete"
    And user click dropdown "Reason" and select value "change request"
    When user click button "Delete"
    Then show alert pop up "Delete subgroup list success"