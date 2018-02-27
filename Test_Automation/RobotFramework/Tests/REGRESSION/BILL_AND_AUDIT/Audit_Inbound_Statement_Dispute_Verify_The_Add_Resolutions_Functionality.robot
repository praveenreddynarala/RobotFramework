*** Settings ***
Documentation     A Test Suite With Set Of Tests For Audit Inbound Statement Dispute To Verify The Add Resolutions Functionality

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

Validate Set Audit Account For Search
    [Tags]    REGRESSION
    Verify Set Audit Account For Search    @{ADD RESOLUTION AUDIT ACCOUNT}

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

Validate Select Line Item Mapping Tab
    [Tags]    REGRESSION
    Verify Select Line Item Mapping Tab

Validate Map Unmapped Internal Line Items
    [Tags]    REGRESSION
    Verify Map Unmapped Internal Line Items

Validate Map Unmapped Received Line Items
    [Tags]    REGRESSION
    Verify Map Unmapped Received Line Items

Validate Click Line Item Mapping Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Line Item Mapping Grid Save Changes Button

Validate Set Statement Summary Status To Mapped
    [Tags]    REGRESSION
    Verify Set Statement Summary Status     ${STATEMENT SUMMARY MAPPED STATUS}

Validate Click Statement Summary Save Button After Setting Mapped Status
    [Tags]    REGRESSION
    Verify Click Statement Summary Save Button

Validate Set Statement Summary Status To Pre-Audited
    [Tags]    REGRESSION
    Verify Set Statement Summary Status     ${STATEMENT SUMMARY PRE-AUDITED STATUS}

Validate Click Statement Summary Save Button After Setting Pre-Audited Status
    [Tags]    REGRESSION
    Verify Click Statement Summary Save Button

Validate Select Statement Validation Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Statement Validation Grid First Row Checkbox

Validate Click Statement Validation Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Statement Validation Grid First Row Inline Action Button

Validate Select Statement Validation Grid Create Inline Action Item
    [Tags]    REGRESSION
    Verify Select Statement Validation Grid Inline Action Item      ${CREATE INLINE ACTION ITEM}

Validate Select Disputes Tab
    [Tags]    REGRESSION
    Verify Select Disputes Tab

Validate Set Value In Disputes Grid Row
    [Tags]    REGRESSION
    Verify Set Value In Disputes Grid Row       ${DISPUTE GROUP COLUMN NAME}    ${DISPUTE GROUP GRID COLUMN VALUE}

Validate Click Disputes Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Disputes Grid Save Changes Button

Validate Set Statement Summary Status To Dispute Approval Required
    [Tags]    REGRESSION
    Verify Set Statement Summary Status     ${STATEMENT SUMMARY DISPUTE APPROVAL REQUIRED STATUS}

Validate Click Statement Summary Save Button After Setting Dispute Approval Required Status
    [Tags]    REGRESSION
    Verify Click Statement Summary Save Button

Validate Set Statement Summary Status To Disputed
    [Tags]    REGRESSION
    Verify Set Statement Summary Status     ${STATEMENT SUMMARY DISPUTED STATUS}

Validate Click Statement Summary Save Button After Setting Disputed Status
    [Tags]    REGRESSION
    Verify Click Statement Summary Save Button

Validate Select Disputes Tab For Add Resolution
    [Tags]    REGRESSION
    Verify Select Disputes Tab

Validate Click Disputes Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Disputes Grid First Row Inline Action Button

Validate Select Resolution Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${RESOLUTION INLINE ACTION ITEM}

Validate Click Add Resolution Button
    [Tags]    REGRESSION
    Verify Click Add Resolution Button

Validate Set New Resolution Action Type
    [Tags]    REGRESSION
    Verify Set New Resolution Action Type       ${ADD RESOLUTION WON ACTION TYPE}

Validate Set New Resolution Credit Amount
    [Tags]    REGRESSION
    Verify Set New Resolution Credit Amount     ${ADD RESOLUTION CREDIT AMOUNT}

Validate Set New Resolution Discrepancy Source
    [Tags]    REGRESSION
    Verify Set New Resolution Discrepancy Source        ${ADD RESOLUTION DISCREPANCY SOURCE}

Validate Set New Resolution Description
    [Tags]    REGRESSION
    Verify Set New Resolution Description       ${TEST DATA PREFIX}

Validate Click Add Resolution Save Button
    [Tags]    REGRESSION
    Verify Click Add Resolution Save Button

