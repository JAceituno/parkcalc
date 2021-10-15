Feature: Calculations


  Scenario Outline: Valet Parking
    Given a users selects Valet Parking
    And enters an entry date "<entry_date>"
    And enters an entry time "<entry_time>"
    And selects "<entry_am_pm>"
    And enters a leaving date "<leaving_date>"
    And enters a leaving time "<leaving_time>"
    And selects "<leaving_am_pm>"
    When users clicks calculate
    Then the total parking fee should be "<cost>"

    Examples:
      | entry_date | entry_time | entry_am_pm | leaving_date | leaving_time | leaving_am_pm | cost |
      | 10/14/2021 | 2:00 | PM | 10/14/2021 | 2:43 | PM | 12 |
      | 10/15/2021 | 8:30 | AM | 10/15/2021 | 9:30 | PM | 12 |
      | 10/16/2021 | 4:03 | PM | 10/16/2021 | 8:10 | PM | 12 |
      | 10/16/2021 | 10:00 | AM | 10/16/2021 | 6:20 | PM | 18 |
      | 10/17/2021 | 11:10 | PM | 10/18/2021 | 5:15 | AM | 18 |
      | 10/19/2021 | 8:13 | AM | 10/20/2021 | 8:05 | AM | 18 |
      | 10/21/2021 | 6:42 | PM | 10/25/2021 | 3:00 | PM | 72 |
      | 10/26/2021 | 8:00 | AM | 11/02/2021 | 8:00 | AM | 126 |
      | 11/03/2021 | 7:15 | AM | 11/13/2021 | 9:07 | PM | 198 |
      | 11/14/2021 | 9:11 | PM | 12/22/2021 | 5:16 | AM | 684 |

  Scenario Outline: Short-Term Hourly Parking
    Given a users selects Short-Term Parking
    And enters an entry date "<entry_date>"
    And enters an entry time "<entry_time>"
    And selects "<entry_am_pm>"
    And enters a leaving date "<leaving_date>"
    And enters a leaving time "<leaving_time>"
    And selects "<leaving_am_pm>"
    When users clicks calculate
    Then the total parking fee should be "<cost>"

    Examples:
      | entry_date | entry_time | entry_am_pm | leaving_date | leaving_time | leaving_am_pm | cost |
      | 10/14/2021 | 2:00 | PM | 10/14/2021 | 2:43 | PM | 2 |
      | 10/15/2021 | 8:30 | AM | 10/15/2021 | 9:30 | PM | 2 |
      | 10/16/2021 | 4:03 | PM | 10/16/2021 | 8:10 | PM | 9 |
      | 10/16/2021 | 10:00 | AM | 10/16/2021 | 6:20 | PM | 9 |
      | 10/17/2021 | 11:10 | PM | 10/18/2021 | 5:15 | AM | 9 |
      | 10/19/2021 | 8:13 | AM | 10/20/2021 | 8:05 | AM | 9 |
      | 10/21/2021 | 6:42 | PM | 10/25/2021 | 3:00 | PM | 36 |
      | 10/26/2021 | 8:00 | AM | 11/02/2021 | 8:00 | AM | 54 |
      | 11/03/2021 | 7:15 | AM | 11/13/2021 | 9:07 | PM | 90 |
      | 11/14/2021 | 9:11 | PM | 12/22/2021 | 5:16 | AM | 297 |

  Scenario Outline: Economy Parking
    Given a users selects Economy Parking
    And enters an entry date "<entry_date>"
    And enters an entry time "<entry_time>"
    And selects "<entry_am_pm>"
    And enters a leaving date "<leaving_date>"
    And enters a leaving time "<leaving_time>"
    And selects "<leaving_am_pm>"
    When users clicks calculate
    Then the total parking fee should be "<cost>"

    Examples:
      | entry_date | entry_time | entry_am_pm | leaving_date | leaving_time | leaving_am_pm | cost |
      | 10/14/2021 | 2:00 | PM | 10/14/2021 | 2:43 | PM | 2 |
      | 10/15/2021 | 8:30 | AM | 10/15/2021 | 9:30 | PM | 2 |
      | 10/16/2021 | 4:03 | PM | 10/16/2021 | 8:10 | PM | 9 |
      | 10/16/2021 | 10:00 | AM | 10/16/2021 | 6:20 | PM | 17 |
      | 10/17/2021 | 11:10 | PM | 10/18/2021 | 5:15 | AM | 13 |
      | 10/19/2021 | 8:13 | AM | 10/20/2021 | 8:05 | AM | 24 |
      | 10/21/2021 | 6:42 | PM | 10/25/2021 | 3:00 | PM | 96 |
      | 10/26/2021 | 8:00 | AM | 11/02/2021 | 8:00 | AM | 168 |
      | 11/03/2021 | 7:15 | AM | 11/13/2021 | 9:07 | PM | 264 |
      | 11/14/2021 | 9:11 | PM | 12/22/2021 | 5:16 | AM | 905 |

  Scenario Outline: Long-Term Garage Parking
    Given a users selects Long-Term Garage Parking
    And enters an entry date "<entry_date>"
    And enters an entry time "<entry_time>"
    And selects "<entry_am_pm>"
    And enters a leaving date "<leaving_date>"
    And enters a leaving time "<leaving_time>"
    And selects "<leaving_am_pm>"
    When users clicks calculate
    Then the total parking fee should be "<cost>"

    Examples:
      | entry_date | entry_time | entry_am_pm | leaving_date | leaving_time | leaving_am_pm | cost |
      | 10/14/2021 | 2:00 | PM | 10/14/2021 | 2:43 | PM | 2 |
      | 10/15/2021 | 8:30 | AM | 10/15/2021 | 9:30 | PM | 2 |
      | 10/16/2021 | 4:03 | PM | 10/16/2021 | 8:10 | PM | 10 |
      | 10/16/2021 | 10:00 | AM | 10/16/2021 | 6:20 | PM | 12 |
      | 10/17/2021 | 11:10 | PM | 10/18/2021 | 5:15 | AM | 12 |
      | 10/19/2021 | 8:13 | AM | 10/20/2021 | 8:05 | AM | 12 |
      | 10/21/2021 | 6:42 | PM | 10/25/2021 | 3:00 | PM | 48 |
      | 10/26/2021 | 8:00 | AM | 11/02/2021 | 8:00 | AM | 72 |
      | 11/03/2021 | 7:15 | AM | 11/13/2021 | 9:07 | PM | 120 |
      | 11/14/2021 | 9:11 | PM | 12/22/2021 | 5:16 | AM | 396 |

  Scenario Outline: Long-Term Surface Parking
    Given a users selects Long-Term Surface Parking
    And enters an entry date "<entry_date>"
    And enters an entry time "<entry_time>"
    And selects "<entry_am_pm>"
    And enters a leaving date "<leaving_date>"
    And enters a leaving time "<leaving_time>"
    And selects "<leaving_am_pm>"
    When users clicks calculate
    Then the total parking fee should be "<cost>"

    Examples:
      | entry_date | entry_time | entry_am_pm | leaving_date | leaving_time | leaving_am_pm | cost |
      | 10/14/2021 | 2:00 | PM | 10/14/2021 | 2:43 | PM | 2 |
      | 10/15/2021 | 8:30 | AM | 10/15/2021 | 9:30 | PM | 2 |
      | 10/16/2021 | 4:03 | PM | 10/16/2021 | 8:10 | PM | 10 |
      | 10/16/2021 | 10:00 | AM | 10/16/2021 | 6:20 | PM | 10 |
      | 10/17/2021 | 11:10 | PM | 10/18/2021 | 5:15 | AM | 10 |
      | 10/19/2021 | 8:13 | AM | 10/20/2021 | 8:05 | AM | 10 |
      | 10/21/2021 | 6:42 | PM | 10/25/2021 | 3:00 | PM | 40 |
      | 10/26/2021 | 8:00 | AM | 11/02/2021 | 8:00 | AM | 60 |
      | 11/03/2021 | 7:15 | AM | 11/13/2021 | 9:07 | PM | 100 |
      | 11/14/2021 | 9:11 | PM | 12/22/2021 | 5:16 | AM | 330 |
