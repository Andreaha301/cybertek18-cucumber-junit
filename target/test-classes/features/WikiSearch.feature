@wiki
Feature: Wiki title and search verifications

  Background: user is on the Wiki home page
    Given User is on the Wikipedia home page


  Scenario: Search functionality title verification
    When User searches "Steve Jobs" in the wiki search page
    Then User should see "Steve Jobs" in the wiki title


  Scenario:  Search functionality header verification
    When User searches "Steve Jobs" in the wiki search page
    Then User should see "Steve Jobs" in the header


  @wikiScenarioOutline
  Scenario Outline: Search functionality header verification
    #Whe can use "Scenario Temple:" instead of "Scenario Outline:"

    When User searches "<searchValue>" in the wiki search page
    Then User should see "<expectedTitle>" in the wiki title
    Then User should see "<expectedHeader>" in the header
    Then User should see "<expectedImageHeader>" in the image header
    #I can also use And or *, instead od Then

    # We can use "Scenarios:" instead of "Examples:" also
    Examples: Example test data for wikipedia search
      | searchValue       | expectedTitle     | expectedHeader    | expectedImageHeader |
      | Steve Jobs        | Steve Jobs        | Steve Jobs        | Steve Jobs          |
      | Cristiano Ronaldo | Cristiano Ronaldo | Cristiano Ronaldo | Cristiano Ronaldo   |
      | Lionel Messi      | Lionel Messi      | Lionel Messi      | Lionel Messi        |
      | Mike Tyson        | Mike Tyson        | Mike Tyson        | Mike Tyson          |

