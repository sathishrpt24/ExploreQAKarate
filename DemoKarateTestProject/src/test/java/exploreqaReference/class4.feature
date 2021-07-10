Feature: Data driven feature

#  # scenario -- 1
#  Scenario: Verify Test user Creation
#    Given url 'https://c31b3b7a-620d-494d-9c6b-6781542ac8ac.mock.pstmn.io'
#    And header 'Content-type' = 'application/json'
#    And path 'user'
#    And request
#    """
#    {
#        "userid": 123,
#        "username" : "Sathish Ponnusamy",
#        "company" : "exploreQA",
#        "session" : 1
#        }
#    """
#    When method POST
#    Then status 201
#    And print response
#
#    #Accessing request details
#    * def requestdata = karate.prevRequest
#    * print requestdata
#
#    #use json path to validate the response
#    * match response.result == 'user created successfully'
#    * match response.result contains 'created'
#
#
#    #type conversion
#    * string response = response
#    * match response contains 'user created successfully'
#
#  # scenario -- 2
#  # Scenrio outline
#  Scenario Outline: Verify <username> <userid> user creation
#    Given url 'https://c31b3b7a-620d-494d-9c6b-6781542ac8ac.mock.pstmn.io'
#    And header 'Content-type' = 'application/json'
#    And path 'user'
#    And request
#    """
#      {
#        "userid": <userid>,
#        "username" : "<username>",
#        "company" : "<company>",
#        "session" : 1
#        }
#    """
#    When method POST
#    Then status 201
#    And print response
#
#    #use json path to validate the response
#    * match response.result == '<result>'
#    * match response.result contains 'created'
#
#    #type conversion
#    * string response = response
#    * match response contains 'user created successfully'
#    Examples:
#      | userid | username          | company   | result                    |
#      | 1      | Sathish Ponnusamy |   ExploreQA | user created successfully |
#      | 2      | Prasan Das        | ExploreQA | user created successfully |
#      | 3      | ExploreQA community | ExploreQA | user created successfully |
#
#    # Scenario - 3
#    # Reading files in Karate framework
#  Scenario:  Reading files
#    #Reading json files
#    * def data1 =  read('testdata/jsonData.json')
#    * print data1
#    * print data1.name
#    * print data1.phone
#    * print data1.phone[0]
#    * print data1.children[0]
#    * print data1.children[1].name
#    * print karate.keysOf(data1.children[1])
#    * print karate.valuesOf(data1.children[1])
#    * print karate.sizeOf(data1.children)
#    # Reading csv files
#    * def csvData =  read('testdata/userCreation.csv')
#    * print csvData

    # Scenario - 4
  Scenario Outline: Verify <username> <userid> user creation
    Given url 'https://c31b3b7a-620d-494d-9c6b-6781542ac8ac.mock.pstmn.io'
    And header 'Content-type' = 'application/json'
    And path 'user'
    And request
    """
    {
        "userid": <userid>,
        "username" : "<username>",
        "company" : "<company>",
        "session" : 1
        }
    """
    When method POST
    Then status 201
    And print response

    #use json path to validate the response
    * match response.result == '<result>'
    * match response.result contains 'created'

    #type conversion
    * string response = response
    * match response contains 'user created successfully'
    Examples:
      |read('testdata/userCreation.csv')|