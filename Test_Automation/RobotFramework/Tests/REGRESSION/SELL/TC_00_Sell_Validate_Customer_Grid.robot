*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Customer Grid

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate The Customer Tab Is Available
    [Tags]    REGRESSION
    Verify The Customer Tab Is Available

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate The Customer Grid Is Displayed
    [Tags]     REGRESSION
    Verify The Customer Grid Is Displayed

Validate Set Customers Grid Settings
    [Tags]    REGRESSION
    Verify Set Customers Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Specific Column From Customers Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Customers Grid        ${CUSTOMER COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Customers Grid Customer Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Customers Grid Customer Column In Ascending Order      ${CUSTOMER COLUMN NAME}

Validate Get All Rows of Specific Column From Customers Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Customers Grid        ${CUSTOMER COLUMN NAME}

Validate Ascending Sorted Data For Customers Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Customers Grid Cusotmer Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Customers Grid Column In Descending Order      ${CUSTOMER COLUMN NAME}

Validate Get All Rows of Specific Column From Customers Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Customers Grid        ${CUSTOMER COLUMN NAME}

Validate Descending Sorted Data For Customers Grid Cutomer Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Customers Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Customers Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Customers Grid Column
    [Tags]    REGRESSION
    Verify Drag Customers Grid Column     ${CUSTOMER COLUMN NAME}       ${CARRIER COLUMN NAME}

Validate Get Customers Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Customers Grid Column Names By Order

Validate Customers Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${CUSTOMER COLUMN NAME}       ${CARRIER COLUMN NAME}       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Customers Grid Export To Excel Button
