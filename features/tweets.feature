Feature: Tweets
  In order to know high tech news
  As a humble user
  I want to see tweets of @ciklum

  @javascript
  Scenario: See tweets
    When I visit a homepage
    Then I should see 20 tweets

  @javascript
  Scenario: See more tweets
    Given I see tweets
    When I click "more"
    And I wait for the ajax request to finish
    Then I should see 40 tweets

  @javascript
  Scenario: Favorite tweet
    Given I see tweets
    When I click a "star-empty" "icon"
    Then I should see tweet favorited 

  @javascript
  Scenario: Favorite list
    Given I see tweets
    When I click a "star-empty" "icon"
    And I click a "star-empty" "icon"
    When I click "Favorites"
    Then I should see header "Favorite tweets"
    And I should see 2 favorite tweets


