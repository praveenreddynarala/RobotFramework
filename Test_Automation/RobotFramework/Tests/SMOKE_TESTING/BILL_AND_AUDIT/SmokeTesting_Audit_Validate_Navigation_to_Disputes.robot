*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Audit to Validate Navigation to Disputes

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    SMOKE TESTING
    click on home icon and select 'bill and audit' from main menu

Validate Select Inbound Statements Tab
    [Tags]    SMOKE TESTING
    Verify Select Inbound Statement Tab

Validate Set Statement Status For Search
    [Tags]    SMOKE TESTING
    Verify Set Statement Status For Search      Disputed

Validate Set Begin Date For Search
    [Tags]    SMOKE TESTING
    Verify Set Inbound Statement Begin Date     ${SMOKE TEST DISPUTES BEGIN DATE}

Validate Click Inbound Statement Search Button
    [Tags]    SMOKE TESTING
    Verify Click Inbound Statement Search Button

Validate Click Inbound Statement Grid First Row Inline Action Button
    [Tags]    SMOKE TESTING
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Statement Details Inline Action
    [Tags]    SMOKE TESTING
    Verify Select Inline Action Item        ${STATEMENT DETAILS INLINE ITEM}

Validate Select Disputes Tab
    [Tags]    SMOKE TESTING
    Verify Select Disputes Tab

Validate Win Dispute Button Is Present
    [Tags]    SMOKE TESTING
    Verify Win Dispute Button Is Present

Validate Lose Dispute Button Is Present
    [Tags]    SMOKE TESTING
    Verify Lose Dispute Button Is Present