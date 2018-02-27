*** Settings ***
Documentation     A Test Suite With Set Of Tests For Buy Vendor Validate All Grid Related Actions of Country Groups Grid

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

Validate Click Country Group Link
    [Tags]    REGRESSION
    Verify Click Country Group

Validate Set Country Group Scope
    [Tags]    REGRESSION
    Verify Set Country Group Scope      Buy

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Buy Module Search Button

Validate Set Country Groups Grid Settings
    [Tags]    REGRESSION
    Verify Set Country Groups Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Vendor Column From Country Groups Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Country Groups Grid        Country Group
    set suite variable      @{ALL ROW DATA}

Validate Sort Country Groups Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Country Groups Grid Column In Ascending Order      Country Group

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Groups Grid     Country Group

Validate Ascending Sorted Data For Country Groups Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Country Groups Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Country Groups Grid Column In Descending Order      Country Group

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Groups Grid     Country Group

Validate Descending Sorted Data For Country Groups Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Country Groups Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Country Groups Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Country Groups Grid Column
    [Tags]    REGRESSION
    Verify Drag Country Groups Grid Column     Country Group       Countries

Validate Get Country Groups Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Country Groups Grid Column Names By Order

Validate Country Groups Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Country Group       Countries       @{COLUMN NAME LIST}

Validate Set Country Groups Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Country Groups Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Country Groups Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Country Groups Grid Column Names By Order

Validate Country Groups Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Country Group       Country Group       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Country Groups Grid Export To Excel Button