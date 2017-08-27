Feature: Regression for sign up form

Background: Navigate to sign up page
    Given I navigate to the sign up page

Scenario: Sign up with Facebook is displayed
    Then I should see sign up with social media copy
    And I should see sign up with Facebook button

Scenario: Can't be blank error message is displayed
    When I click on lets fix the food chain button
    Then I should see cant be blank error message

Scenario: Be the first is displayed
    Then be the first copy is displayed

Scenario: Already have an account? Log in is displayed
    Then Already have an account? Log in is displayed

Scenario: Successful sign up with email
    When I enter valid details into the sign up form
    Then I am taken to the homepage
    And I should see that I am logged in
