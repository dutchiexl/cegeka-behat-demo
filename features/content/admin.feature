Feature: As an administrator I want to be able to create
  and edit news, so that visitors can view this news with a nice
  format

  @api
  Scenario: An administrative user should be able create events.
    Given I am logged in as a user with the "administrator" role
    And I am on "node/add"
    When I click "Event" in the "main" region
    And I fill in the following:
      | Title | Cegeka party             |
      | Body  | This is an awesome party |
    And I press the "Save" button
    Then I should see the success message containing "Event Cegeka party has been created."
