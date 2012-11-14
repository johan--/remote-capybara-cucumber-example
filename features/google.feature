Feature: Using Google

@javascript
Scenario: Searching for a term
  Given I am on the Google homepage 
  When I search for "pizza perfect"
  And I pause for 2 seconds
  Then I should see results 
  And I should see "Pizza"
