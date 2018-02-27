*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Technical Route Guide To Validate Recalc RGs Functionality

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

Validate Navigate to Technical Routing Tab
    [Tags]    REGRESSION
    Verify Select Technical Routing Tab

Validate Set Route Class For Search
    [Tags]    REGRESSION
    Verify Set Route Class For Search       ${ROUTE CLASS}

Validate Set Routing Status For Search
    [Tags]    REGRESSION
    Verify Set Routing Status For Search        ${TECHNICAL ROUTING SUGGESTED STATUS}

Validate Click Technical Routing Grid Search Button
    [Tags]    REGRESSION
    Verify Click Technical Routing Grid Search Button

Validate Select Technical Routing Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Technical Routing Grid First Row Checkbox

Validate Technical Routing Grid Recalc RGs Button
    [Tags]    REGRESSION
    Verify Click Technical Routing Grid Recalc RGs Button