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

Feature: Retrieve IDs of Cryptocurrencies and convert them to Bolivian Boliviano

  Background: User navigates to coinmarketcap home page
    Given User on the "coinmarketcap home" page on URL "https://coinmarketcap.com/"
    Then User should logged in using "Log In" option present on Home page


  Scenario Outline: Retrieve IDs of Cryptocurrencies using cryptocurrency type
    When User enter "<cryptocurrencytype>" to retrieve IDs
    Then User get searchresult for the entered cryptocurrency type

    Examples: 
      | cryptocurrencytype | 
      | BTC                | 
      | USDT               | 
      | ETH                | 


  Scenario Outline: Retrieve IDs of Cryptocurrencies using map call
    When User search "<map>" to retrieve IDs
    Then User get searchresult for entered cryptocurrency type

    Examples: 
      | map             | 
      | mapcall of BTC  | 
      | mapcall of USDT | 
      | mapcall of ETH  | 

  
  Scenario Outline: Convert IDs of Cryptocurrency to Bolivian Boliviano using tools
    Given User retrieves IDs for Cryptocurrencies
    When User convert into Boliviano  using "<tools>"
    Then All the IDs for Cryptocurrencies get converted into Bolivian Boliviano

    Examples: 
      | tools |
      | tool1 |
      | tool2 |

 
  Scenario: Convert IDs of Cryptocurrency to Bolivian Boliviano using price-conversion call
    Given User retrieves IDs for Cryptocurrencies
    When User convert into Boliviano  using "price-conversion call"
    Then All the IDs for Cryptocurrencies get converted into Bolivian Boliviano
