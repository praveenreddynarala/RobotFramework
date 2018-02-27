*** Settings ***
Documentation     A Test Suite With Set Of Tests For Sell Validate Customer Price Lists Grid Related Actions

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

Validate Set Customer Price Lists Grid Settings
    [Tags]    REGRESSION
    Verify Set Customer Price Lists Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Vendor Column From Customer Price Lists Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Customer Price Lists Grid        ${PRICE LIST COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Customer Price Lists Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Customer Price Lists Grid Column In Descending Order      ${PRICE LIST COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Customer Price Lists Grid     ${PRICE LIST COLUMN NAME}

Validate Descending Sorted Data For Customer Price Lists Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Customer Price Lists Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Customer Price Lists Grid Column In Ascending Order      ${PRICE LIST COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Customer Price Lists Grid     ${PRICE LIST COLUMN NAME}

Validate Ascending Sorted Data For Customer Price Lists Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Customer Price Lists Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Customer Price Lists Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Customer Price Lists Grid Column
    [Tags]    REGRESSION
    Verify Drag Customer Price Lists Grid Column     ${PRICE LIST COLUMN NAME}       ${CUSTOMER COLUMN NAME}

Validate Get Customer Price Lists Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Customer Price Lists Grid Column Names By Order

Validate Customer Price Lists Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${PRICE LIST COLUMN NAME}       ${CUSTOMER COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Customer Price Lists Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Customer Price Lists Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Customer Price Lists Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Customer Price Lists Grid Column Names By Order

Validate Customer Price Lists Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${PRICE LIST COLUMN NAME}       ${PRICE LIST COLUMN NAME}       @{COLUMN NAME LIST}

Validate Filter Customer Price Lists Grid
    [Tags]    REGRESSION
    Verify Filter Customer Price Lists Grid With First Row Value      ${PRICE LIST COLUMN NAME}       @{ALL ROW DATA}

Validate Customer Price Lists Grid Filtered Properly
    [Tags]    REGRESSION
    Verify Customer Price Lists Grid Filtered Properly     ${PRICE LIST COLUMN NAME}

Validate Click Customer Price Lists Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Customer Price Lists Grid Export To Excel Button