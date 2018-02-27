*** Settings ***
Documentation     A Test Suite With Set Of Tests For Sell Validate Price Exceptions Grid Related Actions

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

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Set Price Exceptions Grid Settings
    [Tags]    REGRESSION
    Verify Set Price Exceptions Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Vendor Column From Price Exceptions Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Price Exceptions Grid        ${DESTINATION COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Price Exceptions Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Price Exceptions Grid Column In Descending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Price Exceptions Grid     ${DESTINATION COLUMN NAME}

Validate Descending Sorted Data For Price Exceptions Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Price Exceptions Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Price Exceptions Grid Column In Ascending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Price Exceptions Grid     ${DESTINATION COLUMN NAME}

Validate Ascending Sorted Data For Price Exceptions Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Price Exceptions Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Price Exceptions Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Price Exceptions Grid Column
    [Tags]    REGRESSION
    Verify Drag Price Exceptions Grid Column     ${DESTINATION COLUMN NAME}       ${CUSTOMER COLUMN NAME}

Validate Get Price Exceptions Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Price Exceptions Grid Column Names By Order

Validate Price Exceptions Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${DESTINATION COLUMN NAME}       ${CUSTOMER COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Price Exceptions Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Price Exceptions Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Country Groups Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Price Exceptions Grid Column Names By Order

Validate Price Exceptions Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${DESTINATION COLUMN NAME}       ${DESTINATION COLUMN NAME}       @{COLUMN NAME LIST}

Validate Filter Price Exceptions Grid
    [Tags]    REGRESSION
    Verify Filter Price Exceptions Grid With First Row Value      ${DESTINATION COLUMN NAME}       @{ALL ROW DATA}

Validate Price Exceptions Grid Filtered Properly
    [Tags]    REGRESSION
    Verify Price Exceptions Grid Filtered Properly     ${DESTINATION COLUMN NAME}

Validate Click Price Exceptions Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Grid Export To Excel Button