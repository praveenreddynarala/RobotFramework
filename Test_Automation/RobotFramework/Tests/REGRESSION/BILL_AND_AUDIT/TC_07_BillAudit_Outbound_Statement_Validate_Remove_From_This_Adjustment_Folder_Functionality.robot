*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Remove From This Adjustment Folder Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
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
    Verify Set Adjustment Folder Status         @{ADJUSTMENT FOLDER STATUS}

Validate Click Adjustment Folders Search Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Search Button

Validate Get Created Adjustment Folder Name
    [Tags]    REGRESSION
    ${CREATED ADJUSTMENT FOLDER NAME} =     Verify Get Created Adjustment Folder Name
    log     ${CREATED ADJUSTMENT FOLDER NAME}
    set suite variable          ${CREATED ADJUSTMENT FOLDER NAME}

Validate Filter Adjustment Folders Grid
    [Tags]    REGRESSION
    Verify Filter Adjustment Folders Grid       ${ADJUSTMENT FOLDER COLUMN NAME}        ${CREATED ADJUSTMENT FOLDER NAME}

Validate Click Adjustment Folders Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Grid Inline Action Button       ${CREATED ADJUSTMENT FOLDER NAME}

Validate Select Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item          ${CHARGES INLINE ITEM}

Validate Get Adjustment Folders Calender Year
    [Tags]    REGRESSION
    Verify Get Adjustment Folders Calender Year

Validate Click Add New Adjustment Charge Button
    [Tags]    REGRESSION
    Verify Click Add New Adjustment Charge Button

Validate Set Charges Grid Adjustment Statement
    [Tags]    REGRESSION
    Verify Set Charges Grid Adjustment Statement

Validate Set Charges Begin Date
    [Tags]    REGRESSION
    Verify Set Charges Begin Date           ${CHARGES BEGIN DATE}

Validate Set Charges End Date
    [Tags]    REGRESSION
    Verify Set Charges End Date             ${CHARGES END DATE}

Validate Set Charges Grid Charge Name
    [Tags]    REGRESSION
    Verify Set Charges Grid Charge Name

Validate Set Charges Grid Currency
    [Tags]    REGRESSION
    ${CURRENCY NAME} =     Verify Get Currency Name
    Verify Set Charges Grid Currency        ${CURRENCY NAME}

Validate Set Charges Grid Amount
    [Tags]    REGRESSION
    Verify Set Charges Grid Amount          ${CHARGES GRID AMOUNT}

Validate Set Charges Grid Accounting Code
    [Tags]    REGRESSION
    ${ACCOUNTING CODE} =        Verify Get Created Accounting Code
    Verify Set Charges Grid Accounting Code     ${ACCOUNTING CODE}

Validate Click Charges Tab Save Changes Button
    [Tags]    REGRESSION
    Verify Click Charges Tab Save Changes Button

Validate Filter Charges Grid
    [Tags]    REGRESSION
    Verify Filter Charges Grid      ${CHARGE NAME COLUMN NAME}

Validate Select Charges Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Charges Grid Row Checkbox

Validate Click Remove From This Adjustment Folder Button
    [Tags]    REGRESSION
    Verify Click Remove From This Adjustment Folder Button

Validate Close Adjustment Folder Charges Tab
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Close Current Tab        ${ADJUSTMENT FOLDER CHARGES TAB NAME}