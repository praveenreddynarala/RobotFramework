*** Settings ***
Documentation     A Test Suite With Set Of Tests For Outbound Statement Management To Validate Issuing Adjustment Statement End To End Workflow

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Outbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Outbound Statements Tab

Validate Set Bill Account For Search
    [Tags]    REGRESSION
    ${CREATED BILL ACCOUNT NAME} =       Verify Get Created Bill Account Name
    bill_and_audit_page_resource.Verify Set Bill Account         ${CREATED BILL ACCOUNT NAME}

Validate Set Statement Type
    [Tags]    REGRESSION
    Verify Set Statement Type       @{STATEMENT TYPE LIST}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search    7/1/2017

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Set Outbound Statements Grid Dropdown Value To Set Status As Traffic PreClosed
    [Tags]    REGRESSION
    Verify Set Outbound Statements Grid Dropdown Value      Status      Traffic PreClosed

Validate Click Outbound Statements Grid Save Changes Button To Set Status As Traffic PreClosed
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid Save Changes Button

Validate Set Outbound Statements Grid Dropdown Value To Set Status As Traffic Closed
    [Tags]    REGRESSION
    Verify Set Outbound Statements Grid Dropdown Value      Status      Traffic Closed

Validate Click Outbound Statements Grid Save Changes Button To Set Status As Traffic Closed
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid Save Changes Button

Validate Click Outbound Statements Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Non-Traffic Charges Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item    ${STATEMENT DETAILS INLINE ITEM}

Validate Select Adjustments Tab
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Adjustments Tab

Validate Click Adjustments Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Adjustments Grid First Row Inline Action Button

Validate Select Adjustments View Statement Inline Action Item
    [Tags]    REGRESSION
    Verify Select Adjustment Grid Inline Action Item       View Statement

Validate Click Add Financial Charges Button
    [Tags]    REGRESSION
    Verify Click Add Financial Charges Button

Validate Set Adjustment Charge Product
    [Tags]    REGRESSION
    Verify Set Adjustment Charge Product        ${TEST DATA PREFIX}

Validate Set Adjustment Charge Begin Date
    [Tags]    REGRESSION
    Verify Set Adjustment Charge Begin Date    6/1/2017

Validate Set Adjustment Charge End Date
    [Tags]    REGRESSION
    Verify Set Adjustment Charge End Date       ${END DATE FOR ISSUING ADJUSTMENT}

Validate Set Adjustment Charge Currency
    [Tags]    REGRESSION
    ${CURRENCY NAME} =     Verify Get Currency Name
    Verify Set Adjustment Charge Currency    ${CURRENCY NAME}

Validate Set Adjustment Charge Amount
    [Tags]    REGRESSION
    Verify Set Adjustment Charge Amount     ${AMOUNT FOR ISSUING ADJUSTMENT}

Validate Click Create Adjustment Charge Save Button
    [Tags]    REGRESSION
    Verify Click Create Adjustment Charge Save Button

Validate New Financial Charge Is Created
    [Tags]    REGRESSION
    Verify New Financial Charge Is Created

Validate Select Adjustment Charge Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Adjustment Charge Grid First Row Checkbox

Validate Click Assign To New Folder Button
    [Tags]    REGRESSION
    Verify Click Assign To New Folder Button

Validate Set Assign Adjustment Charge Folder Name
    [Tags]    REGRESSION
    Verify Set Assign Adjustment Charge Folder Name     ${TEST DATA PREFIX}

Validate Set Adjustment Type
    [Tags]    REGRESSION
    Verify Set Adjustment Type      ${ADJUSTMENT TYPE FOR ISSUING ADJUSTMENT}

Validate Click Assign Adjustment Charge Save Button
    [Tags]    REGRESSION
    Verify Click Assign Adjustment Charge Save Button

Validate Close Outbound Statement Tab After Assignment
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Close Current Tab        ${OUTBOUND STATEMENT TAB NAME PREFIX}

Validate Close Outbound Statement Second Tab After Assignment
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Close Current Tab        Outbound Statement: DefaultNumber

Validate Click Adjustment Folders Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Button

Validate Set Adjustment Folder Name
    [Tags]    REGRESSION
    Verify Set Adjustment Folder Name For Search

Validate Click Adjustment Folders Search Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Search Button

Validate Click Adjustment Folders Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Adjustment Folders Grid Inline Action Button For Created Folder

Validate Select Summary Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item        ${SUMMARY INLINE ITEM}

Validate Set Adjustment Folder Summary Under Approval Status
    [Tags]    REGRESSION
    Verify Set Adjustment Folder Summary Status     ${UNDER APPROVAL STATUS FOR ADJUSTMENT FOLDER}

Validate Click Adjustment Folder Summary Save Button For Under Approval Status
    [Tags]    REGRESSION
    Verify Click Adjustment Folder Summary Save Button      ${UNDER APPROVAL STATUS FOR ADJUSTMENT FOLDER}

Validate Set Adjustment Folder Summary Approved Status
    [Tags]    REGRESSION
    Verify Set Adjustment Folder Summary Status     ${APPROVED STATUS FOR ADJUSTMENT FOLDER}

Validate Click Adjustment Folder Summary Save Button For Approved Status
    [Tags]    REGRESSION
    Verify Click Adjustment Folder Summary Save Button      ${APPROVED STATUS FOR ADJUSTMENT FOLDER}

Validate Close Adjustment Folders First Tab
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Close Current Tab        ${ADJUSTMENT FOLDER CHARGES TAB NAME}

Validate Close Adjustment Folders Second Tab
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Close Current Tab        ${ADJUSTMENT FOLDER CHARGES TAB NAME}