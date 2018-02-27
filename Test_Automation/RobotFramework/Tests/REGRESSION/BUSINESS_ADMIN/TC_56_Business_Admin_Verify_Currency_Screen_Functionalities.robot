*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Currency Screen Functionalities

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

Validate Expand Currency And Exchange Rates Menu
    [Tags]    REGRESSION
    Verify Expand Currency And Exchange Rates Menu

Validate Click Currency And Exchange Rates Submenu
    [Tags]    REGRESSION
    Verify Click Currency And Exchange Rates Submenu

Valdiate Click Currency Button
    [Tags]    REGRESSION
    Verify Click Currency Button

Validate Close Exchange Rates Tab
    [Tags]    REGRESSION
    Verify Close Current Tab    ${EXCHANGE RATES TAB NAME}

Validate Set Currency Reset All Grid Settings
    [Tags]    REGRESSION
    Verify Set Currency Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Currency Column From Currency Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Currency Grid        Currency
    set suite variable      @{ALL ROW DATA}

Validate Sort Currency Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Currency Grid Column In Descending Order      Currency

Validate Get All Rows of Currency Column From Currency Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Currency Grid     Currency

Validate Descending Sorted Data For Currency Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Currency Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Currency Grid Column In Ascending Order      Currency

Validate Get All Rows of Currency Column From Currency Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Currency Grid     Currency

Validate Ascending Sorted Data For Currency Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Currency Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Currency Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Currency Grid Column
    [Tags]    REGRESSION
    Verify Drag Currency Grid Column     Currency       Currency Symbol

Validate Get Currency Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Currency Grid Column Names By Order

Validate Currency Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Currency       Currency Symbol       @{COLUMN NAME LIST}

Validate Set Currency Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Currency Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Currency Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Currency Grid Column Names By Order

Validate Currency Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Currency       Currency       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Currency Grid Export To Excel Button

Validate Click New Currency Button
    [Tags]    REGRESSION
    Verify Click New Currency Button

Validate Set Currency Name
    [Tags]    REGRESSION
    Verify Set Currency Name        ${TEST DATA PREFIX}

Validate Set Currency Abbreviation
    [Tags]    REGRESSION
    Verify Set Currency Abbreviation        CA_

Validate Set Currency Symbol
    [Tags]    REGRESSION
    Verify Set Currency Symbol

Validate Click New Currency Save Button
    [Tags]    REGRESSION
    Verify Click New Currency Save Button

Validate Set Currency
    [Tags]    REGRESSION
    ${CURRENCY} =   Verify Get Currency Name
    Verify Set Currency For Search      ${CURRENCY}

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Currency Grid First Row Currency Symbol
    [Tags]    REGRESSION
    Verify Set Currency Grid First Row Currency Symbol

Validate Click Save Changes Button Without Confirmation
    [Tags]    REGRESSION
    Verify Click Save Changes Button Without Confirmation
