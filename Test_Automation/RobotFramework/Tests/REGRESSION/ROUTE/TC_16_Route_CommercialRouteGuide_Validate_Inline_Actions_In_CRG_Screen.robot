*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Commercial Route Guide To Validate Inline Actions In CRG Screen

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

Validate Set Route Class For Search
    [Tags]    REGRESSION
    Verify Set Route Class For Search       ${ROUTE CLASS}

Validate Click Commercial Routing Grid Search Button
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid Search Button

Validate Get Commercial Routing Grid First Row Routing Product
    [Tags]    REGRESSION
    Verify Get Commercial Routing Grid First Row Routing Product

Validate Verify Click Commercial Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Commercial Grid First Row Inline Action Button

Validate Click Commercial Routing Grid Benchmarks Inline Action Item
    [Tags]    REGRESSION
    Verify Select Commercial Routing Grid Inline Action Item     ${BENCHMARKS INLINE ACTION ITEM}

Validate Benchmark Management Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify Benchmark Management Page Is Loaded Properly

Validate Compare Selected Routing Product
    [Tags]    REGRESSION
    Verify Compare Selected Routing Product

Validate Close Benchmark Management Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab        ${BENCHMARK MANAGEMENT TAB NAME}

Validate Verify Click Commercial Grid First Row Inline Action Button For Exclusions
    [Tags]    REGRESSION
    Verify Click Commercial Grid First Row Inline Action Button

Validate Click Commercial Routing Grid Exclusions Inline Action Item
    [Tags]    REGRESSION
    Verify Select Commercial Routing Grid Inline Action Item     ${EXCLUSIONS INLINE ACTION ITEM}

Validate Exclusion Management Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify Exclusion Management Page Is Loaded Properly

Validate Close Exclusion Management Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab        ${EXCLUSION MANAGEMENT TAB NAME}

Validate Verify Click Commercial Grid First Row Inline Action Button For Overrides
    [Tags]    REGRESSION
    Verify Click Commercial Grid First Row Inline Action Button

Validate Click Commercial Routing Grid Overrides Inline Action Item
    [Tags]    REGRESSION
    Verify Select Commercial Routing Grid Inline Action Item     ${OVERRIDES INLINE ACTION ITEM}

Validate Overrides Management Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify Overrides Management Page Is Loaded Properly

Validate Close Overrides Management Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab        ${OVERRIDES MANAGEMENT TAB NAME}

Validate Verify Click Commercial Grid First Row Inline Action Button For Emergency Routing
    [Tags]    REGRESSION
    Verify Click Commercial Grid First Row Inline Action Button

Validate Click Commercial Routing Grid Emergency Re-Routing Inline Action Item
    [Tags]    REGRESSION
    Verify Select Commercial Routing Grid Inline Action Item     ${EMERGENCY RE ROUTING INLINE ACTION ITEM}

Validate Emergency Routing Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify Emergency Routing Page Is Loaded Properly

Validate Close Emergency Routing Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab        ${EMERGENCY RE ROUTING TAB NAME}