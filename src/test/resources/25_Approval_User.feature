Feature: Approval - User

#  check approval page
  @web
  Scenario: Check approval Page
  Given user already login as administrator
  And user select language "English"
  And user select menu "Approval"
  When user select sub menu "User"
  Then user is on "approval user" page
  
#check verify approval page
  @web
  Scenario: Check approval Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Approval"
    And user select sub menu "User"
    And user click dropdown "Request Status" and select value "PENDING"
    When user click list "View detail"
    Then user is on "verify approval user" page
  
#  verify approval
#  decline approval
#  cancel approval