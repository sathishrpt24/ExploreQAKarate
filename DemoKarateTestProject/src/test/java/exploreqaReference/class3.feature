Feature: CRUD Operations in Karate framework Test

  @Get
  Scenario: Verify get Operation using karate testing
    Given url 'https://reqres.in'
    And path 'api/users/2'
    When method GET
    Then status 200
    And print response

  @POST
  Scenario: Verify POST Operation using karate testing
    Given url 'https://reqres.in'
    And header Content-Type = 'Application/json'
    And path 'api/users'
    And request
    """
    {
    "name": "morpheus",
    "job": "leader"
    }
    """
    When method POST
    Then status 201
    And print response

    @PUT
    Scenario: Verify Update operation using karate testing
      Given url 'https://reqres.in'
      And header Content-Type = 'Application/json'
      And path 'api/users/2'
      And request
    """
    {
    "name": "Sathish",
    "job": "ExploreQA"
    }
    """
      When method PUT
      Then status 200
      * print response
      * match response.name == 'Sathish'
      * match response.job == 'ExploreQA'

    @Delete
    Scenario: Verify Delete operation using karate testing
      Given url 'https://reqres.in'
      And path 'api/users/2'
      When method DELETE
      Then status 204
      And print response
