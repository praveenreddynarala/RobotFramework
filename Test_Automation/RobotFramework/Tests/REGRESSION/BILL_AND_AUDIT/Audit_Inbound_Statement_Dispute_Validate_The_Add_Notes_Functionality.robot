*** Settings ***
Documentation     A Test Suite With Set Of Tests For Inbound Statement Dispute To Validate The Add Notes Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Inbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Inbound Statement Tab

Validate Set Audit Account For Search
    [Tags]    REGRESSION
    Verify Set Audit Account For Search     @{AUDIT ACCOUNT FOR ADD DISPUTE NOTE}

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search      @{PRE AUDITED STATUS LIST}

Validate Set Begin Date For Statement Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search      ${BEGIN DATE FOR ADD DISPUTE NOTE}

Validate Set End Date For Statement Search
    [Tags]    REGRESSION
    Verify Set End Date For Statement Search        ${END DATE FOR ADD DISPUTE NOTE}

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Click Inbound Statement Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Statement Details Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${STATEMENT DETAILS INLINE ITEM}

Validate Select Disputes Tab
    [Tags]    REGRESSION
    Verify Select Disputes Tab

Validate Click Disputes Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Disputes Grid First Row Inline Action Button

Validate Select Notes Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${NOTES INLINE ITEM NAME}

Validate Click Add New Note Button
    [Tags]    REGRESSION
    Verify Click Add New Note Button

Validate Verify Set Dispute Note
    [Tags]    REGRESSION
    Verify Set Dispute Note     ${TEST DATA PREFIX}

Validate Click Add New Note Cancel Button
    [Tags]    REGRESSION
    Verify Click Add New Note Cancel Button

Validate Click Add New Note Save Button
    [Tags]    REGRESSION
    Verify Click Add New Note Save Button

Validate Filter Disputes Notes Grid
    [Tags]    REGRESSION
    Verify Filter Disputes Notes Grid       ${NOTE CONTENT COLUMN NAME}

Validate Search Results Displayed In The Grid
    [Tags]    REGRESSION
    Verify Search Results Displayed In The Grid