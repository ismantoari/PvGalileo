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
#    And user click button "Add Payment Method"
    And stop

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
#    And user click button "Add Payment Method"
    And stop

# add Payment Method BNPL Type
  @web
  Scenario: Add Payment Method BNPL
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
#    And user click button "Add Payment Method"
    And stop

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
#    And user click button "Cancel
    And stop

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
#    And user click button "Cancel"
    And stop

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
#    And user click button "Cancel"
    And stop

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
#    And user click button "Add Payment Method"
    And stop

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
#    And user click button "Add Payment Method"
    And stop

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
#    And user click button "Add Payment Method"
    And stop

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
#    And user click button "Add Payment Method"
    And stop

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
#    And user click button "Add Payment Method"
    And stop