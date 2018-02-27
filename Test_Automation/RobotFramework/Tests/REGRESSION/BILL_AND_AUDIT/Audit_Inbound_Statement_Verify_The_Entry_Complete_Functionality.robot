*** Settings ***
Documentation     A Test Suite With Set Of Tests For Audit Inbound Statement To Verify The Entry Complete Functionality

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

Validate Click Create New Statement Button
    [Tags]    REGRESSION
    Verify Click Create New Statement Button

Validate Set Audit Account
    [Tags]    REGRESSION
    Verify Set Audit Account    @{ADD RESOLUTION AUDIT ACCOUNT}

Validate Set Statement Number
    [Tags]    REGRESSION
    Verify Set Statement Number

Validate Set Statement Currency
    [Tags]    REGRESSION
    Verify Set Statement Currency    ${ADD RESOLUTION CURRENCY}

Validate Set Total Amount
    [Tags]    REGRESSION
    Verify Set Total Amount    ${ADD RESOLUTION TOTAL AMOUNT}

Validate Set Total Amount With Taxes
    [Tags]    REGRESSION
    Verify Set Total Amount With Taxes    ${ADD RESOLUTION TOTAL AMOUNT WITH TAXES}

Validate Set Statement Begin Date
    [Tags]    REGRESSION
    Verify Set Statement Begin Date    ${ADD RESOLUTION BEGIN DATE}

Validate Set Statement End Date
    [Tags]    REGRESSION
    Verify Set Statement End Date    ${ADD RESOLUTION END DATE}

Validate Set Statement Issued Date
    [Tags]    REGRESSION
    Verify Set Statement Issued Date    ${ADD RESOLUTION ISSUED DATE}

Validate Set Statement Received Date
    [Tags]    REGRESSION
    Verify Set Statement Received Date    ${ADD RESOLUTION RECEIVED DATE}

Validate Set Statement Due Date
    [Tags]    REGRESSION
    Verify Set Statement Due Date    ${ADD RESOLUTION DUE DATE}

Validate Click Statement Entry Save Button
    [Tags]    REGRESSION
    Verify Click Statement Entry Save Button

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search      @{STATUS LIST FOR SEARCH}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Search

Validate Set End Date For Search
    [Tags]    REGRESSION
    Verify Set End Date For Search

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Filter Inbound Statements Grid With Created Statement
    [Tags]    REGRESSION
    Verify Filter Inbound Statements Grid With Created Statement        ${STATEMENT NUMBER COLUMN NAME}

Validate Click Inbound Statement Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid Inline Action Button

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

Validate Set Bulk Add Number Of Rows
    [Tags]    REGRESSION
    Verify Set Bulk Add Number Of Rows      ${ADD RESOLUTION BULK ADD NUMBER OF ROWS}

Validate Set Tariff Type
    [Tags]    REGRESSION
    Verify Set Tariff Type      ${ADD RESOLUTION BULK ADD TARIFF TYPE}

Validate Set Line Item Type
    [Tags]    REGRESSION
    Verify Set Line Item Type       ${ADD RESOLUTION BULK ADD LINE ITEM TYPE}

Validate Set Service Group
    [Tags]    REGRESSION
    Verify Set Service Group        ${ADD RESOLUTION BULK ADD SERVICE GROUP}

Validate Set Product
    [Tags]    REGRESSION
    Verify Set Product      ${ADD RESOLUTION BULK ADD PRODUCT NAME}

Validate Set Time Band
    [Tags]    REGRESSION
    Verify Set Time Band        ${ADD RESOLUTION BULK ADD TIME BAND}

Validate Set Bulk Add Begin Date
    [Tags]    REGRESSION
    Verify Set Bulk Add Begin Date      ${ADD RESOLUTION BULK ADD BEGIN DATE}

Validate Set Bulk Add End Date
    [Tags]    REGRESSION
    Verify Set Bulk Add End Date      ${ADD RESOLUTION BULK ADD END DATE}

Validate Set Rating Unit
    [Tags]    REGRESSION
    Verify Set Rating Unit      ${ADD RESOLUTION BULK ADD RATING UNIT}

Validate Click Bulk Add Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Set Value In Minutes/Quantity Column
    [Tags]    REGRESSION
    Verify Set Value In Received Charges Grid Column        ${MINUTES/QUANTITY COLUMN NAME}     ${ADD RESOLUTION BULK ADD MINUTES/QUANTITY VALUE}

Validate Set Value In Rate Column
    [Tags]    REGRESSION
    Verify Set Value In Received Charges Grid Column        ${RATE COLUMN NAME}     ${ADD RESOLUTION BULK ADD RATE VALUE}

Validate Click Received Charges Save Changes Button
    [Tags]    REGRESSION
    Verify Click Received Charges Save Changes Button

Validate Click Entry Complete Button
    [Tags]    REGRESSION
    Verify Click Entry Complete Button