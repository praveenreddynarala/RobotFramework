*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Add Charge functionality in Adjustment Folder

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot
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
    Verify Set Adjustment Folder Status         @{ADJUSTMENT FOLDER STATUS FOR ADD CHARGE}

Validate Click Adjustment Folders Search Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Search Button

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

Validate Set Charges Begin Date For Add Charge
    [Tags]    REGRESSION
    Verify Set Charges Begin Date For Add Charge           ${CHARGES BEGIN DATE FOR ADD CHARGE}

Validate Set Charges End Date For Add Charge
    [Tags]    REGRESSION
    Verify Set Charges End Date For Add Charge             ${CHARGES END DATE FOR ADD CHARGE}

Validate Set Charges Grid Charge Name For Add Charge
    [Tags]    REGRESSION
    Verify Set Charges Grid Charge Name For Add Charge      ${TEST DATA PREFIX}

Validate Set Charges Grid Currency
    [Tags]    REGRESSION
    ${CURRENCY NAME} =     Verify Get Currency Name
    Verify Set Charges Grid Currency        ${CURRENCY NAME}

Validate Set Charges Grid Amount
    [Tags]    REGRESSION
    Verify Set Charges Grid Amount          ${CHARGES GRID AMOUNT FOR ADD CHARGE}

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

Validate Close Adjustment Folder Charges Tab
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Close Current Tab        ${ADJUSTMENT FOLDER CHARGES TAB NAME}