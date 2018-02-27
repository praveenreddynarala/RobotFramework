*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate The Behavior When User Does Not Select Any Record And Click On Below Actions

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
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

Validate Set Adjustment Folder Status
    [Tags]    REGRESSION
    Verify Set Adjustment Folder Status         @{ADJUSTMENT FOLDER STATUS FOR CHECK BEHAVIOR}

Validate Click Adjustment Folders Search Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Search Button

Validate Get Created Adjustment Folder Name
    [Tags]    REGRESSION
    ${CREATED ADJUSTMENT FOLDER NAME} =     Verify Get Created Adjustment Folder Name
    set suite variable      ${CREATED ADJUSTMENT FOLDER NAME}

Validate Filter Adjustment Folders Grid
    [Tags]    REGRESSION
    Verify Filter Adjustment Folders Grid       ${ADJUSTMENT FOLDER COLUMN NAME}        ${CREATED ADJUSTMENT FOLDER NAME}

Validate Click Adjustment Folders Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Grid Inline Action Button       ${CREATED ADJUSTMENT FOLDER NAME}

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item          ${CHARGES INLINE ITEM}

Validate Click Remove From This Adjustment Folder Button Without Selecting Checkbox
    [Tags]    REGRESSION
    Verify Click Remove From This Adjustment Folder Button Without Selecting Checkbox

Validate Click Move To Another Adjustment Folder Button Without Selecting Checkbox
    [Tags]    REGRESSION
    Verify Click Move To Another Adjustment Folder Button Without Selecting Checkbox