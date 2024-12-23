Feature: Broadcast

  #broadcast loyalty
  @web
  Scenario: Broadcast Loyalty
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Loyalty"
    And user search "Loyalty SQA 1"
    And user click burger menu
    And user click list "Broadcast"
    And user click dropdown "Template Type" and select value "Broadcast Point"
    And user click combo box "Group Name *" and select value "Age's Group"
    When user click button "Send Broadcast"
    Then show alert pop up "Broadcast Success"

    
  #broadcast Promo
  @web
  Scenario: Broadcast Promo
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Promo"
    And user search "QA Promo"
    And user click burger menu
    And user click list "Broadcast"
    And user click dropdown "Template Type" and select value "Broadcast Point"
    And user click combo box "Group Name *" and select value "Age's Group"
    When user click button "Send Broadcast"
    Then show alert pop up "Broadcast Success"
    
  #broadcast Voucher
  @web
  Scenario: Broadcast Voucher
    Given user already login as administrator
    And user select language "English"
    And user select menu "Loyalty Program"
    And user select sub menu "Voucher"
    And user search "Promo Loyalty PQA 1"
    And user click burger menu
    And user click list "Broadcast"
    And user click dropdown "Template Type" and select value "Broadcast Point"
    And user click combo box "Group Name *" and select value "Age's Group"
    When user click button "Send Broadcast"
    Then show alert pop up "Broadcast Success"