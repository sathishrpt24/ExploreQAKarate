Feature: Demonstrate the GET end to End use cases

    ############################################################
    # Sc-01 Retrieve data from GET API ------------------------#
    #  Step-1 HIT Url           -------------------------------#
    #  Step-2 Retrieve response -------------------------------#
    #  step-3 Verify expected conditions-----------------------#
    ############################################################
  Scenario: Retrive data from GET API
    Given url 'https://reqres.in/api/users'
    When method GET
    Then status 200


    ############################################################
    # Sc-02 retrieve data from GET API by passing parameters---#
    #  Step-1 Set path parameter-------------------------------#
    #  Step-2 HIT Url           -------------------------------#
    #  Step-3 Retrieve response -------------------------------#
    #  step-4 Verify expected conditions-----------------------#
    ############################################################
    Scenario: Retrieve data from GET by passing parameters
      Given url 'https://reqres.in/api/users'
      When method GET
      Then status 200

    ############################################################
    # Sc-03 Retrieve data from GET API by passing Headers------#
    #  Step-1 Set path parameter-------------------------------#
    #  Step-2 HIT Url           -------------------------------#
    #  Step-3 Retrieve response -------------------------------#
    #  step-4 Verify expected conditions-----------------------#
    ############################################################
  Scenario: Retrieve data from GET by passing parameters
    Given url 'https://reqres.in/api/users'
    And path '2'
    When method GET
    Then status 200


    #################################################################
    # Sc-03 Retrieve data from GET API by passing Multiple Headers--#
    #  Step-1 Set path parameter------------------------------------#
    #  Step-2 HIT Url           ------------------------------------#
    #  Step-3 Retrieve response ------------------------------------#
    #  step-4 Verify expected conditions----------------------------#
    #################################################################
  Scenario: Retrieve data from GET by passing parameters
    Given url 'https://reqres.in/api/users'
    When method GET
    Then status 200