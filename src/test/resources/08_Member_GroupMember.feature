Feature: Member - Group Member

# positive case card type other
  @web
  Scenario: Add Group
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
    And user click dropdown "Loyalty Program" and select value "PVS Loyalty"
    And user click dropdown "Membership" and select value "Standard"
#    And user click button "Add Group Member"
    And stop

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
    And user click dropdown "Loyalty Program" and select value "PVS Loyalty"
    And user click dropdown "Membership" and select value "Standard"
#    And user click button "Add Group Member"
    And stop

# positive case search data
  @web
  Scenario: search Group Member
    Given user already login as administrator
    And user select language "English"
    And user select menu "Member"
    And user select sub menu "Group Member"
    And user input text box "Search" with value "PQA Group"
    And stop