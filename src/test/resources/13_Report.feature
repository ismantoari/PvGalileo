Feature: Report

  @web
  Scenario: open report
    Given user already login as administrator
    And user select language "English"
    And user select menu "Report"
    And user click sub menu Report "Loyalty Program"
    And user select sub menu "Summary"

    And stop
    And stop