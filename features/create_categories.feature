Feature: Create Categories
  As a blog administrator
  In order to organize my blog
  I want to be able to create and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create and edit a category
    Given I am on the new categories page
    When I fill in "category_name" with "CatName"
    And I fill in "category_keywords" with "CatCat"
    And I fill in "category_permalink" with "CattyLink"
    And I fill in "category_description" with "Lots of Cats"
    And I press "Save"
    Then I should see "CatName"
    When I should see "CatCat"
    Then I should see "CattyLink"
    Then I should see "Lots of Cats"
    
    Then I follow "CatName"
    
    When I fill in "category_name" with "CatNameDeux"
    And I fill in "category_keywords" with "CatCatCat"
    And I fill in "category_permalink" with "CattyLinkCat"
    And I fill in "category_description" with "Lot More of Cats"
    And I press "Save"
    Then I should see "CatNameDeux"
    When I should see "CatCatCat"
    Then I should see "CattyLinkCat"
    Then I should see "Lot More of Cats"
    