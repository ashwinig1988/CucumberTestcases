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
Feature: Verification of Linked App functionality

  @tag1
  Scenario: Verify user should Launch LinkedIn app 
    Given User opened mobile screen
    And Found LinkedIn App in his mobile
    When User click on LinkedIn App
    Then LinkedIn app should be launch  

  @tag2
  Scenario: Verify user should slide and verify each text on the left slide after swipe
    Given User opened mobile screen
    And Found LinkedIn App in his mobile
    And User click on LinkedIn App
    And User is no home page
    When Swipe left till last slide
    Then User should verify the text on each one

  @tag3
  Scenario: Verify login using correct credentials
    Given User launched the LinkedIn app
    And Click on the "Sign In" button
    When User enter correct "Username" and "password"
    Then The user should log in successfully
    And User should get the home page

  @tag4
  Scenario: Verify search for "Callsign" text and "See all results" button
    Given User launched the LinkedIn app
    And logged in with correct "username" and "password"
    When User enter "Callsign" text in search box
    Then User should see "See all results"

  @tag5
  Scenario: Verify search result after clicking on "See all results" button for "Callsign" text
    Given User launched the LinkedIn app
    And logged in with correct "username" and "password"
    And User entered "Callsign" text in search box
    And user got "See all results"  button
    When User click on "See all results" button
    Then User should see all the results listings have "Callsign" in the name 

  @tag5
  Scenario: Verify search result after clicking on "See all results" button for "Callsign" text
    Given User launched the LinkedIn app
    And logged in with correct "username" and "password"
    And User entered "Callsign" text in search box
    And user got "See all results"  button
    When User click on "See all results" button
    Then User should see all the results listings have "Callsign" in the name 

  @tag6
  Scenario: Verify "My connections" text appears beneath with cross mark 
    Given User launched the LinkedIn app
    And logged in with correct "username" and "password"
    And opened chat from top right
    When User tap on filter icon in "Search messages"
    And Enter text to search message
    And click on "My Connection" radio button
    Then "My connections" text appears beneath with "cross" mark 
