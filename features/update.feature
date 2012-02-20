Feature: Generate
  In order to make the world a better place
  As a Corona SDK programmer
  I want to be able to update my apps to the latest version of RadLib

  Scenario: Refuse to update a non-existen app

  Scenario: Update RadLib inside an existing app
    When I run `../../bin/nakor update_radlib 'awesome_game'`
    Then the output should contain "Successfully updated 'awesome_game'"
    And the following files should exist:
      | awesome_game/main.lua   |

  Scenario: Run the generated app
    When I run `../../bin/nakor update_radlib 'awesome_game'`
    And I run `simulator awesome_game` interactively
    Then the "awesome_game" app should run without errors


