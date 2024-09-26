Feature: Merchant - Merchant List

# check merchant list page
  @web
  Scenario: Check merchant list page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    When user select sub menu "Merchant List"
    Then user is on "merchant list" page

# check add merchant list page - single
  @web
  Scenario: check add merchant list page - single
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    When user click buttonDrop "Add" and select value "Single"
    Then user is on "add merchant list single" page
# check add merchant list page - multiple
  @web
  Scenario: check add merchant list page - multiple
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    When user click buttonDrop "Add" and select value "Multiple"
    Then user is on "add merchant list multiple" page

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
    And user click combo box "Postal Code *" and select value "23123"
    And user click combo box "Location" and select value "PIK"
    And user input text area "Address" with value "this is address"
    #Bank Account
    And user click combo box "Bank *" and select value "Mandiri"
    And user input text box "Bank Account Number *" with value "10237123"
    #MID
    And user click button add MID list
    And user input text box "MID *" with value "881293123"
    #Merchant Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Add Merchant"
    Then show alert pop up "Insert merchant list success"

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
    And user click combo box "Postal Code *" and select value "12342"
    And user click combo box "Location" and select value "PIK"
    And user input text area "Address" with value "this is address"
    #Bank Account
    And user click combo box "Bank *" and select value "Mandiri"
    And user input text box "Bank Account Number *" with value "10237123"
    #MID
    And user click button add MID list
    And user input text box "MID *" with value "8752981"
    #Merchant Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Cancel"
    Then user is on "merchant list" page

# Edit merchant list
  @web
  Scenario: Edit Merchant Single
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user search "PQA Marketplace"
    And user click burger menu
    And user click list "Edit"
    #Merchant Logo
    And user upload loyalty logo "D:/PQA2.jpg"
    #Merchant Detail
    And user input text box predefine "Official Name *" with value "PQA Marketplace 2"
    And user input text box predefine "Alias Name *" with value "PQAM2"
    And user click combo box "Merchant Type" and select value "Food"
    And user click combo box "Merchant Parent" and select value "Toma's Brasserie"
    And user click combo box "Postal Code *" and select value "12313"
    And user click combo box "Location" and select value "Chillax"
    And user input text area "Address" with value "this is a new address"
    #Bank Account
    And user click combo box "Bank *" and select value "BNI"
    And user input text box predefine "Bank Account Number *" with value "23114112"
    #MID
    And user click button add MID list
    And user input text box predefine "MID *" with value "12314532"
    #Merchant Representative
    And user click dropdown "PIC Type *" and select value "Technical"
    And user input text box predefine "PIC Name *" with value "Satrowajito"
    And user input text box predefine "PIC Email *" with value "PQA2@gmail.com"
    And user input text box predefine "PIC Phone Number *" with value "01203712832"
    When user click button "Save Changes"
    Then show alert pop up "Update merchant list success"

# positive case search data
  @web
  Scenario: search Merchant List
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user search "PQA Marketplace 2"
    And stop

# positive case filter Merchant Type
  @web
  Scenario: Filter Merchant List
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click dropdown "Merchant Type" and select value "Food"
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
    And user click button add MID list
    And user input text box "MID" with value "234213213"
    #Merchant Representative
    # representative 1
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    # representative 2
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Juwongso"
    And user input text box "PIC Email *" with value "PQA2@gmail.com"
    And user input text box "PIC Phone Number *" with value "088128961231"

    When user click button "Add Merchant"
    Then show alert pop up "representative already exists"

# Add Existing Merchant Name with the same Location
  @web
  Scenario: Add Existing Merchant Name with the same Location
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click buttonDrop "Add" and select value "Single"
    #Merchant Logo
    And user upload loyalty logo "D:/PQA2.jpg"
    #Merchant Detail
    And user input text box "Official Name *" with value "PQA Marketplace 2"
    And user input text box "Alias Name *" with value "PQAM2"
    And user click combo box "Merchant Type" and select value "Food"
    And user click combo box "Merchant Parent" and select value "Toma's Brasserie"
    And user click combo box "Postal Code *" and select value "12313"
    And user click combo box "Location" and select value "Chillax"
    And user input text area "Address" with value "this is a new address"
    #Bank Account
    And user click combo box "Bank *" and select value "BNI"
    And user input text box "Bank Account Number *" with value "23114112"
    #MID
    And user click button add MID list
    And user input text box "MID *" with value "12314532"
    #Merchant Representative
    And user click dropdown "PIC Type *" and select value "Technical"
    And user input text box "PIC Name *" with value "Satrowajito"
    And user input text box "PIC Email *" with value "PQA2@gmail.com"
    And user input text box "PIC Phone Number *" with value "01203712832"
    When user click button "Add Merchant"
    Then show alert pop up "merchant list already exists"


# Do not fill the required data
  @web
  Scenario: Do not fill the required data merchant
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
    And user click button add MID list
    And user input text box "MID" with value "881293123"
    #Merchant Representative
    When user click button "Add Merchant"
    Then show error mandatory of "Alias Name *" with message "Alias Name is a required field"

## Duplicate Merchant Representative
#  @web
#  Scenario: Duplicate Merchant Representative
#    Given user already login as administrator
#    And user select language "English"
#    And user select menu "Merchant"
#    And user select sub menu "Merchant List"
#    And user click buttonDrop "Add" and select value "Single"
#    #Merchant Logo
#    And user upload loyalty logo "D:/PQA.jpg"
#    #Merchant Detail
#    And user input text box "Official Name *" with value "PQA Marketplace"
#    And user input text box "Alias Name *" with value "PQAM"
#    And user click combo box "Merchant Type" and select value "FNB"
#    And user click combo box "Merchant Parent" and select value "Butler's Steak"
#    And user click combo box "Location" and select value "PIK"
#    And user input text area "Address" with value "this is address"
#    #Bank Account
#    And user click combo box "Bank *" and select value "Mandiri"
#    And user input text box "Bank Account Number *" with value "10237123"
#    #MID
#    And user click button add MID list
#    And user input text box "MID" with value "881293123"
#    #Merchant Representative
#    # representative 1
#    And user click dropdown "PIC Type *" and select value "Business"
#    And user input text box "PIC Name *" with value "Satrowijoyo"
#    And user input text box "PIC Email *" with value "PQA@gmail.com"
#    And user input text box "PIC Phone Number *" with value "088126137123"
#    # representative 2
#    And user click dropdown "PIC Type *" and select value "Business"
#    And user input text box "PIC Name *" with value "Satrowijoyo"
#    And user input text box "PIC Email *" with value "PQA@gmail.com"
#    And user input text box "PIC Phone Number *" with value "088126137123"
#
#    When user click button "Add Merchant"
#    Then show alert pop up "Merchant list already exists"

# add Merchant List Multiple
  @web
  Scenario: Add Merchant Multiple
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click buttonDrop "Add" and select value "Multiple"
    And user upload loyalty logo "D:/multiple_template.xlsx"
    When user click button "Add Merchant"
    Then show alert pop up "Add merchant list success"
    

# add Merchant Multiple Invalid Format
  @web
  Scenario: Add Merchant Multiple Invalid Format
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user click buttonDrop "Add" and select value "Multiple"
    And user upload loyalty logo "D:/multiple_templateInvalid.jpg"
    When user click button "Add Merchant"
    Then show alert pop up "invalid parameter"
    
# delete Merchant list
  @web
  Scenario: Delete Merchant List
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Merchant List"
    And user search "PQA Marketplace 2"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete merchant list success"