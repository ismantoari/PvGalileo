Feature: Payment Issuer - BIN

# check BIN page
  @web
  Scenario: Check BIN Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    When user select sub menu "BIN"
    Then user is on "BIN" page

#  check add BIN page
  @web
  Scenario: Check Add BIN Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    When user click button "Add BIN"
    Then user is on "add BIN" page

# positive case card type other - delete
  @web
  Scenario: Add BIN
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user click button "Add BIN"
    And user click combo box "Issuer Name *" and select value "Mandiri"
    And user click dropdown "Card Type *" and select value "Credit"
    And user input text box "BIN Label *" with value "Mandiri Visa Platinum"
    And user input text box "BIN *" with value "556887"
    When user click button "Add BIN"
    Then show alert pop up "Insert BIN success"
    Then verify created new loyalty name "Mandiri Visa Platinum"

# positive case card type credit - edit
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
    And user input text box "BIN *" with value "558611"
    When user click button "Add BIN"
    Then show alert pop up "Insert BIN Success"
    Then verify created new loyalty name "BRI Visa Gold"

#Edit BIN
  @web
    Scenario: Edit BIN
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user search "558611"
    And user click burger menu
    And user click list "Edit"
    And stop
    And user click combo box "Issuer Name *" and select value "BRI"
    And stop
    And user click dropdown "Card Type *" and select value "Other"
    And user input text box predefine "BIN Label *" with value "BRI Mastercard Platinum"
    And user input text box predefine "BIN *" with value "334011"
    When user click button "Save Changes"
    Then show alert pop up "Update BIN Success"


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
    When user click button "Cancel"
    Then user is on "BIN" page

# positive case search data
  @web
  Scenario: search BIN
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    When user search "558611"
    Then stop

# positive case filter issuer name
  @web
  Scenario: Filter BIN
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    When user click dropdown "Issuer Name" and select value "Mandiri"
    Then stop

#Delete BIN
  @web
  Scenario: Delete BIN
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user search "558611"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete BIN success"


# Negative case card type other already exists
  @web
  Scenario: Add Existing BIN Range
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user click button "Add BIN"
    And user click combo box "Issuer Name *" and select value "Mandiri"
    And user click dropdown "Card Type *" and select value "Credit"
    And user input text box "BIN Label *" with value "Mandiri Visa Platina"
    And user input text box "BIN *" with value "558677971"
    When user click button "Add BIN"
    Then show alert pop up "BIN already registered"


# negative case BIN less than 6
  @web
  Scenario: Add BIN less than 6 long
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user click button "Add BIN"
    And user click combo box "Issuer Name *" and select value "Mandiri"
    And user click dropdown "Card Type *" and select value "Credit"
    And user input text box "BIN Label *" with value "BRI Visa Gold"
    And user input text box "BIN *" with value "22"
    When user click button "Add BIN"
    Then show alert pop up "Invalid parameter"

# negative case all empty
  @web
  Scenario: Empty Data Add BIN
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user click button "Add BIN"
    When user click button "Add BIN"
    Then show error mandatory of "BIN Label *" with message "BIN Label is a required field"

# Edit BIN when more than 2 BIN on list
  @web
  Scenario: Edit BIN when more than 2 BIN on list
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "BIN"
    And user search "BCA"
    And user click BIN burger menu of "384950"
    And user click list "Edit"
    And stop