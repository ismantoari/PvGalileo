Feature: Report - Loyalty Program - Voucher Usage

#  check loyalty program Voucher Usage page
  @web
  Scenario: Check Loyalty Program Voucher Usage Page
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Loyalty Program"
    When user select sub menu "Voucher Usage"
    Then user is on "loyalty program voucher usage" page

#Download Specific Date
  @web
  Scenario: Detail LP Voucher Usage
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu report "Loyalty Program"
    And user select sub menu "Voucher Usage"
    And user click combo box "Loyalty Program" and select value "PVS Loyalty"
    And user click combo box "Voucher" and select value "Cashback Heboh"
    When user click button "Download"
    Then stop
