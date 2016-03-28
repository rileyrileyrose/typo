Feature: Create Category
  As a blog administrator
  In order to arrange my thoughts
  I want to create Categories to group them

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    Given I am on the admin dashboard
    When I follow "Categories"
    Then I should be on the new category page

  Scenario: Successfully create Categories
    When I fill in "category_name" with "Cool Things"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Cool Things"

  Scenario: Successfully edit a Category
   When I go to the general category
   When I fill in "category_name" with "Most Gens"
   And I press "Save"
   Then I should be on the new category page
   And I should see "Most Gens"
   And I should not see "General"