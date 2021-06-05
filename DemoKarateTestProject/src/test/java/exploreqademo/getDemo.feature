Feature: Testing req res get Scenario

  Scenario: Validate get response
    Given url 'https://reqres.in/api/users'
    And path '2'
    When method GET
    Then print response