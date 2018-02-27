*** Settings ***
Documentation     A Test Suite With Set Of Tests For Buy Vendor Validate All Grid Related Actions of Vendor Price List Detail Reference Rates Grid

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Navigate to Vendors Tab
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

Validate Select Vendor Price List Detail Reference Rates Tab
    [Tags]    REGRESSION
    Verify Select Vendor Price List Detail Reference Rates Tab

Validate Set Vendor Price List Detail Reference Rates Grid Settings
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Reference Rates Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Vendor Column From Vendor Price List Detail Reference Rates Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Vendor Price List Detail Reference Rates Grid        ${DESTINATION COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Vendor Price List Detail Reference Rates Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Reference Rates Grid Column In Ascending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Reference Rates Grid     ${DESTINATION COLUMN NAME}

Validate Ascending Sorted Data For Vendor Price List Detail Reference Rates Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Vendor Price List Detail Reference Rates Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Reference Rates Grid Column In Descending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Reference Rates Grid     ${DESTINATION COLUMN NAME}

Validate Descending Sorted Data For Vendor Price List Detail Reference Rates Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Vendor Price List Detail Reference Rates Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Vendor Price List Detail Reference Rates Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Vendor Price List Detail Reference Rates Grid Column
    [Tags]    REGRESSION
    Verify Drag Vendor Price List Detail Reference Rates Grid Column     ${DESTINATION COLUMN NAME}       ${EFFECTIVE DATE COLUMN NAME}

Validate Get Vendor Price List Detail Reference Rates Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Vendor Price List Detail Reference Rates Grid Column Names By Order

Validate Vendor Price List Detail Reference Rates Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${DESTINATION COLUMN NAME}       ${EFFECTIVE DATE COLUMN NAME}       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Vendor Price List Detail Reference Rates Grid Export To Excel Button