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
#    And user click button "Add Bank"
    And stop

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
#    And user click button "Add BNPL Type"
    And stop

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
#    And user click button "Cancel"
    And stop

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
#    And user click button "Cancel"
    And stop

# negative case add existing data
  @web
  Scenario: Add existing data
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Issuer"
    And user click buttonDrop "Add" and select value "Bank"
    And user input text box "Bank Name *" with value "JAGO"
    And user input text area "Description" with value "This is Jago Bank"
#    And user click button "Add Bank"
    And stop

# negative case not fill the required data
  @web
  Scenario: Do not fill the required data
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Issuer"
    And user click buttonDrop "Add" and select value "Bank"
    And user input text area "Description" with value "This is Jago Bank"
#    And user click button "Add Bank"
    And stop

