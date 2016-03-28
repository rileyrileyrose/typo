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
    When I fill in new Category information
    And I press "Save"
    Then I should be on admin_dashboard_path
    When I press "Categories"
    And my new Category should be listed