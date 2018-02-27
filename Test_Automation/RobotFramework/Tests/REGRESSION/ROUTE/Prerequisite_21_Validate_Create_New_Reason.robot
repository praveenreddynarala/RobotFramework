*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Bulk Edit and Release New Overrides

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Click Manage Reason Link
    [Tags]    REGRESSION
    Verify Click Manage Reason Link

Validate Click Add New Reason Button
    [Tags]    REGRESSION
    Verify Click Add New Reason Button

Validate Set Value In Scope Column
    [Tags]    REGRESSION
    Verify Set Value In Scope Column        ${SCOPE COLUMN VALUE}

Validate Set Value In Reason Column
    [Tags]    REGRESSION
    Verify Set Value In Reason Column       ${TEST DATA PREFIX}

Validate Click Manage Reasones Save Button
    [Tags]    REGRESSION
    Verify Click Manage Reasones Save Button