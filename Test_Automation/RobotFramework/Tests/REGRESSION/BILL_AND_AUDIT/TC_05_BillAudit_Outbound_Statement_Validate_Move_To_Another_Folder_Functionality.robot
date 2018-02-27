*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Move To Another Folder Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${FIRSTLY CREATED ADJUSTMENT FOLDER NAME}       ${EMPTY}
${CREATED CHARGE NAME}                          ${EMPTY}
${SECONDLY CREATED ADJUSTMENT FOLDER NAME}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Bill And Audit module
    click on home icon and select 'bill and audit' from main menu

Validate Select Outbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Outbound Statements Tab

Validate Click Adjustment Folders Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Button

Validate Set Adjustment Folder Status
    [Tags]    REGRESSION
    Verify Set Adjustment Folder Status         @{ADJUSTMENT FOLDER STATUS LIST TO MOVE}

Validate Click Adjustment Folders Search Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Search Button

Validate Get Firstly Created Adjustment Folder Name
    [Tags]    REGRESSION
    ${FIRSTLY CREATED ADJUSTMENT FOLDER NAME} =     Verify Get Created Adjustment Folder Name
    log     ${FIRSTLY CREATED ADJUSTMENT FOLDER NAME}
    set suite variable          ${FIRSTLY CREATED ADJUSTMENT FOLDER NAME}

Validate Click Create New Adjustment Folder Button
    [Tags]    REGRESSION
    Verify Click Create New Adjustment Folder Button

Validate Set Adjustment Folder Name To Create New One
    [Tags]    REGRESSION
    Verify Set Adjustment Folder Name To Create New One     ${TEST DATA PREFIX}

Validate Set Adjustment Type
    [Tags]    REGRESSION
    Verify Set Adjustment Type      ${ADJUSTMENT TYPE FOR ISSUING ADJUSTMENT}

Validate Set Bill Account From Single Selection Kendo Dropdown
    [Tags]    REGRESSION
    ${CREATED BILL ACCOUNT NAME} =       Verify Get Created Bill Account Name
    Verify Set Bill Account From Single Selection Kendo Dropdown        ${CREATED BILL ACCOUNT NAME}

Validate Set Calender Year
    [Tags]    REGRESSION
    Verify Set Calender Year        2017

Validate Click Create New Adjustment Folder Save Button
    [Tags]    REGRESSION
    Verify Click Move To Adjustment Folder Save Button

Validate Get Secondly Created Adjustment Folder Name
    [Tags]    REGRESSION
    ${SECONDLY CREATED ADJUSTMENT FOLDER NAME} =     Verify Get Created Adjustment Folder Name
    log     ${SECONDLY CREATED ADJUSTMENT FOLDER NAME}
    set suite variable          ${SECONDLY CREATED ADJUSTMENT FOLDER NAME}

Validate Filter Adjustment Folders Grid
    [Tags]    REGRESSION
    Verify Filter Adjustment Folders Grid       ${ADJUSTMENT FOLDER COLUMN NAME}        ${FIRSTLY CREATED ADJUSTMENT FOLDER NAME}

Validate Click Adjustment Folders Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Grid Inline Action Button       ${FIRSTLY CREATED ADJUSTMENT FOLDER NAME}

Validate Select Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item        ${CHARGES INLINE ITEM}

Validate Get Created Charge Name
    [Tags]    REGRESSION
    ${CREATED CHARGE NAME} =        Verify Get Created Charge Name
    set suite variable          ${CREATED CHARGE NAME}

Validate Filter Charges Grid Column
    [Tags]    REGRESSION
    Verify Filter Charges Grid Column       ${CHARGE NAME COLUMN NAME}      ${CREATED CHARGE NAME}

Validate Get Charges Grid Row Details
    [Tags]    REGRESSION
    Verify Get Charges Grid Row Details

Validate Select Charges Grid Row Checkbox With Unique Identifier
    [Tags]    REGRESSION
    Verify Select Charges Grid Row Checkbox With Unique Identifier          ${CREATED CHARGE NAME}

Validate Click Move To Another Adjustment Folder Button
    [Tags]    REGRESSION
    Verify Click Move To Another Adjustment Folder Button

Validate Set Move Charges Adjustment Folder Name
    [Tags]    REGRESSION
    Verify Set Move Charges Adjustment Folder Name          ${SECONDLY CREATED ADJUSTMENT FOLDER NAME}

Validate Click Move To Adjustment Folder Save Button
    [Tags]    REGRESSION
    Verify Click Move To Adjustment Folder Save Button

Validate Close Adjustment Folder Charges Tab
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Close Current Tab        ${ADJUSTMENT FOLDER CHARGES TAB NAME}

Validate Clear Adjustment Folder Filter
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Clear Filter         ${ADJUSTMENT FOLDER COLUMN NAME}

Validate Set Adjustment Folder Name
    [Tags]    REGRESSION
    @{ADJUSTMENT FOLDER FOLDER NAME} =      create list         ${SECONDLY CREATED ADJUSTMENT FOLDER NAME}
    Verify Set Adjustment Folder Name           @{ADJUSTMENT FOLDER FOLDER NAME}

Validate Click Adjustment Folders Search Button After Moving
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Search Button

Validate Click Adjustment Folders Grid Inline Action Button After Moving
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Grid Inline Action Button       ${SECONDLY CREATED ADJUSTMENT FOLDER NAME}

Validate Select Inline Action Item After Moving
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item        ${CHARGES INLINE ITEM}

Validate Filter Charges Grid Column After Moving
    [Tags]    REGRESSION
    Verify Filter Charges Grid Column       ${CHARGE NAME COLUMN NAME}      ${CREATED CHARGE NAME}

Validate Compare Charges Details After Moving
    [Tags]    REGRESSION
    Verify Compare Charges Details After Moving