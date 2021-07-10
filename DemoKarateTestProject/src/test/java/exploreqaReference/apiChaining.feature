Feature: API Chaining
  # scenario -- 1
  Scenario: Verify Test user Creation
    Given url 'https://c31b3b7a-620d-494d-9c6b-6781542ac8ac.mock.pstmn.io'
    And header 'Content-type' = 'application/json'
    And path 'user'
    And request
    """
    {
        "userid": 123,
        "username" : "Sathish Ponnusamy",
        "company" : "exploreQA",
        "session" : 1
        }
    """
    When method POST
    Then status 201
    And print response

    #Accessing request details
    * def requestdata = karate.prevRequest
    * print requestdata

    #use json path to validate the response
    * match response.result == 'user created successfully'
    * match response.result contains 'created'

    #type conversion
    * string response = response
    * match response contains 'user created successfully'

    Given url 'https://c31b3b7a-620d-494d-9c6b-6781542ac8ac.mock.pstmn.io'
    And path 'user'
    When method GET
    Then print response
    * def id = response[0].userid

    Given url 'https://c31b3b7a-620d-494d-9c6b-6781542ac8ac.mock.pstmn.io'
    And path 'user/'+id
    When method GET
    Then print response