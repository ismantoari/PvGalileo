Feature: Location

# normal case add location
  @web
  Scenario: Add Location
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    And user click button "Add Location"
    #location detail
    And user input text box "Location Name *" with value "Madu Jaya Mandiri"
    And user input text box "Description" with value "this is desc"
    And user click dropdown "Bank *" and select value "BRI"
    And user input text box "Bank Account Number *" with value "0012713"
    And user input text area "Address" with value "jalan Perdana mandiri pecenongan barat"
    #Loyalty Program Booking Facilities
    And user click button "Add"
    And user upload loyalty logo "D:/PQA.jpg"
    And user click dropdown "Booking Type" and select value "Playground"
    And user click dropdown "Booking Type" and select value "Parking"
    And user input text box "Total Slot" with value "10"
    #Landlord Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
#    And user click button "Add Location"
    And stop

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
    And user click dropdown "Bank *" and select value "BRI"
    And user input text box "Bank Account Number *" with value "0012713"
    And user input text area "Address" with value "jalan Perdana mandiri pecenongan barat"
    #Loyalty Program Booking Facilities
    And user click button "Add"
    And user upload loyalty logo "D:/PQA.jpg"
    And user click dropdown "Booking Type" and select value "Playground"
    And user click dropdown "Booking Type" and select value "Parking"
    And user input text box "Total Slot" with value "10"
    #Landlord Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
#    And user click button "Cancel"
    And stop

# add existing Location
  @web
  Scenario: Add Existing Loacation
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    And user click button "Add Location"
    #location detail
    And user input text box "Location Name *" with value "Madu Jaya Mandiri"
    And user input text box "Description" with value "this is desc"
    And user click dropdown "Bank *" and select value "BRI"
    And user input text box "Bank Account Number *" with value "0012713"
    And user input text area "Address" with value "jalan Perdana mandiri pecenongan barat"
    #Loyalty Program Booking Facilities
    And user click button "Add"
    And user upload loyalty logo "D:/PQA.jpg"
    And user click dropdown "Booking Type" and select value "Playground"
    And user click dropdown "Booking Type" and select value "Parking"
    And user input text box "Total Slot" with value "10"
    #Landlord Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
#    And user click button "Add Location"
    And stop

# do not fill the required data
  @web
  Scenario: Do not Fill the Required Data
    Given user already login as administrator
    And user select language "English"
    And user select menu "Location"
    And user click button "Add Location"
    #location detail
    And user input text box "Location Name *" with value "Madu Jaya Mandiri"
    And user input text box "Description" with value "this is desc"
    And user click dropdown "Bank *" and select value "BRI"
    And user input text box "Bank Account Number *" with value "0012713"
    And user input text area "Address" with value "jalan Perdana mandiri pecenongan barat"
    #Loyalty Program Booking Facilities
    And user click button "Add"
    And user upload loyalty logo "D:/PQA.jpg"
    And user click dropdown "Booking Type" and select value "Playground"
    And user click dropdown "Booking Type" and select value "Parking"
    And user input text box "Total Slot" with value "10"
    #Landlord Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
#    And user click button "Add Location"
    And stop

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
    And user click dropdown "Bank *" and select value "BRI"
    And user input text box "Bank Account Number *" with value "0012713"
    And user input text area "Address" with value "jalan Perdana mandiri pecenongan barat"
    #Loyalty Program Booking Facilities
    And user click button "Add"
    And user upload loyalty logo "D:/PQA.npg"
    And user click dropdown "Booking Type" and select value "Playground"
    And user click dropdown "Booking Type" and select value "Parking"
    And user input text box "Total Slot" with value "10"
    #Landlord Representative
    And user click dropdown "PIC Type *" and select value "Business"
    And user input text box "PIC Name *" with value "Satrowijoyo"
    And user input text box "PIC Email *" with value "PQA@gmail.com"
    And user input text box "PIC Phone Number *" with value "088126137123"
#    And user click button "Add Location"
    And stop
