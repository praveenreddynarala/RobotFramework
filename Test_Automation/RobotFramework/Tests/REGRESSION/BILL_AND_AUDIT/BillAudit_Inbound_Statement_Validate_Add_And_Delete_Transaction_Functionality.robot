*** Settings ***
Documentation     A Test Suite With Set Of Tests For Inbound Statement To Validate Add And Delete Transaction Functionality

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

Validate Set Audit Account For Search
    [Tags]    REGRESSION
    Verify Set Audit Account For Search         @{CREATE TRANSACTION AUDIT ACCOUNT LIST}

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search      @{CREATE TRANSACTION STATEMENT STATUS LIST}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Inbound Statement Begin Date     ${CREATE TRANSACTION BEGIN DATE}

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Click Inbound Statement Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${STATEMENT DETAILS INLINE ITEM}

Validate Click Hide Summary Link
    [Tags]    REGRESSION
    Verify Click Hide Summary Link

Validate Select Transactions Tab
    [Tags]    REGRESSION
    Verify Select Transactions Tab

Validate Click Add New Record Button
    [Tags]    REGRESSION
    Verify Click Add New Record Button

Validate Set Transactions Grid First Row Transaction Code
    [Tags]    REGRESSION
    Verify Set Transactions Grid First Row Transaction Code     ${TEST DATA PREFIX}

Validate Set Transactions Grid Dropdown Credit Debit Value
    [Tags]    REGRESSION
    Verify Set Transactions Grid Dropdown Value     ${CREDIT DEBIT COLUMN NAME}     ${TRANSACTION CREDIT DEBIT}

Validate Set Transactions Grid Dropdown Currency Value
    [Tags]    REGRESSION
    Verify Set Transactions Grid Dropdown Value     ${CURRENCY COLUMN NAME}     ${TRANSACTION CURRENCY}

Validate Set Transactions Grid First Row Date
    [Tags]    REGRESSION
    Verify Set Value In Transactions Grid First Row Column      ${DATE COLUMN NAME}     ${TRANSACTION DATE}

Validate Set Transactions Grid First Row Transaction Details
    [Tags]    REGRESSION
    Verify Set Value In Transactions Grid First Row Column      ${TRANSACTION DETAILS COLUMN NAME}     ${TRANSACTION DETAILS}

Validate Set Transactions Grid First Row Amount
    [Tags]    REGRESSION
    Verify Set Value In Transactions Grid First Row Column      ${AMOUNT COLUMN NAME}     ${TRANSACTION AMOUNT}

Validate Select Transactions Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Transactions Grid Row Checkbox

Validate Click Transactions Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Transactions Grid Save Changes Button

Validate Filter Transactions Grid
    [Tags]    REGRESSION
    Verify Filter Transactions Grid

Validate Get Transactions Grid Row Details
    [Tags]    REGRESSION
    Verify Get Transactions Grid Row Details

Validate Transactions Grid Row Data
    [Tags]    REGRESSION
    Verify Transactions Grid Row Data       ${TRANSACTION CREDIT DEBIT}     ${TRANSACTION DETAILS}     ${TRANSACTION CURRENCY}     ${TRANSACTION AMOUNT}

Validate Select Transactions Grid Row Checkbox After Saving
    [Tags]    REGRESSION
    Verify Select Transactions Grid Row Checkbox

Validate Click Transactions Grid Delete Button
    [Tags]    REGRESSION
    Verify Click Transactions Grid Delete Button

Validate Close Current Tab
    [Tags]    REGRESSION
    Verify Close Current Tab    ${INBOUND STATEMENTS TAB NAME}
