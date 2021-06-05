Feature: Testing req res get Scenario

#  Scenario: Validate get response
#    Given url 'https://reqres.in/api/users'
#    And path '2'
#    When method GET
#    Then print response

  # Class-2 -- Karate Testing
#
#  Scenario: Validate the single user information
#    Given url 'https://reqres.in/'
#    And path 'api/users/2'
#    When method GET
#    Then print response
#
#
#  Scenario: Retrieve data from GET by passing parameters
#    Given url 'https://reqres.in/api/users'
#    And path '2'
#    When method GET
#    Then status 200

  Scenario: Validate the single user information
    Given url 'https://reqres.in/api/users/2'
    And header Accept = 'Application/json'
    When method GET
    Then print response