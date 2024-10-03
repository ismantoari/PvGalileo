Feature: Merchant - Product Setup

  
# check product page
  @web
  Scenario: check Product page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    When user select sub menu "Product Setup"
    Then user is on "product" page
    
# check add product page
  @web
  Scenario: check add Product page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Product Setup"
    When user click button "Add Product"
    Then user is on "add product" page

# add product edit
  @web
  Scenario: Add Product Edit
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Product Setup"
    And user click button "Add Product"
    And user click combo box "Merchant *" and select value "Butler's Steak"
    And user input text box "Product Name *" with value "Medium Well Steak"
    And user input text box "Price *" with value "300000"
    And user input text box "SKU *" with value "STK1"
    When user click button "Add Catalog"
    Then show alert pop up "Insert Merchant Product Success"

# add product delete
  @web
  Scenario: Add Product Delete
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Product Setup"
    And user click button "Add Product"
    And user click combo box "Merchant *" and select value "Butler's Steak"
    And user input text box "Product Name *" with value "Medium Rare Steak"
    And user input text box "Price *" with value "300000"
    And user input text box "SKU *" with value "STK2"
    When user click button "Add Catalog"
    Then show alert pop up "Insert Merchant Product Success"

# edit product
  @web
  Scenario: Edit Product
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Product Setup"
    And user search "STK2"
    And user click burger menu
    And user click list "Edit"
    And user click combo box predefine "Merchant *" and select value "Toma's Brasserie"
    And user input text box predefine "Product Name *" with value "Medium Steak"
    And user input text box predefine "Price *" with value "400000"
    And user input text box predefine "SKU *" with value "STK3"
    When user click button "Save Changes"
    Then show alert pop up "Update Merchant Product Success"
    
# Cancel Add Product
  @web
  Scenario: Cancel Add Product
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Product Setup"
    And user click button "Add Product"
    And user click combo box "Merchant *" and select value "Butler's Steak"
    And user input text box "Product Name *" with value "Medium Well Steak"
    And user input text box "Price *" with value "300000"
    And user input text box "SKU *" with value "STK1"
    When user click button "Cancel"
    Then user is on "product" page

## Duplicate Product
#  @web
#  Scenario: Duplicate Product
#    Given user already login as administrator
#    And user select language "English"
#    And user select menu "Merchant"
#    And user select sub menu "Product Setup"
#    And user click button "Add Product"
#    And user click combo box "Merchant *" and select value "Butler's Steak"
#    And user input text box "Product Name *" with value "Medium Rare Steak"
#    And user input text box "Price *" with value "300000"
#    And user input text box "SKU *" with value "STK2"
#    And user click button "Add Catalog"
#    Then show alert pop up "Product Already Exists"

# delete Product 1
  @web
    Scenario: Delete Product 1
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Product Setup"
    And user search "STK2"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete Merchant Product Success"

# delete Product 2
  @web
    Scenario: Delete Product 2
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Product Setup"
    And user search "STK3"
    And user click burger menu
    And user click list "Delete"
    When user click button "Delete"
    Then show alert pop up "Delete Merchant Product Success"