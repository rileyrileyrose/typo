Feature: Create Category
  As a blog administrator
  In order to arrange my thoughts
  I want to create Categories to group them

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create Categories
    Given that I am on the admin dashboard
    When I click on "Categories" in the sidebar
    Then I should be on the new Category page
    When I fill in new Category information
    And I press "Save"
    Then I should be on the admin panel
    When I click on "Categories"
    And my new Category should be listed