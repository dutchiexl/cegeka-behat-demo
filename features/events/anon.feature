Feature: As a visitor I want to be able to see events

  @api
  Scenario: A visitor should see coming events on the homepage
    Given "event" content:
      | title        | body                     | field_start_date    | status |
      | Cegeka party | This is an awesome party | 2016-01-07T09:00:00 | 1      |
    When I am on the homepage
    Then I should see the heading "Cegeka party"
