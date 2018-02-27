*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Technical Route Guide To Validate User Edit Operations in Max Trunks Per Switch

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
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

Validate Click Technical Routing Benchmarks Button
    [Tags]    REGRESSION
    Verify Click Technical Routing Benchmarks Button

Validate Select Max Trunks Per Switch Tab
    [Tags]    REGRESSION
    Verify Select Max Trunks Per Switch Tab

Validate Set Max Trunks Per Switch Grid New Benchmark Values
    [Tags]    REGRESSION
    Verify Set Max Trunks Per Switch Grid New Benchmark Values

Validate Click Save Changes Button
    [Tags]    REGRESSION
    Verify Click Max Trunks Per Switch Save Changes Button

Validate Compare Max Trunks Per Switch Grid Modified Benchmark Values
    [Tags]    REGRESSION
    Verify Compare Max Trunks Per Switch Grid Modified Benchmark Values

Validate Set Max Trunks Per Switch Grid Default Benchmark Values
    [Tags]    REGRESSION
    Verify Set Max Trunks Per Switch Grid Default Benchmark Values

Validate Click Save Changes Button After Setting Default Value
    [Tags]    REGRESSION
    Verify Click Max Trunks Per Switch Save Changes Button

Validate Close Benchmarks Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab    ${BENCHMARKS TAB NAME}