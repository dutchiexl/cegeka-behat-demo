Feature: As an administrator I want to be able to create
  and edit news, so that visitors can view this news with a nice
  format

  @api
  Scenario: An administrative user should be able create page content
    Given I am logged in as a user with the "administrator" role
    When I go to "node/add/page"
    Then I should not see "Access denied"

  @api
  Scenario: An administrator should be able to edit page content
    Given I am logged in as a user with the "administrator" role
    And "page" content:
      | title     | body         | status |
      | Test page | test content | 1      |
    When I go to "admin/content"
    And I click "Edit" in the "Test page" row
    Then I should not see "Access denied"

  @api
  Scenario: An administrator should be able to delete page content
    Given I am logged in as a user with the "administrator" role
    And "page" content:
      | title     | body         | status |
      | Test page | test content | 1      |
    When I go to "admin/content"
    And I click "Delete" in the "Test page" row
    Then I should not see "Access denied"
