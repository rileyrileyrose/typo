Feature: Create Category
  As a blog administrator
  In order to arrange my thoughts
  I want to create Categories to group them

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create Categories
    Given I am on the admin dashboard
    When I follow "Categories"
    Then I should be on the new category page
    When I fill in "category_name" with "Cool Things"
    Then the "category_name" field should contain "Cool Things"
    Then show me the page
    And I press "Save"
    Then I should be on the admin dashboard
    When I follow "Categories"
    And my new Category should be listed