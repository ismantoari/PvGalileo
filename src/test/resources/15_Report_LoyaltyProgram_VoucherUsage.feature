Feature: Report - Loyalty Program - Summary

#Download Specific Date
  @web
  Scenario: Detail LP Voucher Usage
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
#   And user select sub menu "Loyalty Program"
    And user select sub menu "Voucher Usage"
    And user click combo box "Loyalty Program" and select value "PVS Loyalty"
    And user click combo box "Voucher" and select value "Cashback Heboh"
    And user click button "Download"
    And stop
