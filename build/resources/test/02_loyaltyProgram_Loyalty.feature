Feature: Loyalty Program - Loyalty

  #Normal case loyalty 1 membership bronze
  @web
  Scenario: Add new loyalty
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
#    And user click check checkbox "All Merchant"
#    And user click check checkbox "All Payment Method Including Cash"
#    And user click button "Add Loyalty"
    And stop

  #Normal case loyalty 2 membership bronze-silver
  @web
  Scenario: Add new loyalty
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user click button "Add Loyalty"
    And user upload loyalty logo "D:\PQA.jpg"
    And user input text box "Loyalty Name *" with value "Loyalty SQA 2"
    And user input text box "Point(s) to Rupiah Ratio *" with value "2"
    And user click check checkbox "Mobile Visibility"
    And user click radio button of "Exclusive" with value "No"
    And user click radio button of "Point Expiry Date" with value "Expiry"
    And user input Point Expiry in Day with value "4"
    And user click radio button of "Accumulated Earn Point Duration" with value "In the Last 3 Months"
    And user click radio button of "OTP Digit" with value "2 Digits"
    And user input text area "Description" with value "Loyalty program QA 2"
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
#    And user click check checkbox "All Merchant"
#    And user click check checkbox "All Payment Method Including Cash"
#    And user click button "Add Loyalty"
    And stop

    #Normal Case loyalty 3 member bronze-gold
  @web
  Scenario: Add new loyalty
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user click button "Add Loyalty"
    And user upload loyalty logo "D:\PQA.jpg"
    And user input text box "Loyalty Name *" with value "Loyalty SQA 3"
    And user input text box "Point(s) to Rupiah Ratio *" with value "3"
    And user click radio button of "Exclusive" with value "Yes"
    And user click radio button of "Point Expiry Date" with value "No Expired"
    And user click radio button of "Accumulated Earn Point Duration" with value "In the Last 6 Months"
    And user click radio button of "OTP Digit" with value "4 Digits"
    And user input text area "Description" with value "Loyalty program QA 3"
    # Add membership bronze
    And user click add membership
    And user input text box "Level Name *" with value "Bronze Badge Member"
    And user input Member Type Color with value "#cd7F32"
    And user input add membership description with value "Bronze Badge member level"
    And user input text box "Spending To Earn One Point *" with value "2000"
    And user select Partial Redeem "Yes"
    And user input text box "Max Redeem *" with value "0"
        ## Add Reward List 1
    And user click button add reward list
    And user upload picture reward list "1" with path "D:\K1.jpg"
    And user input reward name of reward list "1" with "Coffee"
    And user input Reward Description of reward list "1" with value "reward QA Point 1"
        ## Add Reward List 2
    And user click button add reward list
    And user upload picture reward list "2" with path "D:\D1.jpg"
    And user input reward name of reward list "2" with "Just Juice"
    And user input Reward Description of reward list "2" with value "reward QA Point 2"
    And user click button "Add Membership"

    # Add Membership silver
    And user click add membership
    And user input text box "Level Name *" with value "Silver Badge Member"
    And user input Member Type Color with value "#C0C0C0"
    And user input add membership description with value "Silver Badge member level"
    And user input text box predefine "Six Months Accumulated Earn Point *" with value "3000"
    And user input text box predefine "Monthly Min. Average Point *" with value "300"
    And user input text box predefine "Minimum Balance Point *" with value "100"
    And user input text box predefine "Spending To Earn One Point *" with value "1000"
    And user select Partial Redeem "Yes"
    And user input text box predefine "Max Redeem *" with value "100"
     ## Add Reward List 1
    And user click button add reward list
    And user upload picture reward list "1" with path "D:\K1.jpg"
    And user input reward name of reward list "1" with "Coffee"
    And user input Reward Description of reward list "1" with value "reward QA Point 1"
        ## Add Reward List 2
    And user click button add reward list
    And user upload picture reward list "2" with path "D:\D1.jpg"
    And user input reward name of reward list "2" with "Just Juice"
    And user input Reward Description of reward list "2" with value "reward QA Point 2"
    And user click button "Add Membership"

    # Add Membership Gold
    And user click add membership
    And user input text box "Level Name *" with value "Gold Badge Member"
    And user input Member Type Color with value "#eef300"
    And user input add membership description with value "Gold Badge member level"
    And user input text box predefine "Six Accumulated Earn Point *" with value "6000"
    And user input text box predefine "Monthly Min. Average Point *" with value "200"
    And user input text box predefine "Minimum Balance Point *" with value "100"
    And user input text box predefine "Spending To Earn One Point *" with value "1000"
    And user select Partial Redeem "Yes"
    And user input text box predefine "Max Redeem *" with value "100"
     ## Add Reward List 1
    And user click button add reward list
    And user upload picture reward list "1" with path "D:\K1.jpg"
    And user input reward name of reward list "1" with "Coffee"
    And user input Reward Description of reward list "1" with value "reward QA Point 1"
        ## Add Reward List 2
    And user click button add reward list
    And user upload picture reward list "2" with path "D:\D1.jpg"
    And user input reward name of reward list "2" with "Just Juice"
    And user input Reward Description of reward list "2" with value "reward QA Point 2"
    And user click button "Add Membership"
