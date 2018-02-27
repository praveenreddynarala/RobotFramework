*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Destination Category Filters In CSR Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Click Customer Specific Routing Button
    [Tags]    REGRESSION
    Verify Click Customer Specific Routing Button

Validate Set Destination Category #1
    [Tags]    REGRESSION
    Verify Set Destination Category #1      @{DESTINATION CATEGORY NO 1 LIST}

Validate Set Destination Category #2
    [Tags]    REGRESSION
    Verify Set Destination Category #2      @{DESTINATION CATEGORY NO 2 LIST}

Validate Click Customer Specific Routing Search Button
    [Tags]    REGRESSION
    Verify Click Customer Specific Routing Search Button