Feature: Health Feature

  Scenario: Pinging the Server
    When the client requests "ping"
    Then the response is a JSON object
      """
      {"ping": true}
      """
