Feature: Loyalty Program - Loyalty

  @web
  Scenario: Add new loyalty
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user click button "Add Loyalty"

    And user upload loyalty logo "F:\PQA.jpg"
    And user input text box "Loyalty Name *" with value "Loyalty SQA Automation"

    And user input text box "Point(s) to Rupiah Ratio *" with value "1"
    And user click check checkbox "Mobile Visibility"
    And user click radio button of "Exclusive" with value "No"
    And user click radio button of "Point Expiry Date" with value "Expiry"
    And user input Point Expiry in Day with value "4"
    And user click radio button of "Accumulated Earn Point Duration" with value "In the Last 6 Months"
    And user click radio button of "OTP Digit" with value "4 Digits"
    And user input text area "Description" with value "Loyalty program QA"
    # Add membership bronze
    And user click add membership
    And user input text box "Level Name *" with value "bronze Member"
    And user input Member Type Color with value "#cd7F32"
    And user input add membership description with value "Bronze member level"
    And user input text box "Spending To Earn One Point *" with value "2000"
    And user select Partial Redeem "Yes"
    And user input text box "Max Redeem *" with value "0"
        ## Add Reward List 1 for bronze
    And user click button add reward list
    And user upload picture reward list "1" with path "D:\K1.jpg"
    And user input reward name of reward list "1" with "Coffee"
    And user input Reward Description of reward list "1" with value "reward QA level pertama"
        ## Add Reward List 2 for bronze
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
    And user input text box predefine "Six Months Accumulated Earn Point *" with value "2000"
    And user input text box predefine "Monthly Min. Average Point *" with value "200"
    And user input text box predefine "Minimum Balance Point *" with value "100"
    And user input text box predefine "Spending To Earn One Point *" with value "1000"
    And user select Partial Redeem "Yes"
    And user input text box predefine "Max Redeem *" with value "100"

            ## Add Reward List 1 for silver
    And user click button add reward list
    And user upload picture reward list "1" with path "F:\fruits.jpg"
    And user input reward name of reward list "1" with "Fruits"
    And user input Reward Description of reward list "1" with value "reward QA level silver"
    And user click button "Add Membership"



    #Applied merchant
    
    And user click check checkbox ""
    # Member invitation
    # Applied payment method
    #
    And stop
    And stop
