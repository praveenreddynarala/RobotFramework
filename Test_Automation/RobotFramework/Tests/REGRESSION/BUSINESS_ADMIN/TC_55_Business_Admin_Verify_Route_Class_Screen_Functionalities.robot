*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Route Class Screen Functionalities

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

Validate Expand Routing Menu
    [Tags]    REGRESSION
    Verify Expand Routing Menu

Validate Click Route Class Submenu
    [Tags]    REGRESSION
    Verify Click Route Class Submenu

Validate Set Route Class Reset All Grid Settings
    [Tags]    REGRESSION
    Verify Set Route Class Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Route Class Column From Route Class Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Route Class Grid        Route Class
    set suite variable      @{ALL ROW DATA}

Validate Sort Route Class Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Route Class Grid Column In Descending Order      Route Class

Validate Get All Rows of Route Class Column From Route Class Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Route Class Grid     Route Class

Validate Descending Sorted Data For Route Class Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Route Class Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Route Class Grid Column In Ascending Order      Route Class

Validate Get All Rows of Route Class Column From Route Class Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Route Class Grid     Route Class

Validate Ascending Sorted Data For Route Class Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Route Class Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Route Class Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Route Class Grid Column
    [Tags]    REGRESSION
    Verify Drag Route Class Grid Column     Route Class       CDR Route Class

Validate Get Route Class Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Route Class Grid Column Names By Order

Validate Route Class Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Route Class       CDR Route Class       @{COLUMN NAME LIST}

Validate Set Route Class Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Route Class Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Route Class Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Route Class Grid Column Names By Order

Validate Route Class Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Route Class       Route Class       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Route Class Grid Export To Excel Button