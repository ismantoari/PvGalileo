Feature: Merchant - Merchant List


# add Merchant List Single
  @web
  Scenario: Add Merchant Single
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click buttonDrop "Add" and select value "Single"
    #Merchant Logo
    And user upload loyalty logo "D:/PQA.jpg"
    #Merchant Detail
    And user input text box "Official Name *" with value "PQA Marketplace"
    And user input text box "Alias Name *" with value "PQAM"
    And user click combo box "Merchant Type" and select value "FNB"
    And user click combo box "Merchant Parent" and select value "Butler's Steak"
    And user click combo box "Location" and select value "PIK"
    And user input text area "Address" with value "this is address"
    #Bank Account
    And user click combo box "Bank *" and select value "Mandiri"
    And user input text box "Bank Account Number *" with value "10237123"
    #MID
#    And user click button Merchant "Add"
    #Merchant Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
#    And user click button "Add Merchant"
    And stop

# cancel add Merchant List Single
  @web
  Scenario: Cancel Add Merchant Single
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click buttonDrop "Add" and select value "Single"
    #Merchant Logo
    And user upload loyalty logo "D:/PQA.jpg"
    #Merchant Detail
    And user input text box "Official Name *" with value "PQA Marketplace"
    And user input text box "Alias Name *" with value "PQAM"
    And user click combo box "Merchant Type" and select value "FNB"
    And user click combo box "Merchant Parent" and select value "Butler's Steak"
    And user click combo box "Location" and select value "PIK"
    And user input text area "Address" with value "this is address"
    #Bank Account
    And user click combo box "Bank *" and select value "Mandiri"
    And user input text box "Bank Account Number *" with value "10237123"
    #MID
#    And user click button Merchant "Add"
    #Merchant Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
#    And user click button "Cancel"
    And stop

# positive case search data
  @web
  Scenario: search Merchant List
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user input text box "Search" with value "Butler's Steak"
    And stop

# positive case filter Merchant Type
  @web
  Scenario: Filter Merchant List
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click dropdown "Merchant Type" and select value "FNB"
    And stop
    And stop

# add Merchant List Single multi representative
  @web
  Scenario: Add Merchant Single Multi Representative
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click buttonDrop "Add" and select value "Single"
    #Merchant Logo
    And user upload loyalty logo "D:/PQA.jpg"
    #Merchant Detail
    And user input text box "Official Name *" with value "PQA Marketplace"
    And user input text box "Alias Name *" with value "PQAM"
    And user click combo box "Merchant Type" and select value "FNB"
    And user click combo box "Merchant Parent" and select value "Butler's Steak"
    And user click combo box "Location" and select value "PIK"
    And user input text area "Address" with value "this is address"
    #Bank Account
    And user click combo box "Bank *" and select value "Mandiri"
    And user input text box "Bank Account Number *" with value "10237123"
    #MID
#    And user click button Merchant "Add"
    #Merchant Representative
    # representative 1
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    # representative 2
#    And user click dropdown "PIC Type *" and select value "Business"
#    And user input text box "PIC Name *" with value "Juwongso"
#    And user input text box "PIC Email *" with value "PQA2@gmail.com"
#    And user input text box "PIC Phone Number *" with value "088128961231"

#    And user click button "Add Merchant"
    And stop

# Add Existing Merchant Name with the same Location
  @web
  Scenario: Add Existing Merchant Name with the same Location
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click buttonDrop "Add" and select value "Single"
    #Merchant Logo
    And user upload loyalty logo "D:/PQA.jpg"
    #Merchant Detail
    And user input text box "Official Name *" with value "PQA Marketplace"
    And user input text box "Alias Name *" with value "PQAM"
    And user click combo box "Merchant Type" and select value "FNB"
    And user click combo box "Merchant Parent" and select value "Butler's Steak"
    And user click combo box "Location" and select value "PIK"
    And user input text area "Address" with value "this is address"
    #Bank Account
    And user click combo box "Bank *" and select value "Mandiri"
    And user input text box "Bank Account Number *" with value "10237123"
    #MID
#    And user click button Merchant "Add"
    #Merchant Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
#    And user click button "Add Merchant"
    And stop


# Do not fill the required data
  @web
  Scenario: Do not fill the required data
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click buttonDrop "Add" and select value "Single"
    #Merchant Logo
    And user upload loyalty logo "D:/PQA.jpg"
    #Merchant Detail
    And user click combo box "Merchant Type" and select value "FNB"
    And user click combo box "Merchant Parent" and select value "Butler's Steak"
    And user click combo box "Location" and select value "PIK"
    And user input text area "Address" with value "this is address"
    #Bank Account
    And user input text box "Bank Account Number *" with value "10237123"
    #MID
#    And user click button Merchant "Add"
    #Merchant Representative
#    And user click button "Add Merchant"
    And stop

# Duplicate Merchant Representative
  @web
  Scenario: Duplicate Merchant Representative
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click buttonDrop "Add" and select value "Single"
    #Merchant Logo
    And user upload loyalty logo "D:/PQA.jpg"
    #Merchant Detail
    And user input text box "Official Name *" with value "PQA Marketplace"
    And user input text box "Alias Name *" with value "PQAM"
    And user click combo box "Merchant Type" and select value "FNB"
    And user click combo box "Merchant Parent" and select value "Butler's Steak"
    And user click combo box "Location" and select value "PIK"
    And user input text area "Address" with value "this is address"
    #Bank Account
    And user click combo box "Bank *" and select value "Mandiri"
    And user input text box "Bank Account Number *" with value "10237123"
    #MID
#    And user click button Merchant "Add"
    #Merchant Representative
    # representative 1
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    # representative 2
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"

#    And user click button "Add Merchant"
    And stop

# add Merchant List Multiple
  @web
  Scenario: Add Merchant Single
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click buttonDrop "Add" and select value "Multiple"
    And user upload loyalty logo "D:/multiple_template.xlsx"
#    And user click button "Add Merchant"
    And stop

# add Merchant List Multiple > 100 data
  @web
  Scenario: Add Merchant Multiple > 100 data
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click buttonDrop "Add" and select value "Multiple"
    And user upload loyalty logo "D:/multiple_template100.xlsx"
#    And user click button "Add Payment Method"
    And stop

# add Merchant Multiple Invalid Format
  @web
  Scenario: Add Merchant Multiple Invalid Format
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click buttonDrop "Add" and select value "Multiple"
    And user upload loyalty logo "D:/multiple_templateInvalid.jpg"
#    And user click button "Add Merchant"
    And stop