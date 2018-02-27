*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Grid Common Functions In Buy And Sell Deal Management Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    click on home icon and select 'Buy' from main menu

Validate Click Buy And Sell Deal Management Link
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Management Link

Validate Set Start Date
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Start Date      1/1/2010

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Buy Module Search Button

Validate Get All Rows of Vendor Column From Buy And Sell Management Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   business_admin_page_resource.Verify Get All Rows of Specific Column From Buy And Sell Management Grid        Buy and Sell Deal
    set suite variable      @{ALL ROW DATA}

Validate Sort Buy And Sell Management Grid Column In Ascending Order
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Sort Buy And Sell Management Grid Column In Ascending Order      Buy and Sell Deal

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Get All Rows of Specific Column From Buy And Sell Management Grid     Buy and Sell Deal

Validate Ascending Sorted Data For Buy And Sell Management Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Buy And Sell Management Grid Column In Descending Order
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Sort Buy And Sell Management Grid Column In Descending Order      Buy and Sell Deal

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Get All Rows of Specific Column From Buy And Sell Management Grid     Buy and Sell Deal

Validate Descending Sorted Data For Buy And Sell Management Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Buy And Sell Management Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   business_admin_page_resource.Verify Get Buy And Sell Management Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Buy And Sell Management Grid Column
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Drag Buy And Sell Management Grid Column     Buy and Sell Deal       Start Date

Validate Get Buy And Sell Management Grid Column Name List After Altering
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Get Buy And Sell Management Grid Column Names By Order

Validate Buy And Sell Management Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Buy and Sell Deal       Start Date       @{COLUMN NAME LIST}

Validate Set Buy And Sell Management Reset Column Order Grid Settings
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Buy And Sell Management Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Buy And Sell Management Grid Column Name List After Resetting
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Get Buy And Sell Management Grid Column Names By Order

Validate Buy And Sell Management Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Buy and Sell Deal       Buy and Sell Deal       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Buy And Sell Management Grid Export To Excel Button
