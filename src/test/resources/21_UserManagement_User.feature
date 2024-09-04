Feature: User Management - User

# Add user
  @web
  Scenario: Add User
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "User"
    And user click button "Add User"
    #user detail
    And user click combo box "Subgroup *" and select value "Butlers Steak"
    And user click combo box "User Type *" and select value "Merchant"
    And user input text box "User Name *" with value "Admerch"
    And user input text box "User First Name *" with value "Additional"
    And user input text box "User Last Name *" with value "Merchant"
    And user input text box "Email *" with value "admerch@gmail.com"
    And user input text box "Phone Number *" with value "0812386131231"
    And user click dropdown "User Status" and select value "Active"
    And user input text area "User Address *" with value "ini address"
    And user input text area "User Description" with value "ini description"
    #reason
    And user click dropdown "Reason" and select value "New Entry Data"
    And user click button "Add User"
    And stop

# cancel Add user
  @web
  Scenario: cancel Add User
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "User"
    And user click button "Add User"
    #user detail
    And user click combo box "Subgroup *" and select value "Butlers Steak"
    And user click combo box "User Type *" and select value "Merchant"
    And user input text box "User Name *" with value "Admerch"
    And user input text box "User First Name *" with value "Additional"
    And user input text box "User Last Name *" with value "Merchant"
    And user input text box "Email *" with value "admerch@gmail.com"
    And user input text box "Phone Number *" with value "0812386131231"
    And user click dropdown "User Status" and select value "Active"
    And user input text area "User Address *" with value "ini address"
    And user input text area "User Description" with value "ini description"
    #reason
    And user click dropdown "Reason" and select value "New Entry Data"
    And user click button "Cancel"
    And stop