Feature: LoginFeature
  This feature deals with the login functionality of the application

  Scenario: Login with correct username and password
    Given I navigate to the login page
    And I enter the following for Login
      | username | password      |
      | admin    | adminpassword |
    When I click login button
    Then I should see the userform page

  Scenario: Login with incorrect username and password to fail
    Given I navigate to the login page
    And I enter the following for Login
      | username | password        |
      | admin    | invalidpassword |
    When I click login button
    Then I should see the userform page wrongly

  Scenario: Login with empty username and password to fail
    Given I navigate to the login page
    And I enter the following for Login
      | username | password      |
      |          |               |
    When I click login button
    Then I should see the userform page wrongly