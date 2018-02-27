*** Settings ***
Documentation     A Test Suite With Set Of Tests For Audit Inbound Statement To Verify Edit Line Item In The Grid

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
    Verify Set Statement Status For Search      @{BULK EDIT STATUS LIST FOR SEARCH}

Validate Set Statement Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search        ${STATEMENT BEGIN DATE FOR EDIT LINE ITEM}

Validate Set Statement End Date For Search
    [Tags]    REGRESSION
    Verify Set End Date For Statement Search        ${STATEMENT END DATE FOR EDIT LINE ITEM}

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Click Inbound Statement Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Statement Details Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${STATEMENT DETAILS INLINE ITEM}

Validate Is Received Charges Tab Present
   [Tags]    REGRESSION
    Verify Is Tab Present       ${RECEIVED CHARGES TAB NAME}

Validate Is Statement Validation Tab Present
   [Tags]    REGRESSION
    Verify Is Tab Present       ${STATEMENT VALIDATION TAB NAME}

Validate Is Documents Tab Present
   [Tags]    REGRESSION
    Verify Is Tab Present       ${DOCUMENTS TAB NAME}

Validate Is Statement Fields Tab Present
   [Tags]    REGRESSION
    Verify Is Tab Present       ${STATEMENT FIELDS TAB NAME}

Validate Is Workflow Tab Present
   [Tags]    REGRESSION
    Verify Is Tab Present       ${WORKFLOW TAB NAME}

Validate Click Bulk Add Button
    [Tags]    REGRESSION
    Verify Click Bulk Add Button

Validate Set Bulk Add Number of Rows
    [Tags]    REGRESSION
    Verify Set Bulk Add Number Of Rows      ${BULK ADD NUMBER OF ROWS}

Validate Set Tariff Type
    [Tags]    REGRESSION
    Verify Set Tariff Type      ${BULK ADD TARIFF TYPE}

Validate Set Line Item Type
    [Tags]    REGRESSION
    Verify Set Line Item Type       ${BULK ADD LINE ITEM TYPE}

Validate Set Service Group
    [Tags]    REGRESSION
    Verify Set Service Group        ${BULK ADD SERVICE GROUP}

Validate Set Product
    [Tags]    REGRESSION
    Verify Set Product      ${BULK ADD PRODUCT NAME}

Validate Set Time Band
    [Tags]    REGRESSION
    Verify Set Time Band        ${BULK ADD TIME BAND}

Validate Set Bulk Add Begin Date
    [Tags]    REGRESSION
    Verify Set Bulk Add Begin Date      ${BULK ADD BEGIN DATE}

Validate Set Bulk Add End Date
    [Tags]    REGRESSION
    Verify Set Bulk Add End Date      ${BULK ADD END DATE}

Validate Set Rating Unit
    [Tags]    REGRESSION
    Verify Set Rating Unit      ${BULK ADD RATING UNIT}

Validate Click Bulk Add Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Set Value In Minutes/Quantity Column
    [Tags]    REGRESSION
    Verify Set Value In Received Charges Grid Column        ${MINUTES/QUANTITY COLUMN NAME}     ${MINUTES/QUANTITY VALUE FOR EDIT LINE ITEM}

Validate Set Value In Rate Column
    [Tags]    REGRESSION
    Verify Set Value In Received Charges Grid Column        ${RATE COLUMN NAME}     ${RATE VALUE FOR EDIT LINE ITEM}

Valdiate Set Value In Product Column
    [Tags]    REGRESSION
    Verify Set Product In Received Charges Grid      ${BULK ADD PRODUCT NAME}

Validate Click Received Charges Save Changes Button
    [Tags]    REGRESSION
    Verify Click Received Charges Save Changes Button

Validate Filter Received Charges Grid
    [Tags]    REGRESSION
    Verify Filter Received Charges Grid

Validate Get Received Charges Grid Row Details
    [Tags]    REGRESSION
    Verify Get Received Charges Grid Row Details

Validate Modify Received Charges Grid Tarrif Type To Cancel
    [Tags]    REGRESSION
    Verify Update Received Charges Grid First Row Column    ${TARIFF TYPE COLUMN NAME}      ${TARIFF TYPE FOR EDIT LINE ITEM}

Validate Modify Received Charges Grid Line Item Type To Cancel
    [Tags]    REGRESSION
    Verify Update Received Charges Grid First Row Column    ${LINE ITEM TYPE COLUMN NAME}      ${LINE ITEM TYPE FOR EDIT LINE ITEM}

Validate Click Received Charges Cancel Changes Button
    [Tags]    REGRESSION
    Verify Click Received Charges Cancel Changes Button

Validate Received Charges Grid Changes Are Reverted
    [Tags]    REGRESSION
    Verify Received Charges Grid Changes Are Reverted

Validate Select Received Charges Grid Row Checkbox After Cancelling Changes
    [Tags]    REGRESSION
    Verify Select Received Charges Grid Row Checkbox

Validate Click Statement Details Grid Delete Button
    [Tags]    REGRESSION
    Verify Click Statement Details Grid Delete Button

Validate Close Statement Details Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${INBOUND STATEMENTS TAB NAME}