Validate Resolutions Grid Row Details
    [Tags]    REGRESSION
    Verify Resolutions Grid Row Details     ${ADD RESOLUTION WON ACTION TYPE}       ${ADD RESOLUTION DISCREPANCY SOURCE}        ${ADD RESOLUTION CREDIT AMOUNT}

Validate Edit Value In Resolution Grid Resolution Type Dropdown
    [Tags]    REGRESSION
    Verify Set Value In Resolution Grid Dropdown        ${RESOLUTION TYPE COLUMN NAME}      ${WON ACTION TYPE FOR EDIT}

Validate Edit Value In Resolution Grid Discrepancy Source Dropdown
    [Tags]    REGRESSION
    Verify Set Value In Resolution Grid Dropdown        ${DISCREPANCY SOURCE COLUMN NAME}       ${DISCREPANCY SOURCE FOR EDIT}

Validate Edit Value In Resolution Grid Resolution Amount Column
    [Tags]    REGRESSION
    Verify Set Value In Resolution Grid     ${RESOLUTION AMOUNT COLUMN NAME}        ${CREDIT AMOUNT FOR EDIT}

Validate Edit Value In Resolution Grid Description Column
    [Tags]    REGRESSION
    Verify Set Value In Resolution Grid     ${DESCRIPTION COLUMN NAME}      ${TEST DATA PREFIX}

Validate Click Resolutions Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Resolutions Grid Save Changes Button

Validate Edit Value In Resolution Grid Resolution Type Dropdown For Cancel Changes
    [Tags]    REGRESSION
    Verify Set Value In Resolution Grid Dropdown        ${RESOLUTION TYPE COLUMN NAME}      ${ADD RESOLUTION WON ACTION TYPE}

Validate Edit Value In Resolution Grid Discrepancy Source Dropdown For Cancel Changes
    [Tags]    REGRESSION
    Verify Set Value In Resolution Grid Dropdown        ${DISCREPANCY SOURCE COLUMN NAME}       ${ADD RESOLUTION DISCREPANCY SOURCE}

Validate Edit Value In Resolution Grid Resolution Amount Column For Cancel Changes
    [Tags]    REGRESSION
    Verify Set Value In Resolution Grid     ${RESOLUTION AMOUNT COLUMN NAME}        ${ADD RESOLUTION CREDIT AMOUNT}

Validate Edit Value In Resolution Grid Description Column For Cancel Changes
    [Tags]    REGRESSION
    Verify Set Value In Resolution Grid     ${DESCRIPTION COLUMN NAME}      ${TEST DATA PREFIX}

Validate Click Resolutions Grid Cancel Changes Button
    [Tags]    REGRESSION
    Verify Click Resolutions Grid Cancel Changes Button

Validate Click Resolutions Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Resolutions Grid First Row Inline Action Button

Validate Select Delete Inline Action Item
    [Tags]    REGRESSION
    Verify Select Delete Inline Action Item

Validate Click Add Resolution Button After Delete
    [Tags]    REGRESSION
    Verify Click Add Resolution Button

Validate Set New Resolution Action Type After Delete
    [Tags]    REGRESSION
    Verify Set New Resolution Action Type       ${ADD RESOLUTION WON ACTION TYPE}

Validate Set New Resolution Credit Amount After Delete
    [Tags]    REGRESSION
    Verify Set New Resolution Credit Amount     ${ADD RESOLUTION CREDIT AMOUNT}

Validate Set New Resolution Discrepancy Source After Delete
    [Tags]    REGRESSION
    Verify Set New Resolution Discrepancy Source        ${ADD RESOLUTION DISCREPANCY SOURCE}

Validate Set New Resolution Description After Delete
    [Tags]    REGRESSION
    Verify Set New Resolution Description       ${TEST DATA PREFIX}

Validate Click Add Resolution Save Button After Delete
    [Tags]    REGRESSION
    Verify Click Add Resolution Save Button

Validate Click Resolutions Grid First Row Inline Action Button For Finalize
    [Tags]    REGRESSION
    Verify Click Resolutions Grid First Row Inline Action Button

Validate Select Finalize Resolution Inline Item
    [Tags]    REGRESSION
    Verify Select Finalize Resolution Inline Item

Validate Close Dispute Line item Group Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${DISPUTE LINE ITEM TAB NAME PREFIX}

Validate Close Inbound Statement Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${INBOUND STATEMENTS TAB NAME}