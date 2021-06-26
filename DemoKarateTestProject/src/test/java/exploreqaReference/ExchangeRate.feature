Feature: Exchange rate feature

  @Exchangerate
  Scenario: verify exchange rates
    Given url 'http://api.exchangeratesapi.io'
    And path '/v1/latest'
    And param access_key = 'e68555a42ff8167f6e2037bb1ab65ec3'
    When method GET
    Then print response