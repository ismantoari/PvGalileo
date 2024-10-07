Feature: Loyalty Program - Loyalty

 #check loyalty page
  @web
  Scenario: Open loyalty page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    When user select sub menu "Loyalty"
    Then user is on "loyalty" page

# check loyalty add page
  @web
  Scenario: Open add loyalty page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    When user click button "Add Loyalty"
    Then user is on "add loyalty" page

# add new loyalty 1 membership
  @web
  Scenario: Add new loyalty (Level 1)
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user click button "Add Loyalty"
    And user upload loyalty logo "D:\PQA.jpg"
    And user input text box "Loyalty Name *" with value "Loyalty SQA 1"
    And user input text box "Point(s) to Rupiah Ratio *" with value "1"
    And user click check checkbox "Mobile Visibility"
    And user click radio button of "Exclusive" with value "No"
    And user click radio button of "Point Expiry Date" with value "Expiry"
    And user input Point Expiry in Day with value "3"
    And user click radio button of "Accumulated Earn Point Duration" with value "In the Last 3 Months"
    And user click radio button of "OTP Digit" with value "No OTP"
    And user input text area "Description" with value "Loyalty program QA 1"
    And user click add membership
    And user input text box "Level Name *" with value "bronze Member"
    And user input Member Type Color with value "#cd7F32"
    And user input add membership description with value "Bronze member level"
    And user input text box "Spending To Earn One Point *" with value "2000"
    And user select Partial Redeem "Yes"
    And user input text box "Max Redeem *" with value "0"
    And user click button add reward list
    And user upload picture reward list "1" with path "D:\K1.jpg"
    And user input reward name of reward list "1" with "Coffee"
    And user input Reward Description of reward list "1" with value "reward QA level pertama"
    And user click button add reward list
    And user upload picture reward list "2" with path "D:\D1.jpg"
    And user input reward name of reward list "2" with "Orange Juice"
    And user input Reward Description of reward list "2" with value "reward QA level kedua"
    And user click button "Add Membership"
    And user click combo box check box "Merchant" and select value "Butler's Steak"
    And user click check checkbox "All Bank"
    When user click button "Add Loyalty"
    Then user is on "loyalty" page
    Then show alert pop up "Insert Loyalty program success"
    Then verify created new loyalty name "Loyalty SQA 1"


  #Normal case loyalty 2 membership silver
  @web
  Scenario: Add Silver Member (Level 2)
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    # Add Membership silver
    And user click add membership
    And user input text box "Level Name *" with value "Silver Member"
    And user input Member Type Color with value "#C0C0C0"
    And user input add membership description with value "Silver member level"
    And user input text box predefine "Three Months Accumulated Earn Point *" with value "2000"
    And user input text box predefine "Monthly Min. Average Point *" with value "200"
    And user input text box predefine "Minimum Balance Point *" with value "100"
    And user input text box predefine "Spending To Earn One Point *" with value "1000"
    And user select Partial Redeem "Yes"
    And user input text box predefine "Max Redeem *" with value "100"
    And user click button "Add Membership"
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"

    #Normal Case loyalty 3 member gold
  @web
  Scenario: Add Gold Member (Level 3)
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    And user click add membership
    And user input text box "Level Name *" with value "Gold Badge Member"
    And user input Member Type Color with value "#eef300"
    And user input add membership description with value "Gold Badge member level"
    And stop
    And user input text box predefine "Three Months Accumulated Earn Point *" with value "6000"
    And user input text box predefine "Monthly Min. Average Point *" with value "200"
    And user input text box predefine "Minimum Balance Point *" with value "100"
    And user input text box predefine "Spending To Earn One Point *" with value "1000"
    And user select Partial Redeem "Yes"
    And user input text box predefine "Max Redeem *" with value "100"
    And user click button "Add Membership"
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"

    #Normal Case loyalty 4 member Platinum
  @web
  Scenario: Add Platinum Member (Level n)
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    And user click add membership
    And user input text box "Level Name *" with value "Platinum Badge Membership"
    And user input Member Type Color with value "#bee1f3"
    And user input add membership description with value "Platinum Badge member level"
    And user input text box predefine "Three Months Accumulated Earn Point *" with value "8000"
    And user input text box predefine "Monthly Min. Average Point *" with value "400"
    And user input text box predefine "Minimum Balance Point *" with value "200"
    And user input text box predefine "Spending To Earn One Point *" with value "500"
    And user select Partial Redeem "Yes"
    And user input text box predefine "Max Redeem *" with value "100"
    And user click button "Add Membership"
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"

