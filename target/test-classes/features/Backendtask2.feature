#Author: Ashwini Gaikwad
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Verify technical documentation

  Background: User navigates to coinmarketcap home page
    Given User on the "coinmarketcap home" page on URL "https://coinmarketcap.com/"
    Then User should logged in using "Log In" option present on Home page

  @tag1
  Scenario: Retrieve the Ethereum ID "1027" technical documentation website from the cryptocurrency call
    When User will do the  "cryptocurrency" call  for ID "1027"
    Then User get Ethereum ID "1027" technical documentation website

  @tag2
  Scenario: Verify logo URL
    When User will check logo URL "logo"
    Then User should get the logo URL "https://s2.coinmarketcap.com/static/img/coins/64x64/1027.png"

  @tag3
  Scenario: Verify symbol of the currency is "ETH"
    When User will check "symbol" of the currency
    Then User should get the symbol is "ETH"

  @tag4
  Scenario: Verify the date added
    When User will check "date_added"
    Then User should get the symbol is "2015-08-07T00:00:00.000Z"

  @tag4
  Scenario: Verify the currency tag
    When User will check "tags"
    Then User should get the symbol is "mineable"
