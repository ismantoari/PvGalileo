Feature: Payment Issuer - Payment Method

# add Payment Method Bank
  @web
  Scenario: Add Payment Method Bank
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user click buttonDrop "Add" and select value "Bank"
    #Payment Method Detail
    And user click combo box "Bank Name *" and select value "Mandiri"
    And user input text box "Payment Method Name *" with value "PQAPayment"
    And user click dropdown "Payment Method Type" and select value "Card"
    And user input text area "Description" with value "description in here"
    #Payment Method PIC
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Add Payment Method"
    Then show alert pop up "Insert payment method success"

# add Payment Method QRIS Type
  @web
  Scenario: Add Payment Method QRIS
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user click buttonDrop "Add" and select value "QRIS Type"
    #Payment Method Detail
    And user click dropdown "QRIS" and select value "AstraPay"
    And user input text box "Payment Method Name *" with value "PQAPayment"
    And user input text area "Description" with value "description in here"
    #Payment Method PIC
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Add Payment Method"
    Then show alert pop up "Insert payment method success"


# add Payment Method BNPL Type
  @web
  Scenario: Add Payment Method BNPL
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user click buttonDrop "Add" and select value "BNPL Type"
    #Payment Method Detail
    And user click dropdown "BNPL" and select value "Kredivo"
    And user input text box "Payment Method Name *" with value "PQAPayment"
    And user input text area "Description" with value "description in here"
    #Payment Method PIC
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Add Payment Method"
    Then show alert pop up "Insert payment method success"


# Cancel add Payment Method Bank
  @web
  Scenario: Cancel Add Payment Method Bank
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user click buttonDrop "Add" and select value "Bank"
    #Payment Method Detail
    And user click combo box "Bank Name *" and select value "Mandiri"
    And user input text box "Payment Method Name *" with value "PQAPayment"
    And user click dropdown "Payment Method Type" and select value "Card"
    And user input text area "Description" with value "description in here"
    #Payment Method PIC
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Cancel"
    Then user is on "payment method" page

# Cancel add Payment Method QRIS Type
  @web
  Scenario: Cancel Add Payment Method QRIS
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user click buttonDrop "Add" and select value "QRIS Type"
    #Payment Method Detail
    And user click dropdown "QRIS" and select value "AstraPay"
    And user input text box "Payment Method Name *" with value "PQAPayment"
    And user input text area "Description" with value "description in here"
    #Payment Method PIC
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Cancel"
    Then user is on "payment method" page

# Cancel add Payment Method BNPL Type
  @web
  Scenario: Add Existing Data BNPL
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user click buttonDrop "Add" and select value "QRIS Type"
    #Payment Method Detail
    And user click dropdown "BNPL" and select value "Kredivo"
    And user input text box "Payment Method Name *" with value "PQAPayment"
    And user input text area "Description" with value "description in here"
    #Payment Method PIC
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Cancel"
    Then user is on "payment method" page

# add existing Payment Method Bank
  @web
  Scenario: Add Existing Data Bank
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user click buttonDrop "Add" and select value "Bank"
    #Payment Method Detail
    And user click combo box "Bank Name *" and select value "Mandiri"
    And user input text box "Payment Method Name *" with value "PQAPayment"
    And user click dropdown "Payment Method Type" and select value "Card"
    And user input text area "Description" with value "description in here"
    #Payment Method PIC
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Add Payment Method"
    Then show alert pop up "Payment method already exists"

# add existing Payment Method QRIS Type
  @web
  Scenario: Add Existing Data QRIS
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user click buttonDrop "Add" and select value "QRIS Type"
    #Payment Method Detail
    And user click dropdown "QRIS" and select value "AstraPay"
    And user input text box "Payment Method Name *" with value "PQAPayment"
    And user input text area "Description" with value "description in here"
    #Payment Method PIC
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Add Payment Method"
    Then show alert pop up "Payment method already exists"

# Edit Payment Method Bank
  @web
  Scenario: Edit BNPL
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user search "Mandiri"
    And user click burger menu
    And user click list "Edit"
    And user click combo box "Bank Name *" and select value "Mandiri"
    And user input text box "Payment Method Name *" with value "PQA Bank"
    And user click dropdown "Payment Method Type" and select value "Card"
    And user input text area "Description" with value "description Bank"

    When user click button "Save Changes"
    Then show alert pop up "Update payment method success"

# Edit Payment Method QRIS
  @web
  Scenario: Edit BNPL
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user search "Mandiri"
    And user click burger menu
    And user click list "Edit"
    And user click dropdown "QRIS" and select value "AstraPay"
    And user input text box "Payment Method Name *" with value "PQA QRIS"
    And user input text area "Description" with value "description QRIS"

    When user click button "Save Changes"
    Then show alert pop up "Update payment method success"

# Edit Payment Method BNPL
  @web
  Scenario: Edit BNPL
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user search "Mandiri"
    And user click burger menu
    And user click list "Edit"
    And user click dropdown "BNPL" and select value "Kredivo"
    And user input text box "Payment Method Name *" with value "PQA BNPL"
    And user input text area "Description" with value "description BNPL"

    When user click button "Save Changes"
    Then show alert pop up "Update payment method success"
    
# add existing Payment Method BNPL Type
  @web
  Scenario: Add Existing Data BNPL
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user click buttonDrop "Add" and select value "QRIS Type"
    #Payment Method Detail
    And user click dropdown "BNPL" and select value "Kredivo"
    And user input text box "Payment Method Name *" with value "PQAPayment"
    And user input text area "Description" with value "description in here"
    #Payment Method PIC
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Add Payment Method"
    Then show alert pop up "Payment method already exists"
    
# Duplicate Payment Method PIC
  @web
  Scenario: Duplicate Payment Method PIC
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user click buttonDrop "Add" and select value "QRIS Type"
    #Payment Method Detail
    And user click dropdown "BNPL" and select value "Kredivo"
    And user input text box "Payment Method Name *" with value "PQAPayment"
    And user input text area "Description" with value "description in here"
    And user click button "Add"
    #Payment Method PIC
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    #Payment Method PIC 2
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Add Payment Method"
    Then show alert pop up "PIC already exists"

# Do not fill the required data
  @web
  Scenario: Do not fill the required data
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user click buttonDrop "Add" and select value "Bank"
    #Payment Method Detail
    And user input text area "Description" with value "description in here"
    #Payment Method PIC
    When user click button "Add Payment Method"
    Then show alert pop up "invalid parameter"

# delete Bank
  @web
  Scenario: Delete Bank
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user search "PQA Bank"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete payment method success"

# delete QRIS
  @web
  Scenario: Delete Bank
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user search "PQA QRIS"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete payment method success"

# delete BNPL
  @web
  Scenario: Delete Bank
    Given user already login as administrator
    And user select language "English"
    And user select menu "Payment Issuer"
    And user select sub menu "Payment Method"
    And user search "PQA BNPL"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete payment method success"