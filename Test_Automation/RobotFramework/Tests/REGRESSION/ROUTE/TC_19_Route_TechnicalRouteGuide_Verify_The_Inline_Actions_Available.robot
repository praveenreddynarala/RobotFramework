*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Technical Route Guide To Verify The Inline Actions Available

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
    Verify Set Routing Status For Search        ${STATUS FOR EDIT BENCHMARKS}

Validate Click Technical Routing Grid Search Button
    [Tags]    REGRESSION
    Verify Click Technical Routing Grid Search Button

Validate Verify Click Technical Routing Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Technical Routing Grid First Row Inline Action Button

Validate Select Benchmarks Inline Action Item
    [Tags]    REGRESSION
    route_page_resource.Verify Select Inline Action Item     ${BENCHMARKS INLINE ACTION ITEM}

Validate Benchmark Management Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify Benchmark Management Page Is Loaded Properly

Validate Close Benchmark Management Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab        ${BENCHMARK MANAGEMENT TAB NAME}

Validate Verify Click Technical Routing Grid First Row Inline Action Button For Exclusions
    [Tags]    REGRESSION
    Verify Click Technical Routing Grid First Row Inline Action Button

Validate Select Grid Exclusions Inline Action Item
    [Tags]    REGRESSION
    route_page_resource.Verify Select Inline Action Item     ${EXCLUSIONS INLINE ACTION ITEM}

Validate Exclusion Management Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify Exclusion Management Page Is Loaded Properly

Validate Close Exclusion Management Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab        ${EXCLUSION MANAGEMENT TAB NAME}

Validate Verify Click Technical Routing Grid First Row Inline Action Button For Overrides
    [Tags]    REGRESSION
    Verify Click Technical Routing Grid First Row Inline Action Button

Validate Select Overrides Inline Action Item
    [Tags]    REGRESSION
    Verify Select Commercial Routing Grid Inline Action Item     ${OVERRIDES INLINE ACTION ITEM}

Validate Overrides Management Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify Overrides Management Page Is Loaded Properly

Validate Close Overrides Management Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab        ${OVERRIDES MANAGEMENT TAB NAME}

Validate Verify Click Technical Routing Grid First Row Inline Action Button For Fast Track Exclusion
    [Tags]    REGRESSION
    Verify Click Technical Routing Grid First Row Inline Action Button

Validate Select Fast Track Exclusion Inline Action Item
    [Tags]    REGRESSION
    route_page_resource.Verify Select Inline Action Item     ${FAST TRACK EXCLUSION INLINE ACTION ITEM}

Validate Fast Track Exclusion Window Is Loaded Properly
    [Tags]    REGRESSION
    Verify Fast Track Exclusion Window Is Loaded Properly

Validate Close Fast Track Exclusion Window
    [Tags]    REGRESSION
    Verify Close Fast Track Exclusion Window