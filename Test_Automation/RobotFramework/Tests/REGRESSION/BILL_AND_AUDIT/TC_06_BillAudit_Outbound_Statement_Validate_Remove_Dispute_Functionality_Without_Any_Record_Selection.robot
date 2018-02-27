*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Remove Dispute Functionality Without Any Record Selection

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED ADJUSTMENT FOLDER NAME}       ${EMPTY}

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
    ${CREATED BILL ACCOUNT NAME} =       Verify Get Created Bill Account Name
    @{ADJUSTMENT FOLDER BILL ACCOUNT} =     create list     ${CREATED BILL ACCOUNT NAME}
    Verify Set Adjustment Folder Bill Account       @{ADJUSTMENT FOLDER BILL ACCOUNT}

Validate Set Adjustment Folder Name
    [Tags]    REGRESSION
    ${CREATED ADJUSTMENT FOLDER NAME} =     Verify Get Created Adjustment Folder Name
    set suite variable          ${CREATED ADJUSTMENT FOLDER NAME}
    @{ADJUSTMENT FOLDER NAMES} =        create list     ${CREATED ADJUSTMENT FOLDER NAME}
    Verify Set Adjustment Folder Name               @{ADJUSTMENT FOLDER NAMES}

Validate Click Adjustment Folders Search Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Search Button

Validate Click Adjustment Folders Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Grid Inline Action Button       ${CREATED ADJUSTMENT FOLDER NAME}

Validate Select Disputes Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item        ${DISPUTES INLINE ITEM}

Validate Click Remove Dispute Button Without Selection
    [Tags]    REGRESSION
    Verify Click Remove Dispute Button Without Selection