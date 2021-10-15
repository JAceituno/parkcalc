Feature: Leaving date and time field validations


  Scenario Outline: Leaving Date Happy Path
    Given a user selected a "<leaving_date>"
    And entry time is 1:00 PM
    And entry date is 10/08/2021
    And leaving time is 5:00 PM
    When the user clicks calculate
    Then an estimated parking cost is calculated

    Examples:
      | leaving_date |
      | 10/10/2021 |
      | 11/31/2021 |
      | 12/31/2021 |

  Scenario Outline: Leaving Date Sad Path
    Given a user selected a "<leaving_date>"
    And entry time is 1:00 PM
    And entry date is 10/08/2021
    And leaving time is 5:00 PM
    When the user clicks calculate
    Then an error message is displayed

    Examples:
      | leaving_date |
      |  |
      | 13/31/2021 |
      | Text |
      | 5 |
      | -1 |
      | 10/07/2021 |

  Scenario Outline: Leaving Time Happy Path
    Given a user selected an "<leaving_time>"
    And entry date is 10/08/2021
    And leaving date is 10/08/2021
    And leaving time is 5:00 PM
    When the user clicks calculate
    Then an estimated parking cost is calculated

    Examples:
      | leaving_time |
      | 12:00 AM |
      | 1:30 PM |
      | 5:45 AM |

  Scenario Outline: Leaving Time Sad Path
    Given a user selected an "<leaving_time>"
    And entry date is 10/08/2021
    And leaving date is 10/08/2021
    And leaving time is 5:00 PM
    When the user clicks calculate
    Then an error message is displayed

    Examples:
      | leaving_time |
      |  |
      | 14:00 |
      | 8:00 PM |
      | Time |