#Normal Case loyalty payment QRIS
  @web
  Scenario: Check ALL QRIS
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    #Add QRIS
    And user click check checkbox "All QRIS"
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"

#Normal Case loyalty payment BNPL
  @web
  Scenario: Check ALL BNPL
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    #Add BNPL
    And user click check checkbox "All BNPL"
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"

#Normal Case loyalty payment Bank
  @web
  Scenario: Check ALL BANK
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    #Add Bank
    And user click check checkbox "All Payment Method Including Cash"
    And user click check checkbox "All Bank"
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"


#Normal Case check all payment method
  @web
  Scenario: Check ALL Payment Method inc Cash
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    #Add Bank
    And user click check checkbox "All Payment Method Including Cash"
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"



#Normal case edit bronze member
  @web
  Scenario: Edit Bronze Member
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    And user edit Membership Level Name "bronze Member"
    And user click list "Edit"
    And user input text box predefine "Spending To Earn One Point *" with value "1000"
    And user click button save changes membership
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"

    #Normal case edit silver member
  @web
  Scenario: Edit Silver Member
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    And user edit Membership Level Name "Silver Member"
    And user click list "Edit"
    And user input text box predefine "Spending To Earn One Point *" with value "1000"
    And user click button save changes membership
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"


    #Normal case edit gold member
  @web
  Scenario: Edit Gold Member
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    And user edit Membership Level Name "Gold Badge Member"
    And user click list "Edit"
    And user input text box predefine "Spending To Earn One Point *" with value "1000"
    And user click button save changes membership
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"


    #Normal case edit platinum member
  @web
  Scenario: Edit Platinum Member
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    And user edit Membership Level Name "Platinum Badge Membership"
    And user click list "Edit"
    And user input text box predefine "Spending To Earn One Point *" with value "1000"
    And user click button save changes membership
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"


#Normal case Edit Loyalty Program From All Payment Method to Bank BNI only

  @web
  Scenario: Edit Loyalty Program From All Payment Method to QRIS Monei only
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    And user click check checkbox "All Payment Method Including Cash"
    And user click check checkbox "All Bank"
    And user click button "Add" of payment method "Bank"
    And user click dropdown applied payment method "Bank" row "1" with value "BRI"
    And user click applied payment method sub checkbox "BRI Debit"
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"

# data already exists
  @web
  Scenario: Data Already Exists
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user click button "Add Loyalty"
    And user upload loyalty logo "D:\PQA.jpg"
    And user input text box "Loyalty Name *" with value "Loyalty SQA 1"
    And user input text box "Point(s) to Rupiah Ratio *" with value "1"
    And user click check checkbox "Mobile Visibility"
    And user click radio button of "Exclusive" with value "No"
    And user click radio button of "Point Expiry Date" with value "Expiry"
    And user input Point Expiry in Day with value "3"
    And user click radio button of "Accumulated Earn Point Duration" with value "In the Last 3 Months"
    And user click radio button of "OTP Digit" with value "No OTP"
    And user input text area "Description" with value "Loyalty program QA 1"
    # Add membership bronze
    And user click add membership
    And user input text box "Level Name *" with value "bronze Member"
    And user input Member Type Color with value "#cd7F32"
    And user input add membership description with value "Bronze member level"
    And user input text box "Spending To Earn One Point *" with value "2000"
    And user select Partial Redeem "Yes"
    And user input text box "Max Redeem *" with value "0"
        ## Add Reward List 1
    And user click button add reward list
    And user upload picture reward list "1" with path "D:\K1.jpg"
    And user input reward name of reward list "1" with "Coffee"
    And user input Reward Description of reward list "1" with value "reward QA level pertama"
        ## Add Reward List 2
    And user click button add reward list
    And user upload picture reward list "2" with path "D:\D1.jpg"
    And user input reward name of reward list "2" with "Orange Juice"
    And user input Reward Description of reward list "2" with value "reward QA level kedua"
    And user click button "Add Membership"
    And user click check checkbox "All Merchant"
    And user click check checkbox "All Payment Method Including Cash"
    When user click button "Add Loyalty"
    Then show alert pop up "Loyalty program already exists"

  #Normal case cancel add membership
  @web
  Scenario: Cancel Add Membership
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Edit"
    # Add Membership silver
    And user click add membership
    And user input text box "Level Name *" with value "Silver Member"
    And user input Member Type Color with value "#C0C0C0"
    And user input add membership description with value "Silver member level"
    And user input text box predefine "Three Months Accumulated Earn Point *" with value "2000"
    And user input text box predefine "Monthly Min. Average Point *" with value "200"
    And user input text box predefine "Minimum Balance Point *" with value "100"
    And user input text box predefine "Spending To Earn One Point *" with value "1000"
    And user select Partial Redeem "Yes"
    And user input text box predefine "Max Redeem *" with value "100"
    And user click button "Cancel" at add membership
    When user click button "Save Changes"
    Then show alert pop up "Update Loyalty program success"

