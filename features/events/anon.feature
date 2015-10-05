Feature: As a visitor I want to be able to see events

  @api
  Scenario: A visitor should see the cegeka party event on the homepage
    Given "event" content:
      | title        | body                     | status |
      | Cegeka party | This is an awesome party | 1      |
    When I am on the homepage
    Then I should see the heading "Cegeka party"

  @api
  Scenario: A visitor should see the Behat presentation event on the homepage
    Given "event" content:
      | title              | body                                     | status |
      | Behat presentation | This is even more awesome than the party | 1      |
    When I am on the homepage
    Then I should see the heading "Behat presentation"
