Feature: Tokens Feature

  Scenario: The user logs in and gets a token
    When the client posts to "tokens"
      """
      {"username": "a@rms.tst", "password": "apassword"}
      """
    Then the response is a JSON object
      """
      {"token": "abcdef"}
      """
