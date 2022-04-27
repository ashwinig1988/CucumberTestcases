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
Feature: Verification of Zoom App functionality

  @tag1
  Scenario: Verify "Join" button should be disabled initially
    Given User Launch zoom app
    When User click on "Join a meeting" button
    Then User should see Join button is disabled 

  @tag2
  Scenario: Verify join button is enabled after entering meeting id
    Given User Launch zoom app
    And User click on "Join a meeting" button
    When User enter "9 digits" meeting id
    Then User should see Join button is enabled

  @tag3
  Scenario: Verify user should toggle on "Turn off my video" and click on join
    Given User Launch zoom app
    And User click on "Join a meeting" button
    And User enter "9 digits" meeting id
    When User toggle on "Turn off my video"
    And Click on join
    Then "Turn off my video" button should be on and user will join meeting with video

  @tag4
  Scenario: Verify user should get "Invalid meeting Id" text in pop up after aunch it back to foreground
    Given User Launch zoom app
    And User click on "Join a meeting" button
    And User enter "9 digits" meeting id
    And User toggle on "Turn off my video"
    And Click on join
    When Put the app in background 
    And launch it back to foreground 
    Then User should get  the "Invalid meeting Id" text in pop up
