module.exports = function () {
    this.Before(function (scenario) {
        this.actionwords = Object.create(require('./actionwords.js').Actionwords);
    });

    this.After(function (scenario) {
        this.actionwords = null;
    });


    this.Given(/^the parking lot list is displayed$/, function (__datatable, callback) {
        this.actionwords.theParkingLotListIsDisplayed(__datatable);
        callback();
    });

    this.When(/^"(.*)" is clicked$/, function (parking_lot, callback) {
        this.actionwords.parkingLotIsClicked(parking_lot);
        callback();
    });

    this.Then(/^"(.*)" is selected as the parking lot$/, function (parking_lot, callback) {
        this.actionwords.parkingLotIsSelectedAsTheParkingLot(parking_lot);
        callback();
    });


    this.Given(/^a user selected an "(.*)"$/, function (entry_date, __datatable, callback) {
        this.actionwords.aUserSelectedAnEntryDate(entry_date, __datatable);
        callback();
    });

    this.Given(/^entry time is 1:00 PM$/, function (callback) {
        this.actionwords.entryTimeIs100PM();
        callback();
    });

    this.Given(/^leaving date is 10/08/2021$/, function (callback) {
        this.actionwords.leavingDateIs10082021();
        callback();
    });

    this.Given(/^leaving time is 5:00 PM$/, function (callback) {
        this.actionwords.leavingTimeIs500PM();
        callback();
    });

    this.When(/^the user clicks calculate$/, function (callback) {
        this.actionwords.theUserClicksCalculate();
        callback();
    });

    this.Then(/^an estimated parking cost is calculated$/, function (callback) {
        this.actionwords.anEstimatedParkingCostIsCalculated();
        callback();
    });



    this.Given(/^entry date is 10/08/2021$/, function (callback) {
        this.actionwords.entryDateIs10082021();
        callback();
    });

    this.Then(/^an error message is displayed$/, function (callback) {
        this.actionwords.anErrorMessageIsDisplayed();
        callback();
    });

    this.Given(/^a user selected a "(.*)"$/, function (leaving_date, __datatable, callback) {
        this.actionwords.aUserSelectedALeavingDate(leaving_date, __datatable);
        callback();
    });

    this.Given(/^a users selects Valet Parking$/, function (callback) {
        this.actionwords.aUsersSelectsValetParking();
        callback();
    });


    this.Given(/^enters an entry date "(.*)"$/, function (entry_date, callback) {
        this.actionwords.entersAnEntryDateEntryDate(entry_date);
        callback();
    });

    this.Given(/^enters an entry time "(.*)"$/, function (entry_time, callback) {
        this.actionwords.entersAnEntryTimeEntryTime(entry_time);
        callback();
    });

    this.Given(/^selects "(.*)"$/, function (entry_am_pm, callback) {
        this.actionwords.selectsEntryAmPm(entry_am_pm);
        callback();
    });

    this.Given(/^enters a leaving date "(.*)"$/, function (leaving_date, callback) {
        this.actionwords.entersALeavingDateLeavingDate(leaving_date);
        callback();
    });

    this.Given(/^enters a leaving time "(.*)"$/, function (leaving_time, callback) {
        this.actionwords.entersALeavingTimeLeavingTime(leaving_time);
        callback();
    });

    this.When(/^users clicks calculate$/, function (callback) {
        this.actionwords.usersClicksCalculate();
        callback();
    });

    this.Then(/^the total parking fee should be "(.*)"$/, function (cost, callback) {
        this.actionwords.theTotalParkingFeeShouldBeCost(cost);
        callback();
    });

    this.Given(/^a users selects Short-Term Parking$/, function (callback) {
        this.actionwords.aUsersSelectsShortTermParking();
        callback();
    });

    this.Given(/^a users selects Economy Parking$/, function (callback) {
        this.actionwords.aUsersSelectsEconomyParking();
        callback();
    });

    this.Given(/^a users selects Long-Term Garage Parking$/, function (callback) {
        this.actionwords.aUsersSelectsLongTermGarageParking();
        callback();
    });

    this.Given(/^a users selects Long-Term Surface Parking$/, function (callback) {
        this.actionwords.aUsersSelectsLongTermSurfaceParking();
        callback();
    });
}
