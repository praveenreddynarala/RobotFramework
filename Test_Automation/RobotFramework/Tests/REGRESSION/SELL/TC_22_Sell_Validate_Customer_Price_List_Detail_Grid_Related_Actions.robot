*** Settings ***
Documentation     A Test Suite With Set Of Tests For Sell Validate Customer Price List Detail Grid Related Actions

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}
@{FILTER ITEM LIST}

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Select Customers Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click On Customer Price Lists Button

Validate Set Price Lists From Date
    [Tags]    REGRESSION
    Verify Set From Date       1/1/2017

Validate Click Customer Price Lists Search Button
    [Tags]    REGRESSION
    Verify Click Customer Price Lists Search Button

Validate Click Customer Price Lists Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Customer Price Lists Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${VIEW PRICE LIST DETAIL INLINE ITEM NAME}

Validate Set Customer Price List Detail Grid Settings
    [Tags]    REGRESSION
    Verify Set Customer Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Vendor Column From Customer Price List Detail Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Customer Price List Detail Grid        ${DESTINATION COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Customer Price List Detail Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Customer Price List Detail Grid Column In Descending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Customer Price List Detail Grid     ${DESTINATION COLUMN NAME}

Validate Descending Sorted Data For Customer Price List Detail Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Customer Price List Detail Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Customer Price List Detail Grid Column In Ascending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Customer Price List Detail Grid     ${DESTINATION COLUMN NAME}

Validate Ascending Sorted Data For Customer Price List Detail Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Customer Price List Detail Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Customer Price List Detail Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Customer Price List Detail Grid Column
    [Tags]    REGRESSION
    Verify Drag Customer Price List Detail Grid Column     ${DESTINATION COLUMN NAME}       ${BEGIN DATE COLUMN NAME}

Validate Get Customer Price List Detail Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Customer Price List Detail Grid Column Names By Order

Validate Customer Price List Detail Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${DESTINATION COLUMN NAME}       ${BEGIN DATE COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Customer Price List Detail Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Customer Price List Detail Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Country Groups Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Customer Price List Detail Grid Column Names By Order

Validate Customer Price List Detail Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${DESTINATION COLUMN NAME}       ${DESTINATION COLUMN NAME}       @{COLUMN NAME LIST}

Validate Filter Customer Price List Detail Grid
    [Tags]    REGRESSION
    Verify Filter Customer Price List Detail Grid With First Row Value      ${DESTINATION COLUMN NAME}       @{ALL ROW DATA}

Validate Customer Price List Detail Grid Filtered Properly
    [Tags]    REGRESSION
    Verify Customer Price List Detail Grid Filtered Properly     ${DESTINATION COLUMN NAME}

Validate Click Customer Price List Detail Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Customer Price List Detail Grid Export To Excel Button