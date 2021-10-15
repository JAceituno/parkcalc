Feature: Entry date and time field validations


  Scenario Outline: Entry Date Happy Path
    Given a user selected an "<entry_date>"
    And entry time is 1:00 PM
    And leaving date is 10/08/2021
    And leaving time is 5:00 PM
    When the user clicks calculate
    Then an estimated parking cost is calculated

    Examples:
      | entry_date |
      | 10/06/2021 |
      | 09/31/2021 |
      | 12/31/2020 |

  Scenario Outline: Entry Date Sad Path
    Given a user selected an "<entry_date>"
    And entry time is 1:00 PM
    And leaving date is 10/08/2021
    And leaving time is 5:00 PM
    When the user clicks calculate
    Then an error message is displayed

    Examples:
      | entry_date |
      |  |
      | 13/31/2021 |
      | Text |
      | 5 |
      | -1 |

  Scenario Outline: Entry Time Happy Path
    Given a user selected an "<entry_time>"
    And entry date is 10/08/2021
    And leaving date is 10/08/2021
    And leaving time is 5:00 PM
    When the user clicks calculate
    Then an estimated parking cost is calculated

    Examples:
      | entry_time |
      | 12:00 AM |
      | 1:30 PM |
      | 5:45 AM |

  Scenario Outline: Entry Time Sad Path
    Given a user selected an "<entry_time>"
    And entry date is 10/08/2021
    And leaving date is 10/08/2021
    And leaving time is 5:00 PM
    When the user clicks calculate
    Then an error message is displayed

    Examples:
      | entry_time |
      |  |
      | 14:00 |
      | 8:00 PM |
      | Time |
