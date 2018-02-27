*** Settings ***
Documentation     A Test Suite With Set Of Tests For Buy Vendor Price List Validate View Price List

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validate Navigate to Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Vendor Price Lists
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set 'From Date'
    [Tags]    REGRESSION
    Verify Set From Date        ${FROM DATE FOR VIEW PRICE LIST}

Validate Set 'To Date'
    [Tags]    REGRESSION
    Verify Set To Date

Validate Click On Vendor Price Lists Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Get Vendor Name From Price List Grid
    [Tags]    REGRESSION
    Verify Get First Row Vendor Name From Price List Grid       ${VENDOR COLUMN NAME}

Validate Get Price List Item Name From Price List Grid
    [Tags]    REGRESSION
    Verify Get First Row Price List Name From Price List Grid       ${PRICE LIST COLUMN NAME}

Validate Click View Price List Detail First Row Inline Action Button
    [Tags]    REGRESSION
    buy_page_resource.Verify Click View Price List Detail First Row Inline Action Button

Validate View Price List Detail Is Present
    [Tags]    REGRESSION
    Verify View Price List Detail Is Present

Validate Analyze and Complete Is Present
    [Tags]    REGRESSION
    Verify Analyze and Complete Is Present

Validate Click View Price List Detail Inline Action Item
    [Tags]    REGRESSION
    buy_page_resource.Verify View Price List Detail Inline Action Item

Validate Selected Vendor
    [Tags]    REGRESSION
    Verify Selected Vendor Name

Validate Selected Price List
    [Tags]    REGRESSION
    Verify Selected Price List Item

Validate Select Rates Tab of View Price List Detail
    [Tags]    REGRESSION
    Verify Select Rates Tab of View Price List Detail       ${RATES TAB NAME}

Validate Rates Tab Is Loaded Properly
    [Tags]    REGRESSION
    Verify Rates Tab Is Loaded Properly

Validate Select Dial Digits Tab of View Price List Detail
    [Tags]    REGRESSION
    ${DIAL DIGITS TAB NAME} =       Verify Get Dial Digit Tab Name      vendor
    Verify Select Dial Digits Tab of View Price List Detail     ${DIAL DIGITS TAB NAME}

Validate Dial Digits Tab Is Loaded Properly
    [Tags]    REGRESSION
    Verify Dial Digits Tab Is Loaded Properly

Validate Select Reference Rates Tab of View Price List Detail
    [Tags]    REGRESSION
    Verify Select Reference Rates Tab of View Price List Detail     ${REFERENCE RATES TAB NAME}

Validate Reference Rates Tab Is Loaded Properly
    [Tags]    REGRESSION
    Verify Reference Rates Tab Is Loaded Properly