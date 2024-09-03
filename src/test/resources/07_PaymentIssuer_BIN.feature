Feature: Payment Issuer - BIN

# positive case card type other
  @web
  Scenario: Add BIN
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user click button "Add BIN"
    And user click combo box "Issuer Name *" and select value "Mandiri"
    And user click dropdown "Card Type *" and select value "Other"
    And user input text box "BIN Label *" with value "Mandiri Visa Platinum"
    And user input text box "BIN *" with value "5586"
    And user click button "Add BIN"
    And stop

# positive case card type credit
  @web
  Scenario: Add BIN 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user click button "Add BIN"
    And user click combo box "Issuer Name *" and select value "Mandiri"
    And user click dropdown "Card Type *" and select value "Credit"
    And user input text box "BIN Label *" with value "BRI Visa Gold"
    And user input text box "BIN *" with value "5586"
    And user click button "Add BIN"
    And stop

#Edit BIN

# Cancel add BIN
  @web
  Scenario: Cancel Add BIN
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user click button "Add BIN"
    And user click combo box "Issuer Name *" and select value "Mandiri"
    And user click dropdown "Card Type *" and select value "Credit"
    And user input text box "BIN Label *" with value "BRI Visa Gold"
    And user input text box "BIN *" with value "558677971"
    And user click button "cancel"
    And stop

# positive case search data
  @web
  Scenario: search BIN
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user input text box "Search" with value "5586"
    And stop

# positive case filter issuer name
  @web
  Scenario: Filter BIN
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user click dropdown "Issuer Name" and select value "Mandiri"
    And stop
    And stop

#Delete BIN

# Negative case card type other already exists
  @web
  Scenario: Add Existing BIN Name
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user click button "Add BIN"
    And user click combo box "Issuer Name *" and select value "Mandiri"
    And user click dropdown "Card Type *" and select value "Other"
    And user input text box "BIN Label *" with value "Mandiri Visa Platinum"
    And user input text box "BIN *" with value "5588"
    And user click button "Add BIN"
    Then show alert pop up "Data Already Exist!"
    And stop

# Negative case card type other already exists
  @web
  Scenario: Add Existing BIN Range
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user click button "Add BIN"
    And user click combo box "Issuer Name *" and select value "Mandiri"
    And user click dropdown "Card Type *" and select value "Other"
    And user input text box "BIN Label *" with value "Mandiri Visa Platina"
    And user input text box "BIN *" with value "5586"
    And user click button "Add BIN"
    Then show alert pop up "Data Already Exist!"
    And stop

# negative case BIN more than 8
#  @web
#  Scenario: Add BIN more than 8 long
#    Given user already login as administrator
#    And user select language "English"
#    And user select menu "Payment Issuer"
#    And user select sub menu "BIN"
#    And user click button "Add BIN"
#    And user click combo box "Issuer Name *" and select value "Mandiri"
#    And user click dropdown "Card Type *" and select value "Credit"
#    And user input text box "BIN Label *" with value "BRI Visa Gold"
#    And user input text box "BIN *" with value "558677971"
#    And user click button "Add BIN"
#    Then show alert pop up "BIN can't more than 8!"
#    And stop

# negative case all empty
  @web
  Scenario: Empty Data Add BIN
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user click button "Add BIN"
    And user click button "Add BIN"
    And stop

#delet BIN in use