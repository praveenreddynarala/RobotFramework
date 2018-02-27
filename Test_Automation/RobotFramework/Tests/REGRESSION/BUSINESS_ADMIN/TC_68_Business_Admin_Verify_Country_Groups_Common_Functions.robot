*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Country Groups Screen Common Functionalities

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Country Submenu
    [Tags]    REGRESSION
    Verify Click Country Submenu

Validate Click Country Groups Button
    [Tags]    REGRESSION
    Verify Click Country Groups Button

Validate Set Country Groups Reset All Grid Settings
    [Tags]    REGRESSION
    Verify Set Country Groups Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Country Group Column From Country Groups Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Country Groups Grid        Country Group
    set suite variable      @{ALL ROW DATA}

Validate Sort Country Groups Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Country Groups Grid Column In Descending Order      Country Group

Validate Get All Rows of Country Group Column From Country Groups Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Groups Grid     Country Group

Validate Descending Sorted Data For Country Groups Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Country Groups Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Country Groups Grid Column In Ascending Order      Country Group

Validate Get All Rows of Country Group Column From Country Groups Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Groups Grid     Country Group

Validate Ascending Sorted Data For Country Groups Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Country Groups Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Country Groups Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Country Groups Grid Column
    [Tags]    REGRESSION
    Verify Drag Country Groups Grid Column     Country Group       Last Modified

Validate Get Country Groups Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Country Groups Grid Column Names By Order

Validate Country Groups Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Country Group       Last Modified       @{COLUMN NAME LIST}

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