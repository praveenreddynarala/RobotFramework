*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Edit Functionality in Margin Subtab

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

Validate Click Benchmarks Button
    [Tags]    REGRESSION
    Verify Click Benchmarks Button

Validate Set Route Class For Benchmark Management
    [Tags]    REGRESSION
    Verify Set Route Class For Benchmark Management         ${ROUTE CLASS}

Validate Verify Click Commercial Routing Benchmarks Search Button
    [Tags]    REGRESSION
    Verify Click Technical Routing Benchmarks Search Button

Validate Set New Benchmark Values
    [Tags]    REGRESSION
    Verify Set New Benchmark Values

Validate Click Save Changes Button
    [Tags]    REGRESSION
    Verify Click Route Class Benchmarks Margin Save Changes Button

Validate Set Default Benchmark Values
    [Tags]    REGRESSION
    Verify Set Default Benchmark Values

Validate Click Save Changes Button After Setting Default Value
    [Tags]    REGRESSION
    Verify Click Route Class Benchmarks Margin Save Changes Button

Validate Close Benchmarks Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab    ${BENCHMARKS TAB NAME}