*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Bill to Validate Navigation to Adjustment Statements

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    SMOKE TESTING
    click on home icon and select 'bill and audit' from main menu

Validate Select Outbound Statements Tab
    [Tags]    SMOKE TESTING
    Verify Select Outbound Statements Tab

Validate Set Statement Type
    [Tags]    SMOKE TESTING
    Verify Set Statement Type       Regular

Validate Set Statement Status For Search
    [Tags]    SMOKE TESTING
    Verify Set Statement Status For Search      Traffic Closed

Validate Set Begin Date For Search
    [Tags]    SMOKE TESTING
    Verify Set Begin Date For Statement Search     ${SMOKE TEST ADJUSTMENTS BEGIN DATE}

Validate Click Outbound Statement Search Button
    [Tags]    SMOKE TESTING
    Verify Click Outbound Statement Search button

Validate Click Outbound Statement Grid First Row Inline Action Button
    [Tags]    SMOKE TESTING
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Adjustment Statement Inline Action
    [Tags]    SMOKE TESTING
    Verify Select Inline Action Item        ${ADJUSTMENT STATEMENT INLINE ITEM}

Validate Adjustments Tab Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Adjustments Tab Is Loaded Properly