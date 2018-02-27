*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation to View Vendor Price List

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{COLUMN NAME LIST}
@{ALL ROW DATA}

*** Test Cases ***
Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validate navigate to Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Vendor Price Lists
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set 'From Date'
    [Tags]    REGRESSION
    Verify Set From Date        ${FROM DATE FOR VIEW VENDOR PRICE LIST}

Validate Set 'To Date'
    [Tags]    REGRESSION
    Verify Set To Date

Validate Click On Vendor Price Lists Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Click On View Price List Detail Inline Action Button
    [Tags]    REGRESSION
    Verify Click View Price List Detail First Row Inline Action Button

Validate Get Price List Item Name From Price List Grid
    [Tags]    REGRESSION
    Verify Get First Row Price List Name From Price List Grid       ${PRICE LIST COLUMN NAME}

Validate View Price List Detail Inline Action Item
    [Tags]    REGRESSION
    Verify View Price List Detail Inline Action Item

Validate Is View Price List Detail Loaded Properly
    [Tags]    REGRESSION
    Verify Set Price List Item

Validate Set Vendor Price List Detail Grid Settings
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Vendor Column From Vendor Price List Detail Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Vendor Price List Detail Grid        ${DESTINATION COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Vendor Price List Detail Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Ascending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Grid     ${DESTINATION COLUMN NAME}

Validate Ascending Sorted Data For Vendor Price List Detail Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Vendor Price List Detail Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Vendor Price List Detail Grid Column In Descending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Vendor Price List Detail Grid     ${DESTINATION COLUMN NAME}

Validate Descending Sorted Data For Vendor Price List Detail Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Vendor Price List Detail Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Vendor Price List Detail Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Vendor Price List Detail Grid Column
    [Tags]    REGRESSION
    Verify Drag Vendor Price List Detail Grid Column     ${DESTINATION COLUMN NAME}       ${BEGIN DATE COLUMN NAME}

Validate Get Vendor Price List Detail Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Vendor Price List Detail Grid Column Names By Order

Validate Vendor Price List Detail Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${DESTINATION COLUMN NAME}       ${BEGIN DATE COLUMN NAME}       @{COLUMN NAME LIST}