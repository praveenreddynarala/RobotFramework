*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Inline Action In Buy - Rates

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

Validation navigate to Vendors Tab
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

Validate Select In Action Item Vendor Profile
    [Tags]    REGRESSION
    Verify Select Vendor Profile Inline Action Item

Validate Click On Rates Tab
    [Tags]    REGRESSION
    Verify Click On Rates Tab       ${RATES TAB NAME}

Validate Close Vendor Profile Tab
    [Tags]    REGRESSION
    Verify Close Vendor Profile Tab     ${VENDOR PROFILE TAB NAME}