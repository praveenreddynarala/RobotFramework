*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Commercial Route Guide To Validate Navigation To Create New Suggestion Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
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

Validate Click Create New Suggestions Button
    [Tags]    REGRESSION
    Verify Click Create New Suggestions Button

Validate New Suggestions Window Is Loaded Properly
    [Tags]    REGRESSION
    Verify New Suggestions Window Is Loaded Properly

Valivate Set New Suggestion Route Class Value
    [Tags]    REGRESSION
    ${ROUTE CLASS} =     Verify Get Route Class Name
    Verify Set New Suggestion Route Class Value     ${ROUTE CLASS}

Validate Set New Suggestion Routing Product Value
    [Tags]    REGRESSION
    Verify Set New Suggestion Routing Product Value     ${INCLUSION PRODUCT}

Validate Click Create Route Suggestion Button
    [Tags]    REGRESSION
    Verify Click Create Route Suggestion Button

Validate Close Route Guide Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab         ${ROUTE GUIDE TAB NAME}