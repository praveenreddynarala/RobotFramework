*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Regions Screen Common Functionalities

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

Validate Click Regions Button
    [Tags]    REGRESSION
    Verify Click Regions Button

Validate Set Regions Reset All Grid Settings
    [Tags]    REGRESSION
    Verify Set Regions Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Region Column From Regions Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Regions Grid        Region
    set suite variable      @{ALL ROW DATA}

Validate Sort Regions Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Regions Grid Column In Descending Order      Region

Validate Get All Rows of Region Column From Regions Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Regions Grid     Region

Validate Descending Sorted Data For Regions Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Regions Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Regions Grid Column In Ascending Order      Region

Validate Get All Rows of Region Column From Regions Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Regions Grid     Region

Validate Ascending Sorted Data For Regions Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Regions Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Regions Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Regions Grid Column
    [Tags]    REGRESSION
    Verify Drag Regions Grid Column     Region       Last Modified

Validate Get Regions Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Regions Grid Column Names By Order

Validate Regions Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Region       Last Modified       @{COLUMN NAME LIST}

Validate Set Regions Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Regions Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Regions Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Regions Grid Column Names By Order

Validate Regions Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Region       Region       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Regions Grid Export To Excel Button