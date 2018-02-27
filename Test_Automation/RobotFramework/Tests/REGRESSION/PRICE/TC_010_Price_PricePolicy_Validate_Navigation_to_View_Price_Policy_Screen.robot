*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation To View Price Policy Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Price Policy Grid With Created New Price Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${PRICE POLICY COLUMN NAME}

Validate Click Price Policy Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Price Policy Grid First Row Inline Action Button

Validate Click Price Policy Grid Inline Item
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Item       ${VIEW PRICE POLICY INLINE ITEM NAME}

Validate View Price Policy Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify View Price Policy Page Is Loaded Properly