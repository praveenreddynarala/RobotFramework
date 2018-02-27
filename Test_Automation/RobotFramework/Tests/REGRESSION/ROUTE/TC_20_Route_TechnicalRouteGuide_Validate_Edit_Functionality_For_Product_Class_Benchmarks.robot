*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Technical Route Guide To Validate Edit Functionality For Product Class Benchmarks

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

Validate Click Technical Routing Grid Search Button
    [Tags]    REGRESSION
    Verify Click Technical Routing Grid Search Button

Validate Click Technical Routing Grid First Row Routing Product Link
    [Tags]    REGRESSION
    Verify Click Technical Routing Grid First Row Routing Product Link

Validate Select Benchmarks Tab
    [Tags]    REGRESSION
    Verify Select Benchmarks Tab

Validate Set New Benchmark Values In Route Guide Tab
    [Tags]    REGRESSION
    Verify Set New Benchmark Values In Route Guide Tab

Validate Click Save Changes Button
    [Tags]    REGRESSION
    Verify Click Route Guide Benchmarks Save Changes Button

Validate Set Default Benchmark Values In Route Guide Tab
    [Tags]    REGRESSION
    Verify Set Default Benchmark Values In Route Guide Tab

Validate Click Save Changes Button After Setting Default Value
    [Tags]    REGRESSION
    Verify Click Route Guide Benchmarks Save Changes Button

Validate Close Route Guide Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab    ${ROUTE GUIDE TAB NAME}