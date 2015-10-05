Feature: As an administrator I want to be able to see create and edit events.

  @api
  Scenario: An administrative user should be able create events
    Given I am logged in as a user with the "administrator" role
    When I go to "node/add/event"
    Then I should not see "Access denied"
