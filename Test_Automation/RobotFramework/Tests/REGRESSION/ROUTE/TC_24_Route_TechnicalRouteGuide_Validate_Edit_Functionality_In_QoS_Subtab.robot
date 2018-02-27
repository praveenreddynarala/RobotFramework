*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Technical Route Guide To Validate Edit Functionality in QoS Subtab

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

Validate Click Technical Routing Benchmarks Button
    [Tags]    REGRESSION
    Verify Click Technical Routing Benchmarks Button

Validate Set Route Class For Benchmark Management
    [Tags]    REGRESSION
    Verify Set Route Class For Benchmark Management         ${ROUTE CLASS}

Validate Select Qos Tab
    [Tags]    REGRESSION
    Verify Select Qos Tab

Validate Set Target ASR Column Value In Qos Grid
    [Tags]    REGRESSION
    Verify Set Value In Qos Grid Column     ${TARGET ASR COLUMN NAME}

Validate Set Minimum ASR Column Value In Qos Grid
    [Tags]    REGRESSION
    Verify Set Value In Qos Grid Column     ${MINIMUM ASR COLUMN NAME}

Validate Set Target ALOC Column Value In Qos Grid
    [Tags]    REGRESSION
    Verify Set Value In Qos Grid Column     ${TARGET ALOC COLUMN NAME}

Validate Set Minimum ALOC Column Value In Qos Grid
    [Tags]    REGRESSION
    Verify Set Value In Qos Grid Column     ${MINIMUM ALOC COLUMN NAME}

Validate Set Target NER Column Value In Qos Grid
    [Tags]    REGRESSION
    Verify Set Value In Qos Grid Column     ${TARGET NER COLUMN NAME}

Validate Set Minimum NER Column Value In Qos Grid
    [Tags]    REGRESSION
    Verify Set Value In Qos Grid Column     ${MINIMUM NER COLUMN NAME}

Validate Click Qos Save Changes Button
    [Tags]    REGRESSION
    Verify Click Qos Save Changes Button

Validate Close Benchmarks Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab    ${BENCHMARKS TAB NAME}