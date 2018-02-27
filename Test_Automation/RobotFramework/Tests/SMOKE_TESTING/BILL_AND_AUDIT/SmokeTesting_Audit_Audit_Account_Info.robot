*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Audit to Validate Audit Account Info

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

Validate Set Begin Date For Search
    [Tags]    SMOKE TESTING
    Verify Set Inbound Statement Begin Date     ${SMOKE TEST AUDIT ACCOUNT INFO BEGIN DATE}

Validate Click Inbound Statement Search Button
    [Tags]    SMOKE TESTING
    Verify Click Inbound Statement Search Button

Validate Click Inbound Statement Grid First Row Inline Action Button
    [Tags]    SMOKE TESTING
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Audit Account Info Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Inline Action Item        ${AUDIT ACCOUNT INFO INLINE ITEM}

Validate Audit Account Info Pop Up Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Audit Account Info Pop Up Is Loaded Properly

Validate Close Current Pop Up
    [Tags]    SMOKE TESTING
    Verify Close Current Pop Up     ${AUDIT ACCOUNT INFO POP UP NAME}