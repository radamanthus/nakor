Feature: Generate
  In order to make the world a better place
  As a CLI
  I want to be able to generate new apps

  Scenario: Generate a new app in a non-existing folder
    When I run `../../bin/nakor generate awesome_game`
    Then the output should contain "Successfully generated 'awesome_game'"
    And the following files should exist:
      | awesome_game/main.lua   |

  Scenario: Warn the user when generating an app will overwrite an existing folder
