Feature: Login Test

  Scenario Outline 101: Verify valid login with valid credentials

    Given User is on the resevation hotel login page using <url>
    When User enters valid username<valid username> and password<Valid password>
    Then User should be able to login successfully

    Examples:
      | url                         | valid username | Valid password |
      | http://adactinhotelapp.com/ | test username  | test password  |


  Scenario Outline 102 : Verify the check-out date field accepts a later date than the check-in date

    Given User is on the resevation hotel login page using <url>
    When User enters valid username <valid username> and password <valid password>
    Then User should be able to login successfully
    And  User should be able to select location
    And  User should be able to select hotel
    And  User should be able to select room type
    And  User should be able to select number of rooms
    And  User should be able to enter the check-in date later than the check-out date
    Then User should see an error message indicating that the check-out date must be later than the check-in date


    Examples:
      | url                                         | valid username | valid password |
      | http://adactinhotelapp.com/                 | test username  | test password  |
      | location                                    | Sydney Hotel   |
      | Hotel                                       | creek          |
      | Room type                                   | standard       |
      | number of rooms                             | 1              |
      | Check in date later than the check-out date | 7              |
      | Check-out date today                        | 5              |

  Scenario Outline 103: Verify the error is displayed when the date field is in the past.

    Given User is on the resevation hotel login page using <url>
    When User enters valid username <valid username> and password <valid password>
    Then User should be able to login successfully
    And  User should be able to select location
    And  User should be able to select hotel
    And  User should be able to select room type
    And  User should be able to select number of rooms
    And  User should be able to enter the check-out date that is ealier  than the check-in date
    Then User should see an error message indicating that the check-in date must be later than the check-out date


    Examples:
      | url                         | valid username | valid password |
      | http://adactinhotelapp.com/ | test username  | test password  |
      | location                    | Sydney Hotel   |
      | Hotel                       | creek          |
      | Room type                   | standard       |
      | number of rooms             | 1              |
      | Check in date today         | 5              |
      | Check-out date is today     | 3              |


  Scenario Outline 104: Verify if the locations in Select hotel page are displayed according to the location  selected in the search hotel

    Given User is on the resevation hotel login page using <url>
    When  User enters valid username <valid username> and password <valid password>
    Then  User should be able to login successfully
    And   User should be able to select location
    And   User should be able to select hotel
    And   User should be able to select room type
    And   User should be able to select number of rooms
    And   User should be able to enter the check-out date
    And   User should be able to select number of adults
    And   User should be able to select number of children
    And   User should be able to click on search button
    Then  User should verify that the hotel displayed is the same as selected in search hotel form.


    Examples:
      | url                         | valid username | valid password |
      | http://adactinhotelapp.com/ | test username  | test password  |
      | location                    | Sydney Hotel   |
      | Hotel                       | creek          |
      | Room type                   | standard       |
      | number of rooms             | 1              |
      | Check-out date is today     | 1              |
      | number of adults            | 1              |
      | number of children          | 0              |



