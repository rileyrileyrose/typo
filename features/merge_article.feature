Feature: Merge Articles
  As a blog administrator
  If two articles are very similar
  I want to merge them into one

  Background:
    Given the blog is set up

  Scenario: A non-admin cannot merge two articles
    And I log in as a non-admin user
    And I follow "All Articles"
    And I publish a post
    And I follow "Edit" within "td.first"
    I should not see "Merge"

  Scenario: An admin can merge two articles
    And I am logged into the admin panel
    And I log in as a non-admin user
    And I follow "All Articles"
    And I follow "Edit" within "td.last"
    I should see "Merge"
    When I fill in "merge_id" with "1"
    And I press "Merge"
    Then I should be on the all articles page
    And I should not see "Hello, World"

  Scenario: When articles are merged, the merged article should 
            contain the text of both previous articles

