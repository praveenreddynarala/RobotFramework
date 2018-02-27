*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation To Add Dispute Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Outbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Outbound Statements Tab

Validate Click Adjustment Folders Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Button

Validate Set Adjustment Folder Bill Account
    [Tags]    REGRESSION
    Verify Set Adjustment Folder Bill Account       @{ADJUSTMENT FOLDER BILL ACCOUNT FOR ADD DISPUTE}

Validate Set Adjustment Folder Name
    [Tags]    REGRESSION
    Verify Set Adjustment Folder Name               @{ADJUSTMENT FOLDER NAME FOR ADD DISPUTE}

Validate Click Adjustment Folders Search Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Search Button

Validate Click Adjustment Folders Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Grid Inline Action Button       ${ADJUSTMENT FOLDER NAME FOR SELECT DISPUTE INLINE}

Validate Select Disputes Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${DISPUTES INLINE ITEM}

Validate Click Add Related Dispute Button
    [Tags]    REGRESSION
    Verify Click Add Related Dispute Button

Validate Set Add Dispute Statement Number
    [Tags]    REGRESSION
    Verify Set Add Dispute Statement Number         ${ADD DISPUTE STATEMENT NUMBER}

Validate Set Add Dispute Dispute Type
    [Tags]    REGRESSION
    Verify Set Add Dispute Dispute Type             ${ADD DISPUTE DISPUTE TYPE}

Validate Set Add Dispute Line Item Group
    [Tags]    REGRESSION
    Verify Set Add Dispute Line Item Group          ${ADD DISPUTE LINE ITEM GROUP}

Validate Set Add Dispute Status
    [Tags]    REGRESSION
    Verify Set Add Dispute Status                   ${ADD DISPUTE STATUS}

Validate Set Add Dispute Date
    [Tags]    REGRESSION
    Verify Set Add Dispute Date                     ${ADD DISPUTE DATE}

Validate Click Add Disputes Search Button
    [Tags]    REGRESSION
    Verify Click Add Disputes Search Button

Validate Select Add Disputes Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Add Disputes Grid Row Checkbox        ${AUDIT ACCOUNT NAME FOR ADD DISPUTES}

Validate Get Add Disputes Grid Row Details
    [Tags]    REGRESSION
    Verify Get Add Disputes Grid Row Details

Validate Click Add Diputes Save Button
    [Tags]    REGRESSION
    Verify Click Add Dispute Save Button

Validate Filter Disputes Grid Status
    [Tags]    REGRESSION
    Verify Filter Disputes Grid Status

Validate Filter Disputes Grid Dispute Type
    [Tags]    REGRESSION
    Verify Filter Disputes Grid Dispute Type

Validate Get Disputes Grid Row Details
    [Tags]    REGRESSION
    Verify Get Disputes Grid Row Details

Validate Disputes Grid Statement Begin Date
    [Tags]    REGRESSION
    Verify Disputes Grid Statement Begin Date

Validate Disputes Grid Statement End Date
    [Tags]    REGRESSION
    Verify Disputes Grid Statement End Date

Validate Disputes Grid Dispute Amount
    [Tags]    REGRESSION
    Verify Disputes Grid Dispute Amount

Validate Disputes Grid Statement Number
    [Tags]    REGRESSION
    Verify Disputes Grid Statement Number