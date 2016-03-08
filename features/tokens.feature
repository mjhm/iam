Feature: tokens Feature


  Background:
    Given noop

  Scenario: Tokens dummy
    When the client requests a token
    Then the response is a token
