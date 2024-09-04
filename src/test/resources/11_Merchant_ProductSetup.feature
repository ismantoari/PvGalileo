Feature: Merchant - Product Setup

 #add product
  @web
  Scenario: Add Product
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Product Setup"
    And user click button "Add Product"
    And user click combo box "Merchant *" and select value "Butler's Steak"
    And user input text box "Product Name *" with value "Medium Well Steak"
    And user input text box "Price *" with value "300000"
    And user input text box "SKU *" with value "STK1"
#    And user click button "Add Catalog"
    And stop

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
    And user click button "Cancel"
    And stop


# Duplicate Product
  @web
  Scenario: Duplicate Product
    Given user already login as administrator
    And user select language "English"
    And user select menu "Merchant"
    And user select sub menu "Product Setup"
    And user click button "Add Product"
    And user click combo box "Merchant *" and select value "Butler's Steak"
    And user input text box "Product Name *" with value "Medium Well Steak"
    And user input text box "Price *" with value "300000"
    And user input text box "SKU *" with value "STK1"
#    And user click button "Add Catalog"
    And stop

