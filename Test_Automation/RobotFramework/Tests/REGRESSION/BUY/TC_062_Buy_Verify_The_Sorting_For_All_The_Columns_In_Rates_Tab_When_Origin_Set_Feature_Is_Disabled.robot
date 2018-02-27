*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify The Sorting For All The Columns In Rates Tab When Origin Set Feature Is Disabled

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}

*** Test Cases ***
Validate Navigate To Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validation Navigate To Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Vendor Price Lists
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set 'From Date'
    [Tags]    REGRESSION
    Verify Set From Date        1/1/2017

Validate Click On Vendor Price Lists Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Click Vendor Price Lists Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Vendor Price List Grid First Row Inline Action Button

Validate Select View Price List Detail Inline Action Item
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VIEW PRICE LIST DETAIL INLINE ITEM}

Validate Set Vendor Price List Detail Grid Settings
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Destination Column From Vendor Price List Detail Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Vendor Price List Detail Grid        ${DESTINATION COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Destination Column Of Vendor Price List Detail Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Ascending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows Of Destination Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Grid     ${DESTINATION COLUMN NAME}

Validate Ascending Sorted Data For Destination Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Destination Column Of Vendor Price List Detail Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Descending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows Of Destination Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Grid     ${DESTINATION COLUMN NAME}

Validate Descending Sorted Data For Destination Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Set Vendor Price List Detail Grid Settings For Begin Date Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings       ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Begin Date Column From Vendor Price List Detail Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Vendor Price List Detail Grid        ${BEGIN DATE COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Begin Date Column Of Vendor Price List Detail Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Ascending Order      ${BEGIN DATE COLUMN NAME}

Validate Get All Rows of Begin Date Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Grid     ${BEGIN DATE COLUMN NAME}

Validate Ascending Sorted Data For Begin date Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Begin Date Column Of Vendor Price List Detail Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Descending Order      ${BEGIN DATE COLUMN NAME}

Validate Get All Rows Of Begin Date Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Grid     ${BEGIN DATE COLUMN NAME}

Validate Descending Sorted Data For Begin Date Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Set Vendor Price List Detail Grid Settings For Rate Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Rate Column From Vendor Price List Detail Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Rate Column From Vendor Price List Detail Grid        ${RATE COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Rate Column Of Vendor Price List Detail Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Ascending Order      ${RATE COLUMN NAME}

Validate Get All Rows Of Rate Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Rate Column From Vendor Price List Detail Grid     ${RATE COLUMN NAME}

Validate Ascending Sorted Data For Rate Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Rate Column Of Vendor Price List Detail Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Descending Order      ${RATE COLUMN NAME}

Validate Get All Rows Of Rate Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Rate Column From Vendor Price List Detail Grid     ${RATE COLUMN NAME}

Validate Descending Sorted Data For Rate Column Of Vend or Price List Detail Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Set Vendor Price List Detail Grid Settings For Percentage Change Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Percentage Change Column From Vendor Price List Detail Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Vendor Price List Detail Grid        ${PERCENTAGE CHANGE COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Percentage Change Column Of Vendor Price List Detail Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Ascending Order      ${PERCENTAGE CHANGE COLUMN NAME}

Validate Get All Rows Of Percentage Change Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Grid     ${PERCENTAGE CHANGE COLUMN NAME}

Validate Ascending Sorted Data For Percentage Change Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Percentage Change Column Of Vendor Price List Detail Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Descending Order      ${PERCENTAGE CHANGE COLUMN NAME}

Validate Get All Rows Of Percentage Change Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Grid     ${PERCENTAGE CHANGE COLUMN NAME}

Validate Descending Sorted Data For Percentage Change Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Set Vendor Price List Detail Grid Settings For Amount Change Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Amount Change Column From Vendor Price List Detail Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Vendor Price List Detail Grid        ${AMOUNT CHANGE COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Amount Change Column Of Vendor Price List Detail Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Ascending Order      ${AMOUNT CHANGE COLUMN NAME}

Validate Get All Rows Of Amount Change Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Grid     ${AMOUNT CHANGE COLUMN NAME}

Validate Ascending Sorted Data For Amount Change Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Amount Change Column Of Vendor Price List Detail Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Descending Order      ${AMOUNT CHANGE COLUMN NAME}

Validate Get All Rows Of Amount Change Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Grid     ${AMOUNT CHANGE COLUMN NAME}

Validate Descending Sorted Data For Amount Change Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Set Vendor Price List Detail Grid Settings For Previous Rate Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Previous Rate Column From Vendor Price List Detail Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Rate Column From Vendor Price List Detail Grid         ${PREVIOUS RATE COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Previous Rate Column Of Vendor Price List Detail Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Ascending Order      ${PREVIOUS RATE COLUMN NAME}

Validate Get All Rows Of Previous Rate Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Rate Column From Vendor Price List Detail Grid      ${PREVIOUS RATE COLUMN NAME}

Validate Ascending Sorted Data For Previous Rate Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Previous Rate Column Of Vendor Price List Detail Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Descending Order      ${PREVIOUS RATE COLUMN NAME}

Validate Get All Rows Of Previous Rate Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Rate Column From Vendor Price List Detail Grid      ${PREVIOUS RATE COLUMN NAME}

Validate Descending Sorted Data For Previous Rate Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Set Vendor Price List Detail Grid Settings For Rating Method Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Rating Method Column From Vendor Price List Detail Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Vendor Price List Detail Grid        ${RATING METHOD COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Rating Method Column Of Vendor Price List Detail Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Ascending Order      ${RATING METHOD COLUMN NAME}

Validate Get All Rows Of Rating Method Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Grid     ${RATING METHOD COLUMN NAME}

Validate Ascending Sorted Data For Rating Method Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Rating Method Column Of Vendor Price List Detail Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Descending Order      ${RATING METHOD COLUMN NAME}

Validate Get All Rows Of Rating Method Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Grid     ${RATING METHOD COLUMN NAME}

Validate Descending Sorted Data For Rating Method Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Set Vendor Price List Detail Grid Settings For Rate Type Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Rate Type Column From Vendor Price List Detail Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =    Verify Get All Rows of Rate Column From Vendor Price List Detail Grid        ${RATE TYPE COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Rate Type Column Of Vendor Price List Detail Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Ascending Order      ${RATE TYPE COLUMN NAME}

Validate Get All Rows Of Rate Type Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
     Verify Get All Rows of Rate Column From Vendor Price List Detail Grid     ${RATE TYPE COLUMN NAME}

Validate Ascending Sorted Data For Rate Type Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Rate Type Column Of Vendor Price List Detail Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Descending Order      ${RATE TYPE COLUMN NAME}

Validate Get All Rows Of Rate Type Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
     Verify Get All Rows of Rate Column From Vendor Price List Detail Grid     ${RATE TYPE COLUMN NAME}

Validate Descending Sorted Data For Rate Type Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Set Vendor Price List Detail Grid Settings For Rate Increase Violation Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Rate Increase Violation Column From Vendor Price List Detail Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Rate Increase Violation Column From Vendor Price List Detail Grid        ${RATE INCREASE VIOLATION COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Rate Increase Violation Column Of Vendor Price List Detail Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Ascending Order      ${RATE INCREASE VIOLATION COLUMN NAME}

Validate Get All Rows Of Rate Increase Violation Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Rate Increase Violation Column From Vendor Price List Detail Grid     ${RATE INCREASE VIOLATION COLUMN NAME}

Validate Ascending Sorted Data For Rate Increase Violation Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Rate Increase Violation Column Of Vendor Price List Detail Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Descending Order      ${RATE INCREASE VIOLATION COLUMN NAME}

Validate Get All Rows Of Rate Increase Violation Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Rate Increase Violation Column From Vendor Price List Detail Grid     ${RATE INCREASE VIOLATION COLUMN NAME}

Validate Descending Sorted Data For Rate Increase Violation Column Of Vendor Price List Detail Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}
