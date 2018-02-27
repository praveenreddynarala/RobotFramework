*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Categories Screen Common Functionalities

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

Validate Expand Groups and Categories Menu
    [Tags]    REGRESSION
    Verify Expand Groups and Categories Menu

Validate Click Categories Submenu
    [Tags]    REGRESSION
    Verify Click Categories Submenu

Validate Set Categories Reset All Grid Settings
    [Tags]    REGRESSION
    Verify Set Categories Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Category Column From Categories Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Categories Grid        Category
    set suite variable      @{ALL ROW DATA}

Validate Sort Categories Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Categories Grid Column In Descending Order      Category

Validate Get All Rows of Category Column From Categories Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Categories Grid     Category

Validate Descending Sorted Data For Categories Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Categories Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Categories Grid Column In Ascending Order      Category

Validate Get All Rows of Category Column From Categories Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Categories Grid     Category

Validate Ascending Sorted Data For Categories Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Categories Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Categories Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Categories Grid Column
    [Tags]    REGRESSION
    Verify Drag Categories Grid Column     Category       Category Scope

Validate Get Categories Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Categories Grid Column Names By Order

Validate Categories Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Category       Category Scope       @{COLUMN NAME LIST}

Validate Set Categories Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Categories Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Categories Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Categories Grid Column Names By Order

Validate Categories Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Category       Category       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Categories Grid Export To Excel Button
