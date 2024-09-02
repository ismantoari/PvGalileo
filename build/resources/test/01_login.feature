Feature: Login

  @web
  Scenario: Login with valid username and password
    Given user is on login page
    And input username "administrator"
    And input password "pvs1909~"
    When user click login button
    Then show alert pop up "Login success"
    Then user is on "dashboard" page

  @web
  Scenario: Login with invalid username
    Given user is on login page
    And input username "wrong username"
    And input password "pvs1909~"
    When user click login button
    Then show alert pop up "Incorrect username or password"
    Then user is still on the login page

  @web
  Scenario: Login with invalid password
    Given user is on login page
    And input username "administrator"
    And input password "invalid password"
    When user click login button
    Then show alert pop up "Incorrect username or password"
    Then user is still on the login page

  @web
  Scenario: Login with no username and no password
    Given user is on login page
    And input username ""
    And input password ""
    When user click login button
    Then show alert blank username "User Name is a required field"
    Then show alert blank password "Password is a required field"
    Then user is still on the login page


    #And stop