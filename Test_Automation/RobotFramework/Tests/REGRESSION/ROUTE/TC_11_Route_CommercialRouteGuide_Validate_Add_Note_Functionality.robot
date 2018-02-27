*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Commercial Route Guide To Validate Add Note Functionality

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

Validate Set Route Class For Search
    [Tags]    REGRESSION
    Verify Set Route Class For Search       ${ROUTE CLASS}

Valiadte Click Commercial Routing Grid Search Button
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid Search Button

Validate Click Commercial Routing Grid First Row Routing Product Link
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid First Row Routing Product Link

Validate Select Notes Tab
    [Tags]    REGRESSION
    Verify Select Notes Tab

Validate Click Add Note Button
    [Tags]    REGRESSION
    Verify Click Add Note Button

Validate Set Note In Notes Grid
    [Tags]    REGRESSION
    Verify Set Note In Notes Grid       ${TEST DATA PREFIX}

Validate Click Add Note Save Button
    [Tags]    REGRESSION
    Verify Click Add Note Save Button

Validate Click Add Note Delete Button
    [Tags]    REGRESSION
    Verify Click Add Note Delete Button