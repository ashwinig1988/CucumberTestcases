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
Feature: Verification of "show rows" and "filter" functinality
 

  @tag1
  Scenario: Verification of rows count after selecting a value from "Show Rows" drop down
    Given User opened "https://coinmarketcap.com/" website
    And click on "Show Rows" drop down
    When User select "100" from drop
    Then User should displayed "100" rows only  
   

  @tag2
  Scenario Outline: Verify filter button
    Given  User opened "https://coinmarketcap.com/" website
     And click on "Filters" button
    When User provide filter <value> and <range>
    Then displayed record on page are correct as per the filter applied

    Examples: 
      | value  | range |
      | MarketCap |      $1B - $10B | 
      | Price |     $101 - $1000 | 
