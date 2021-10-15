Feature: Selecting parking lot


  Scenario Outline: Selecting parking lot
    Given the parking lot list is displayed
    When "parking_lot" is clicked
    Then "parking_lot" is selected as the parking lot

    Examples:
      | parking_lot |
      | Valet Parking |
      | Short-Term Parking |
      | Economy Parking |
      | Long-Term Garage Parking |
      | Long-Term Surface Parking |
