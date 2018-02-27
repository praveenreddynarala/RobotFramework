*** Settings ***
Documentation     A Test Suite With Set Of Tests For Audit Inbound Statement Validation To Verify Moving The Statement To Preaudited Status

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

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search    @{MAPPED STATUS LIST}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search      ${BEGIN DATE FOR CHANGE STATUS}

Validate Set End Date For Search
    [Tags]    REGRESSION
    Verify Set End Date For Statement Search        ${END DATE FOR CHANGE STATUS}

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Get Inbound Statement Grid First Row Audit Account
    [Tags]    REGRESSION
    Verify Get Inbound Statement Grid First Row Audit Account       ${AUDIT ACCOUNT COLUMN NAME}

Validate Get Inbound Statement Grid First Row Statement Number
    [Tags]    REGRESSION
    Verify Get Inbound Statement Grid First Row Statement Number        ${STATEMENT NUMBER COLUMN NAME}

Validate Click Inbound Statement Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${STATEMENT VALIDATION INLINE ITEM}

Validate Click Show Summary Link
    [Tags]    REGRESSION
    Verify Click Show Summary Link

Validate Set Statement Summary Status
    [Tags]    REGRESSION
    Verify Set Statement Summary Status     @{PRE AUDITED STATUS LIST}

Validate Click Statement Summary Save Button
    [Tags]    REGRESSION
    Verify Click Statement Summary Save Button

Validate Close Inbound Statement Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${INBOUND STATEMENTS TAB NAME}

Validate Set Status Edited Audit Account For Search
    [Tags]    REGRESSION
    Verify Set Status Edited Audit Account For Search

Validate Clear Inbound Statement Multi Select Kendo Dropdown
    [Tags]    REGRESSION
    Verify Clear Inbound Statement Multi Select Kendo Dropdown      ${STATEMENT STATUS LABEL TEXT}

Validate Set Statement Status For Search After Change Status
    [Tags]    REGRESSION
    Verify Set Statement Status For Search    @{PRE AUDITED STATUS LIST}

Validate Click Inbound Statement Search Button After Change Status
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Filter Inbound Statements Grid With Status Edited Statement Number
    [Tags]    REGRESSION
    Verify Filter Inbound Statements Grid With Status Edited Statement Number       ${STATEMENT NUMBER COLUMN NAME}

Validate Click Inbound Statement Grid First Row Inline Action Button After Change Status
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Inline Action Item After Chnage Status
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${STATEMENT VALIDATION INLINE ITEM}

Validate Click Show Summary Link After Change Status
    [Tags]    REGRESSION
    Verify Click Show Summary Link

Validate Changed Statement Status
    [Tags]    REGRESSION
    Verify Changed Statement Status     @{PRE AUDITED STATUS LIST}

Validate Close Inbound Statement Tab After Verification
    [Tags]    REGRESSION
    Verify Close Current Tab        ${INBOUND STATEMENTS TAB NAME}