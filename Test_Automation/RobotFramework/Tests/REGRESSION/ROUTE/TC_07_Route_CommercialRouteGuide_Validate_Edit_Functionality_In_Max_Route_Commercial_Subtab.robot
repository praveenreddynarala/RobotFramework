*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Edit Functionality in Max Route Commercial Subtab

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

Validate Select Max Route Commercial Tab
    [Tags]    REGRESSION
    Verify Select Max Route Commercial Tab

Validate Filter Max Route Commercial Grid
    [Tags]    REGRESSION
    Verify Filter Max Route Commercial Grid     ${ROUTE CLASS COLUMN NAME}      ${ROUTE CLASS}

Validate Set Value In Max Route Commercial Grid Column
    [Tags]    REGRESSION
    Verify Set Value In Max Route Commercial Grid Column

Validate Click Max Route Commercial Save Changes Button
    [Tags]    REGRESSION
    Verify Click Max Route Commercial Save Changes Button

Valdiate Close Benchmarks Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab    ${BENCHMARKS TAB NAME}