# cancel add loyalty program
  @web
  Scenario: Cancel Add Loyalty Program
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user click button "Add Loyalty"
    And user upload loyalty logo "D:\PQA.jpg"
    And user input text box "Loyalty Name *" with value "Loyalty SQA 1"
    And user input text box "Point(s) to Rupiah Ratio *" with value "1"
    And user click check checkbox "Mobile Visibility"
    And user click radio button of "Exclusive" with value "No"
    And user click radio button of "Point Expiry Date" with value "Expiry"
    And user input Point Expiry in Day with value "3"
    And user click radio button of "Accumulated Earn Point Duration" with value "In the Last 3 Months"
    And user click radio button of "OTP Digit" with value "No OTP"
    And user input text area "Description" with value "Loyalty program QA 1"
    # Add membership bronze
    And user click add membership
    And user input text box "Level Name *" with value "bronze Member"
    And user input Member Type Color with value "#cd7F32"
    And user input add membership description with value "Bronze member level"
    And user input text box "Spending To Earn One Point *" with value "2000"
    And user select Partial Redeem "Yes"
    And user input text box "Max Redeem *" with value "0"
        ## Add Reward List 1
    And user click button add reward list
    And user upload picture reward list "1" with path "D:\K1.jpg"
    And user input reward name of reward list "1" with "Coffee"
    And user input Reward Description of reward list "1" with value "reward QA level pertama"
        ## Add Reward List 2
    And user click button add reward list
    And user upload picture reward list "2" with path "D:\D1.jpg"
    And user input reward name of reward list "2" with "Orange Juice"
    And user input Reward Description of reward list "2" with value "reward QA level kedua"
    And user click button "Add Membership"
    And user click check checkbox "All Merchant"
    And user click check checkbox "All Payment Method Including Cash"
    When user click button "Cancel"
    Then user is on "loyalty" page

# Edit loyalty when more than 2 loyalty on list
    @web
    Scenario: Edit loyalty when more than 2 loyalty on list
      Given user already login as administrator
      And user select language "English"
      And user select menu "Loyalty Program"
      And user select sub menu "Loyalty"
      And user search "Loyalty SQA"
      And user click loyalty burger menu of "Loyalty SQA 1"
      And user click list "Edit"
      And user click check checkbox "All Payment Method Including Cash"
      When user click button "Save Changes"
      Then show alert pop up "Update Loyalty program success"

#normal case delete loyalty
  @web
  Scenario: Delete Loyalty Program
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete Loyalty program success"
    Then verify deleted loyalty name "Loyalty SQA 1"

# check mandatory loyalty
  @web
  Scenario: check mandatory loyalty
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user click button "Add Loyalty"
    And stop
    When user click button "Add Loyalty"
    Then show error mandatory of "Loyalty Name *" with message "Loyalty Name is a required field"