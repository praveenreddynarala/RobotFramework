*** Settings ***
Documentation     A Test Suite With Set Of Tests For Buy Vendor Validate All Grid Related Actions of Re Analysis Grid

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

Validate Click Re Analysis Link
    [Tags]    REGRESSION
    Verify Click Re Analysis Link

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Buy Module Begin Date        1/1/2010

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Buy Module Search Button

Validate Set Re Analysis Grid Settings
    [Tags]    REGRESSION
    Verify Set Re Analysis Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Vendor Column From Re Analysis Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Re Analysis Grid        Country
    set suite variable      @{ALL ROW DATA}

Validate Sort Re Analysis Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Re Analysis Grid Column In Ascending Order      Country

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Re Analysis Grid     Country

Validate Ascending Sorted Data For Re Analysis Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Re Analysis Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Re Analysis Grid Column In Descending Order      Country

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Re Analysis Grid     Country

Validate Descending Sorted Data For Re Analysis Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Re Analysis Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Re Analysis Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Re Analysis Grid Column
    [Tags]    REGRESSION
    Verify Drag Re Analysis Grid Column     Country       Status

Validate Get Re Analysis Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Re Analysis Grid Column Names By Order

Validate Re Analysis Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Country       Status       @{COLUMN NAME LIST}

Validate Set Re Analysis Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Re Analysis Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Re Analysis Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Re Analysis Grid Column Names By Order

Validate Re Analysis Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Country       Country       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Re Analysis Grid Export To Excel Button