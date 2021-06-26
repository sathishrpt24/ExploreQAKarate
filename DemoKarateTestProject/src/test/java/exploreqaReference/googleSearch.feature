Feature: Verify google search API response

  Scenario: Verify google search results for explore QA
    Given url 'https://www.google.com'
    And path 'search'
    And params '{q:'explore+qa',safe:'active',sxsrf:'ALeKk0087wK77UCSLjt3 dGncfest5C8AgA 3A1624707676009',source:'hp',ei:'WxLXYMScO8r1juMP68-_8AQ',iflsig:'AINFCbYAAAAAYNcgbJJkxS8NrICKt5RUDVF69RPCHwrh',oq:'exploreqa',gs_lcp:'Cgdnd3Mtd2l6EAEYADIECAAQCjIECAAQCjIECAAQCjoHCCMQ6gIQJzoECCMQJzoFCAAQkQI6CAgAELEDEIMBOgQILhBDOg4ILhCxAxCDARDHARCjAjoICC4QsQMQgwE6AggAOgQIABBDOgcIABCxAxBDOgoIABCxAxCDARBDOgUIABCxAzoICAAQsQMQkQI6BggAEAoQHjoICAAQBRAKEB5Q7ltY7nFg_IEBaAFwAHgAgAH4AYgBpAmSAQUwLjguMZgBAKABAaoBB2d3cy13aXqwAQo',sclient:'gws-wiz'}'
    When method GET
    Then print response
    * karate.prevRequest.url
