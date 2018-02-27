*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate All Inline Actions In Buy Page

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validate Navigate To Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Get Previous Created Vendor Name
    [Tags]    REGRESSION
    Verify Get Previous Created Vendor Name

Validate Filter Vendor Grid Column
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Click On Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Vendor Profile is Available
    [Tags]    REGRESSION
    Verify Vendor Profile is Available

Validate Vendor Rates Is Available
    [Tags]    REGRESSION
    Verify Vendor Rates is Available

Validate Vendor Digits Is Available
    [Tags]    REGRESSION
    Verify Vendor Digits is Available

Validate Vendor Destination is Available
    [Tags]    REGRESSION
    Verify Vendor Destination is Available

Validate Upload Vendor Price List is Available
    [Tags]    REGRESSION
    Verify Upload Vendor Price List is Available