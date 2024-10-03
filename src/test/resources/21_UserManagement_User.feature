Feature: User Management - User

# Check user management - user page
  @web
  Scenario: Check User Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    When user select sub menu "User"
    Then user is on "user" page

# Check user management - add user page
  @web
  Scenario: Check add User Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "User"
    When user click button "Add User"
    Then user is on "add user" page

# Add user 1
  @web
  Scenario: Add User Edit
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "User"
    And user click button "Add User"
    #user detail
    And user click combo box "Subgroup *" and select value "Butlers Steak"
    And user click combo box "User Type *" and select value "Merchant"
    And user input text box "User Name *" with value "Admerch1"
    And user input text box "User First Name *" with value "Additional"
    And user input text box "User Last Name *" with value "Merchant"
    And user input text box "Email *" with value "admerch1@gmail.com"
    And user input text box "Phone Number *" with value "0812386131232"
    And user click dropdown "User Status" and select value "Active"
    And user input text area "User Address *" with value "ini address"
    And user input text area "User Description" with value "ini description"
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Add User"
    Then show alert pop up "Insert user list success"

# Add user 2
  @web
  Scenario: Add User Delete
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "User"
    And user click button "Add User"
    #user detail
    And user click combo box "Subgroup *" and select value "Butlers Steak"
    And user click combo box "User Type *" and select value "Merchant"
    And user input text box "User Name *" with value "Admerch2"
    And user input text box "User First Name *" with value "oldest"
    And user input text box "User Last Name *" with value "Merchant"
    And user input text box "Email *" with value "admerch2@gmail.com"
    And user input text box "Phone Number *" with value "0812386131233"
    And user click dropdown "User Status" and select value "Active"
    And user input text area "User Address *" with value "ini address"
    And user input text area "User Description" with value "ini description"
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Add User"
    Then show alert pop up "Insert user list success"

# edit user
  @web
  Scenario: Edit User
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "User"
    And user search "Admerch1"
    And user click burger menu
    And user click list "Edit"
    #user detail
#    And user click combo box "Subgroup *" and select value "Toma's Brasserie"
#    And user click combo box "User Type *" and select value "Bank"
    And user input text box predefine "User First Name *" with value "newest"
    And user input text box predefine "User Last Name *" with value "merch"
    And user input text box predefine "Email *" with value "admerch@gmail.com"
    And user input text box predefine "Phone Number *" with value "0888888888888"
    And user click dropdown "User Status" and select value "Inactive"
    And user input text area predefine "User Address *" with value "this is address"
    And user input text area predefine "User Description" with value "this is description"
    #reason
    And user click dropdown "Reason" and select value "change request"
    When user click button "Save Changes"
    Then show alert pop up "Update user list success"

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
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Cancel"
    Then user is on "user" page

# data already exists - username
  @web
  Scenario: data user already exists - username
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "User"
    And user click button "Add User"
    #user detail
    And user click combo box "Subgroup *" and select value "Toma's Brasserie"
    And user click combo box "User Type *" and select value "Bank"
    And user input text box "User Name *" with value "Admerch2"
    And user input text box "User First Name *" with value "newest"
    And user input text box "User Last Name *" with value "merch"
    And user input text box "Email *" with value "admerch12@gmail.com"
    And user input text box "Phone Number *" with value "0888888888881"
    And user click dropdown "User Status" and select value "Inactive"
    And user input text area "User Address *" with value "this is address"
    And user input text area "User Description" with value "this is description"
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Add User"
    Then show alert pop up "User already exists"


# data already exists - Phone Number
  @web
  Scenario: data user already exists - Phone Number
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "User"
    And user click button "Add User"
    #user detail
    And user click combo box "Subgroup *" and select value "Toma's Brasserie"
    And user click combo box "User Type *" and select value "Bank"
    And user input text box "User Name *" with value "Admerch2"
    And user input text box "User First Name *" with value "newest"
    And user input text box "User Last Name *" with value "merch"
    And user input text box "Email *" with value "admerch12@gmail.com"
    And user input text box "Phone Number *" with value "0888888888888"
    And user click dropdown "User Status" and select value "Inactive"
    And user input text area "User Address *" with value "this is address"
    And user input text area "User Description" with value "this is description"
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Add User"
    Then show alert pop up "Phone number already registered"

# data already exists - Email
  @web
  Scenario: data user already exists - Email
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "User"
    And user click button "Add User"
    #user detail
    And user click combo box "Subgroup *" and select value "Toma's Brasserie"
    And user click combo box "User Type *" and select value "Bank"
    And user input text box "User Name *" with value "Admerch2"
    And user input text box "User First Name *" with value "newest"
    And user input text box "User Last Name *" with value "merch"
    And user input text box "Email *" with value "admerch@gmail.com"
    And user input text box "Phone Number *" with value "0888888888888"
    And user click dropdown "User Status" and select value "Inactive"
    And user input text area "User Address *" with value "this is address"
    And user input text area "User Description" with value "this is description"
    #reason
    And user click dropdown "Reason" and select value "New entry data"
    When user click button "Add User"
    Then show alert pop up "Email already registered"

# delete user 1
  @web
  Scenario: Delete User
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "User"
    And user search "Admerch2"
    And user click burger menu
    And user click list "Delete"
    And user click dropdown "Reason" and select value "change request"
    When user click button "Delete"
    Then show alert pop up "Delete user list success"

# delete user 2
  @web
  Scenario: Delete User 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "User Management"
    And user select sub menu "User"
    And user search "Admerch1"
    And user click burger menu
    And user click list "Delete"
    And user click dropdown "Reason" and select value "change request"
    When user click button "Delete"
    Then show alert pop up "Delete user list success"