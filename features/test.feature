Feature: Login

@valid
Scenario: User log in with temporary account
  Given The application is being runned
  When User wants to try out
  Then Temporary account is created

@valid
Scenario Outline: User successfully log in
  Given The application is being runned
  When User logs in with "<email>" and "<passwd>" to the system
  Then User should be on homepage

  Examples:
  | email                   | passwd  |
  | validemail@yahoo.com    | my_pass |

@invalid
Scenario Outline: Email is not correct
  Given The application is being runned
  When User logs in with "<email>" and "<passwd>" to the system
  Then Error message should appear

  Examples:
  | email         | passwd   |
  | bob@yahoo.com | 12345678 |