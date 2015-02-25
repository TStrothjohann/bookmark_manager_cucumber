Feature: Bookmark List
  In Ordner to freshen up my knowledge
  As an aspiring junior web developer
  I want to save and browse my bookmarks

    Scenario: Adding a link
      Given I am on the homepage
      When I click on the button "bookmark"
      Then I can enter a link with name, descripion and tags

    Scenario: Viewing links
      Given I am on the homepage
      Then I can see saved links

    Scenario: Filtering Links
      Given I am on the homepage
      When I click on a tag
      Then I can see the links saved with this tag