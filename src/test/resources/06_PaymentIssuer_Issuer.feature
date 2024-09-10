Feature: Payment Issuer - Issuer

# Check Bank page
  @web
  Scenario: Check Bank Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    When user select sub menu "Issuer"
    Then user is on "issuer" page

    # Check Bank Add page
  @web
  Scenario: Check Bank Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    When user select sub menu "Issuer"
    And user click buttonDrop "Add" and select value "Bank"
    Then user is on "add issuer" page

# add Bank
  @web
  Scenario: Add Bank
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Issuer"
    And user click buttonDrop "Add" and select value "Bank"
    And user input text box "Bank Name *" with value "JAGO"
    And user input text area "Description" with value "This is Jago Bank"
    When user click button "Add Bank"
    Then show alert pop up "Insert issuer list success"

# add BNPL
  @web
  Scenario: Add BNPL
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Issuer"
    And user click buttonDrop "Add" and select value "BNPL Type"
    And user input text box "BNPL Type Name *" with value "Kredivisa"
    And user input text area "Description" with value "This is Kredivisa"
    And user click button "Add BNPL Type"
    Then show alert pop up "Insert issuer list success"

# Edit Bank
  @web
  Scenario: Edit Bank
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Issuer"
    And user search "JAGO"
    And user click burger menu
    And user click list "Edit"
    And user input text box predefine "Bank Name *" with value "Superbank"
    And user input text area predefine "Description" with value "This is Superbank Bank"
    And user click button "Save Changes"
    Then show alert pop up "Update issuer list success"

# Edit BNPL
  @web
  Scenario: Edit BNPL
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Issuer"
    And user search "JAGO"
    And user click burger menu
    And user click list "Edit"
    And user input text box predefine "BNPL Type Name *" with value "Kreditinaja"
    And user input text area predefine "Description" with value "This is Kreditinaja"
    And user click button "Save Changes"
    Then show alert pop up "Update issuer list success"

# cancel add Bank
  @web
  Scenario: Cancel Add Bank
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Issuer"
    And user click buttonDrop "Add" and select value "Bank"
    And user input text box "Bank Name *" with value "JAGO"
    And user input text area "Description" with value "This is Jago Bank"
    When user click button "Cancel"
    Then user is on "issuer" page

# cancel add BNPL
  @web
  Scenario: Cancel Add BNPL
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Issuer"
    And user click buttonDrop "Add" and select value "BNPL Type"
    And user input text box "BNPL Type Name *" with value "Kredivisa"
    And user input text area "Description" with value "This is Kredivisa"
    When user click button "Cancel"
    Then user is on "issuer" page

# negative case add existing data
  @web
  Scenario: Add existing data
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Issuer"
    And user click buttonDrop "Add" and select value "Bank"
    And user input text box "Bank Name *" with value "Superbank"
    And user input text area "Description" with value "This is Superbank Bank"
    When user click button "Add Bank"
    Then show alert pop up "Issuer Already Exists"

# negative case not fill the required data
  @web
  Scenario: Do not fill the required data
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Issuer"
    And user click buttonDrop "Add" and select value "Bank"
    And user input text area "Description" with value "This is Jago Bank"
    When user click button "Add Bank"
    Then show alert pop up "invalid parameter"
    
# Delete Bank
  @web
  Scenario: Delete Bank
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Issuer"
    And user search "Superbank"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete issuer list success"

# Delete Bank
  @web
  Scenario: Delete BNPL
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Issuer"
    And user search "Kreditinaja"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete issuer list success"
