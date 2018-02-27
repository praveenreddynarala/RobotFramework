*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Bill to Validate Navigation to Statement Details

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

Validate Click Outbound Statement Grid First Row Inline Action Button
    [Tags]    SMOKE TESTING
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Statement Details Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Inline Action Item        ${STATEMENT DETAILS INLINE ITEM}

Validate Statement Details Page Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Statement Details Page Is Loaded Properly

Validate Usage Charges Tab Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Usage Charges Tab Is Loaded Properly