Feature: Location

# check location page
  @web
  Scenario: check location page
    Given user already login as administrator
    And user select language "English"
    When user select menu "Location"
    Then user is on "location" page
    
# check add location page
  @web
  Scenario: check add location page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    When user click button "Add Location"
    Then user is on "add location" page
    
# normal case add location 1
  @web
  Scenario: Add Location 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    And user click button "Add Location"
    #location detail
    And user input text box "Location Name *" with value "Madu Jaya Mandiri"
    And user input text box "Description" with value "this is desc"
    And user click combo box "Bank *" and select value "Retro Bank"
    And user input text box "Bank Account Number *" with value "0012713"
    And user input text area "Address" with value "jalan Perdana mandiri pecenongan barat"
    #Loyalty Program Booking Facilities
    And user click button "Add"
    And user upload loyalty logo "D:/PQA.jpg"
    And user input text box "Total Slot" with value "10"
    #Landlord Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Add Location"
    Then show alert pop up "Insert Landlord success"

# normal case add location 2
  @web
  Scenario: Add Location 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    And user click button "Add Location"
    #location detail
    And user input text box "Location Name *" with value "Madu Jaya Sendiri"
    And user input text box "Description" with value "this is description"
    And user click combo box "Bank *" and select value "Retro Bank"
    And user input text box "Bank Account Number *" with value "9217321"
    And user input text area "Address" with value "jalan Perdana sendiri pecenongan barat"
    #Loyalty Program Booking Facilities
    And user click button "Add"
    And user upload loyalty logo "D:/PQA.jpg"
    And user input text box "Total Slot" with value "10"
    #Landlord Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Add Location"
    Then show alert pop up "Insert Landlord success"

# Edit location
  @web
  Scenario: Edit Location
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    And user search "Madu Jaya Ajalah"
    And user click burger menu
    And user click list "Edit"
    And user input text box predefine "Location Name *" with value "Madu Jaya Ajalah"
    And user input text area predefine "Description" with value "Deskripsi disini"
    And user click combo box predefine "Bank *" and select value "Retro Bank"
    And user input text box predefine "Bank Account Number *" with value "9217321"
    And user input text area predefine "Address" with value "jalan Perdana ajalah pecenongan barat"
    #Loyalty Program Booking Facilities
    And user click button "Add"
#    And user upload loyalty logo "D:/PQA.jpg" Facility "2"
    And stop
    And user input text box "Total Slot" row "2" with value "100"
    When user click button "Save Changes"
    Then show alert pop up "Update Landlord success"

# cancel add location
  @web
  Scenario: Cancel Add Location
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    And user click button "Add Location"
    #location detail
    And user input text box "Location Name *" with value "Madu Jaya Mandiri"
    And user input text box "Description" with value "this is desc"
    And user click combo box "Bank *" and select value "Retro Bank"
    And user input text box "Bank Account Number *" with value "0012713"
    And user input text area "Address" with value "jalan Perdana mandiri pecenongan barat"
    #Loyalty Program Booking Facilities
    And user click button "Add"
    And user upload loyalty logo "D:/PQA.jpg"
    And user input text box "Total Slot" with value "10"
    #Landlord Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Cancel"
    Then user is on "location" page

# add existing Location
  @web
  Scenario: Add Existing Location
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    And user click button "Add Location"
    #location detail
    And user input text box "Location Name *" with value "Madu Jaya Mandiri"
    And user input text box "Description" with value "this is desc"
    And user click combo box "Bank *" and select value "Retro Bank"
    And user input text box "Bank Account Number *" with value "0012713"
    And user input text area "Address" with value "jalan Perdana mandiri pecenongan barat"
    #Loyalty Program Booking Facilities
    And user click button "Add"
    And user upload loyalty logo "D:/PQA.jpg"
    And user input text box "Total Slot" with value "10"
    #Landlord Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Add Location"
    Then show alert pop up "Landlord already registered"

# do not fill the required data
  @web
  Scenario: Do not Fill the Required Data Location
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    And user click button "Add Location"
    #location detail
    And user input text box "Description" with value "this is desc"
    And user input text area "Address" with value "jalan Perdana mandiri pecenongan barat"
    #Loyalty Program Booking Facilities
    And user click button "Add"
    And user upload loyalty logo "D:/PQA.jpg"
    And user input text box "Total Slot" with value "10"
    #Landlord Representative
    And user input text box "PIC Phone Number *" with value "088126137123"
    When user click button "Add Location"
    Then show error mandatory of "Location Name *" with message "Location Name is a required field"

# Upload Booking Facilities with invalid format
  @web
  Scenario: Upload Booking Facilities with invalid format
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    And user click button "Add Location"
    #location detail
    And user input text box "Location Name *" with value "Madu Jaya Mandiri"
    And user input text box "Description" with value "this is desc"
    And user click combo box "Bank *" and select value "Retro Bank"
    And user input text box "Bank Account Number *" with value "0012713"
    And user input text area "Address" with value "jalan Perdana mandiri pecenongan barat"
    
      #Loyalty Program Booking Facilities
    And user click button "Add"
    When user upload loyalty logo "D:/sample.txt"
    Then show error picture with message "- File type must be image/jpeg,image/png,image/jpg"

# delete location 1
  @web
  Scenario: Delete Location 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    And user search "Madu Jaya Mandiri"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete Landlord success"

# delete location 2
  @web
  Scenario: Delete Location 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    And user search "Maju Jaya Sendiri"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete Landlord success"