#    And user click check checkbox "All Merchant"
#    And user click check checkbox "All Payment Method Including Cash"
#    And user click button "Add Loyalty"
    And stop

    #Normal Case loyalty 4 member bronze-Platinum
  @web
  Scenario: Add new loyalty 112
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user click button "Add Loyalty"
    And user upload loyalty logo "D:\PQA.jpg"
    And user input text box "Loyalty Name *" with value "Loyalty SQA 4"
    And user input text box "Point(s) to Rupiah Ratio *" with value "4"
    And user click radio button of "Exclusive" with value "Yes"
    And user click radio button of "Point Expiry Date" with value "No Expired"
    And user click radio button of "Accumulated Earn Point Duration" with value "In the last year"
    And user click radio button of "OTP Digit" with value "6 Digits"
    And user input text area "Description" with value "Loyalty program QA 4"
    # Add membership bronze
    And user click add membership
    And user input text box "Level Name *" with value "Bronze Badge Membership"
    And user input Member Type Color with value "#cd7F32"
    And user input add membership description with value "Bronze Badge member level"
    And user input text box "Spending To Earn One Point *" with value "2000"
    And user select Partial Redeem "Yes"
    And user input text box "Max Redeem *" with value "0"
        ## Add Reward List 1
    And user click button add reward list
    And user upload picture reward list "1" with path "D:\K1.jpg"
    And user input reward name of reward list "1" with "Coffee"
    And user input Reward Description of reward list "1" with value "reward QA Point 1"
        ## Add Reward List 2
    And user click button add reward list
    And user upload picture reward list "2" with path "D:\D1.jpg"
    And user input reward name of reward list "2" with "Just Juice"
    And user input Reward Description of reward list "2" with value "reward QA Point 2"
    And user click button "Add Membership"

    # Add Membership silver
    And user click add membership
    And user input text box "Level Name *" with value "Silver Badge Membership"
    And user input Member Type Color with value "#C0C0C0"
    And user input add membership description with value "Silver Badge member level"
    And user input text box predefine "Yearly Accumulated Earn Point *" with value "3000"
    And user input text box predefine "Monthly Min. Average Point *" with value "300"
    And user input text box predefine "Minimum Balance Point *" with value "100"
    And user input text box predefine "Spending To Earn One Point *" with value "1000"
    And user select Partial Redeem "Yes"
    And user input text box predefine "Max Redeem *" with value "100"
     ## Add Reward List 1
    And user click button add reward list
    And user upload picture reward list "1" with path "D:\K1.jpg"
    And user input reward name of reward list "1" with "Coffee"
    And user input Reward Description of reward list "1" with value "reward QA Point 1"
        ## Add Reward List 2
    And user click button add reward list
    And user upload picture reward list "2" with path "D:\D1.jpg"
    And user input reward name of reward list "2" with "Just Juice"
    And user input Reward Description of reward list "2" with value "reward QA Point 2"
    And user click button "Add Membership"
 # Add Membership Gold
    And user click add membership
    And user input text box "Level Name *" with value "Gold Badge Membership"
    And user input Member Type Color with value "#eef300"
    And user input add membership description with value "Gold Badge member level"
    And user input text box predefine "Yearly Accumulated Earn Point *" with value "6000"
    And user input text box predefine "Monthly Min. Average Point *" with value "200"
    And user input text box predefine "Minimum Balance Point *" with value "100"
    And user input text box predefine "Spending To Earn One Point *" with value "1000"
    And user select Partial Redeem "Yes"
    And user input text box predefine "Max Redeem *" with value "100"
     ## Add Reward List 1
    And user click button add reward list
    And user upload picture reward list "1" with path "D:\K1.jpg"
    And user input reward name of reward list "1" with "Coffee"
    And user input Reward Description of reward list "1" with value "reward QA Point 1"
        ## Add Reward List 2
    And user click button add reward list
    And user upload picture reward list "2" with path "D:\D1.jpg"
    And user input reward name of reward list "2" with "Just Juice"
    And user input Reward Description of reward list "2" with value "reward QA Point 2"
    And user click button "Add Membership"
    # Add Membership Platinum
    And user click add membership
    And user input text box "Level Name *" with value "Platinum Badge Membership"
    And user input Member Type Color with value "#bee1f3"
    And user input add membership description with value "Platinum Badge member level"
    And user input text box predefine "Yearly Accumulated Earn Point *" with value "8000"
    And user input text box predefine "Monthly Min. Average Point *" with value "400"
    And user input text box predefine "Minimum Balance Point *" with value "200"
    And user input text box predefine "Spending To Earn One Point *" with value "500"
    And user select Partial Redeem "Yes"
    And user input text box predefine "Max Redeem *" with value "100"
     ## Add Reward List 1
    And user click button add reward list
    And user upload picture reward list "1" with path "D:\K1.jpg"
    And user input reward name of reward list "1" with "Coffee"
    And user input Reward Description of reward list "1" with value "reward QA Point 1"
        ## Add Reward List 2
    And user click button add reward list
    And user upload picture reward list "2" with path "D:\D1.jpg"
    And user input reward name of reward list "2" with "Just Juice"
    And user input Reward Description of reward list "2" with value "reward QA Point 2"
    And user click button "Add Membership"
    And user click check checkbox "All Merchant"
#    And user click check checkbox "All Payment Method Including Cash"
#    And user click button "Add Loyalty"
    And stop

# cancel add
  @web
  Scenario: Cancel Add loyalty
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
#    And user click check checkbox "All Merchant"
#    And user click check checkbox "All Payment Method Including Cash"
#    And user click button "cancel"
    And stop

#negative case
  @web
  Scenario: Add loyalty that already exists
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
#    And user click check checkbox "All Merchant"
#    And user click check checkbox "All Payment Method Including Cash"
#    And user click button "Add Loyalty"
    And stop
