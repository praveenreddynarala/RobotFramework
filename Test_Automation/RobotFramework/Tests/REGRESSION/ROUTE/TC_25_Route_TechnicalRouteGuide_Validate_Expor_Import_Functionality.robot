*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Technical Route Guide To Validate Export Import Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}        ${EMPTY}

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

Validate Click Qos Import Button
    [Tags]    REGRESSION
    Verify Click Qos Import Button

Validate Click Import Browse Button
    [Tags]    REGRESSION
    Verify Click Import Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    set suite variable      ${CALL TYPE}
    route_page_resource.Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${TECHNICAL BENCHMARK TEMPLATE NAME}

Validate Click Upload Button
    [Tags]    REGRESSION
    Verify Click Upload Button

Validate Click Upload Cancel Button
    [Tags]    REGRESSION
    Verify Click Upload Cancel Button

Validate Read Data From Upload Excel File
    [Tags]    REGRESSION
    Verify Read Data From Upload Excel File     ${TEMPLATE PATH}/${CALL TYPE}/${TECHNICAL BENCHMARK TEMPLATE NAME}

Validate Click Qos Export Button
    [Tags]    REGRESSION
    Verify Click Qos Export Button