*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Buy To Validate View Price List And Export To Excel

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    SMOKE TESTING
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Navigate to Vendors Tab
    [Tags]    SMOKE TESTING
    Verify Click On Vendors Tab

Validate Click On Vendor Price Lists
    [Tags]    SMOKE TESTING
    Verify Click On Vendor Price Lists

Validate Set 'From Date'
    [Tags]    SMOKE TESTING
    Verify Set From Date        ${VIEW PRICE LIST FROM DATE FOR SMOKE TEST}

Validate Click On Vendor Price Lists Search Button
    [Tags]    SMOKE TESTING
    Verify Click On Vendor Price Lists Search Button

Validate Get Vendor Name From Price List Grid
    [Tags]    SMOKE TESTING
    Verify Get First Row Vendor Name From Price List Grid       ${VENDOR COLUMN NAME}

Validate Get Price List Item Name From Price List Grid
    [Tags]    SMOKE TESTING
    Verify Get First Row Price List Name From Price List Grid       ${PRICE LIST COLUMN NAME}

Validate Click Vendor Price List Grid First Row Inline Action Button
    [Tags]    SMOKE TESTING
    Verify Click Vendor Price List Grid First Row Inline Action Button

Validate Select View Price List Detail Inline Action Item
    [Tags]    SMOKE TESTING
    Verify View Price List Detail Inline Action Item

Validate Selected Vendor
    [Tags]    SMOKE TESTING
    Verify Selected Vendor Name

Validate Selected Price List
    [Tags]    SMOKE TESTING
    Verify Selected Price List Item

Validate Click Export To Excel Button
    [Tags]    SMOKE TESTING
    Verify Click Export To Excel Button