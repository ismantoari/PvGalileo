Feature: Member - Group Member

# Check group member page
  @web
  Scenario: Check Group Member Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Member"
    When user select sub menu "Group Member"
    Then user is on "group member" page

# Check add group member page
  @web
  Scenario: Check Add Group Member Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Member"
    And user select sub menu "Group Member"
    And user click button "Add Group Member"
    Then user is on "add group member" page

# Add group member 1
  @web
  Scenario: Add Group Member 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "Member"
    And user select sub menu "Group Member"
    And user click button "Add Group Member"
    And user input text box "Group Name *" with value "PQA group"
    And user input text area "Group Description" with value "Desc in here"
    And user click dropdown "Gender" and select value "Male"
    And user click dropdown "Minimum Age" and select value "18"
    And user click dropdown "Maximum Age" and select value "25"
    And user click dropdown "Loyalty Program" and select value "PQA Loyalty"
    And user click dropdown "Membership" and select value "Silver"
    When user click button "Add Group Member"
    Then show alert pop up "Insert Member Group Success"

# Add group member 2
  @web
  Scenario: Add Group Member 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "Member"
    And user select sub menu "Group Member"
    And user click button "Add Group Member"
    And user input text box "Group Name *" with value "PQA group 2"
    And user input text area "Group Description" with value "Desc in here"
    And user click dropdown "Gender" and select value "Female"
    And user click dropdown "Minimum Age" and select value "15"
    And user click dropdown "Maximum Age" and select value "25"
    And user click dropdown "Loyalty Program" and select value "PQA Loyalty"
    And user click dropdown "Membership" and select value "Gold"
    When user click button "Add Group Member"
    Then show alert pop up "Insert Member Group Success"

# Edit Group Member
  @web
  Scenario: Edit group member
    Given user already login as administrator
    And user select language "English"
    And user select menu "Member"
    And user select sub menu "Group Member"
    And user search "PQA Group 2"
    And user click burger menu
    And user click list "Edit"
    And user input text box predefine "Group Name *" with value "PQA group 3"
    And user input text area predefine "Group Description" with value "this is just description"
    And user click dropdown "Gender" and select value "Male"
    And user click dropdown "Minimum Age" and select value "20"
    And user click dropdown "Maximum Age" and select value "30"
    And user click dropdown "Loyalty Program" and select value "Loyalty SQA"
    And user click dropdown "Membership" and select value "Silver Member"
    When user click button "Save Changes"
    Then show alert pop up "Update Member Group Success"

# Cancel Group Member
  @web
  Scenario: Cancel Group Member
    Given user already login as administrator
    And user select language "English"
    And user select menu "Member"
    And user select sub menu "Group Member"
    And user click button "Add Group Member"
    And user input text box "Group Name *" with value "PQA group"
    And user input text area "Group Description" with value "Desc in here"
    And user click dropdown "Gender" and select value "Male"
    And user click dropdown "Minimum Age" and select value "18"
    And user click dropdown "Maximum Age" and select value "25"
    And user click dropdown "Loyalty Program" and select value "PQA Loyalty"
    And user click dropdown "Membership" and select value "Silver"
    When user click button "Cancel"
    Then user is on "group member" page

# Duplicate Group Member
  @web
  Scenario: Duplicate Group Member
    Given user already login as administrator
    And user select language "English"
    And user select menu "Member"
    And user select sub menu "Group Member"
    And user click button "Add Group Member"
    And user input text box "Group Name *" with value "PQA group"
    And user input text area "Group Description" with value "Desc in here"
    And user click dropdown "Gender" and select value "Male"
    And user click dropdown "Minimum Age" and select value "18"
    And user click dropdown "Maximum Age" and select value "25"
    And user click dropdown "Loyalty Program" and select value "PQA Loyalty"
    And user click dropdown "Membership" and select value "Silver"
    When user click button "Add Group Member"
    Then show alert pop up "Member group name already exist"

# positive case search data
  @web
  Scenario: search Group Member
    Given user already login as administrator
    And user select language "English"
    And user select menu "Member"
    And user select sub menu "Group Member"
    When user search "PQA Group"
    Then stop

# Delete Group Member 1
  @web
  Scenario: Delete Group Member 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "Member"
    And user select sub menu "Group Member"
    And user search "PQA Group"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete Member Group Success"

    # Delete Group Member 2
  @web
  Scenario: Delete Group Member 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "Member"
    And user select sub menu "Group Member"
    And user search "PQA Group 3"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete Member Group Success"