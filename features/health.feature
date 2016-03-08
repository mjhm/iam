Feature: Health Feature

  Scenario: Ping Server
    When the client requests a ping
    Then the response is an object
      | attribute | type    | value |
      | ping      | boolean | true  |
