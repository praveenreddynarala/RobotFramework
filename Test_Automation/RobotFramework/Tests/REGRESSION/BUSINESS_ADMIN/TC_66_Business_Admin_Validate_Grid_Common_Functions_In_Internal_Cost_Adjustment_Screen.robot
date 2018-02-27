*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Grid Common Functionalities In Internal Cost Adjustments Screen

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

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Internal Cost Adjustment Submenu
    [Tags]    REGRESSION
    Verify Click Internal Cost Adjustment Submenu

Validate Set Internal Cost Adjustments Reset All Grid Settings
    [Tags]    REGRESSION
    Verify Set Internal Cost Adjustments Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Route Class Column From Internal Cost Adjustments Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Internal Cost Adjustments Grid        Route Class
    set suite variable      @{ALL ROW DATA}

Validate Sort Internal Cost Adjustments Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Internal Cost Adjustments Grid Column In Descending Order      Route Class

Validate Get All Rows of Route Class Column From Internal Cost Adjustments Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Internal Cost Adjustments Grid     Route Class

Validate Descending Sorted Data For Internal Cost Adjustments Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Internal Cost Adjustments Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Internal Cost Adjustments Grid Column In Ascending Order      Route Class

Validate Get All Rows of Route Class Column From Internal Cost Adjustments Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Internal Cost Adjustments Grid     Route Class

Validate Ascending Sorted Data For Internal Cost Adjustments Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Internal Cost Adjustments Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Internal Cost Adjustments Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Internal Cost Adjustments Grid Column
    [Tags]    REGRESSION
    Verify Drag Internal Cost Adjustments Grid Column     Route Class       Begin Date

Validate Get Internal Cost Adjustments Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Internal Cost Adjustments Grid Column Names By Order

Validate Internal Cost Adjustments Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Route Class       Begin Date       @{COLUMN NAME LIST}

Validate Set Internal Cost Adjustments Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Internal Cost Adjustments Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Internal Cost Adjustments Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Internal Cost Adjustments Grid Column Names By Order

Validate Internal Cost Adjustments Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Route Class       Route Class       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Internal Cost Adjustments Grid Export To Excel Button
