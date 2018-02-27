*** Settings ***
Documentation     A Test Suite With Set Of Tests For Inbound Statement To Validate The Dispute Upload And Delete Document Functionality

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
    Verify Set Statement Status For Search    @{DISPUTE DOCUMENT UPLOAD STATUS LIST}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search      ${DISPUTE DOCUMENT UPLOAD BEGIN DATE}

Validate Set End Date For Search
    [Tags]    REGRESSION
    Verify Set End Date For Statement Search        ${DISPUTE DOCUMENT UPLOAD END DATE}

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Click Inbound Statement Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${STATEMENT DETAILS INLINE ITEM}

Validate Click Documents Tab
    [Tags]    REGRESSION
    Verify Click Documents Tab

Valdiate Click Upload Document Button
    [Tags]    REGRESSION
    Verify Click Upload Document Button

Validate Set Document Name
    [Tags]    REGRESSION
    Verify Set Document Name        ${TEST DATA PREFIX}

Validate Set Document Keyword
    [Tags]    REGRESSION
    Verify Set Document Keyword     ${DISPUTE NEW DOCUMENT KEYWORD}

Validate Set Document Reference Number
    [Tags]    REGRESSION
    Verify Set Document Reference Number        ${DISPUTE NEW DOCUMENT REFERENCE NUMBER}

Validate Set Document Date
    [Tags]    REGRESSION
    Verify Set Document Date        ${DISPUTE NEW DOCUMENT DATE}

Validate Set Document Order
    [Tags]    REGRESSION
    Verify Set Document Order       ${DISPUTE NEW DOCUMENT ORDER}

Validate Click Browse Button
    [Tags]    REGRESSION
    Verify Click Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    Verify Select File To Be Uploaded       ${DISPUTE FILE PATH FOR UPLOAD}

Validate Click Upload Button
    [Tags]    REGRESSION
    Verify Click Upload Button

Validate Set Document Name For Search
    [Tags]    REGRESSION
    Verify Set Document Name For Search

Validate Click Documents Search Button
    [Tags]    REGRESSION
    Verify Click Documents Search Button

Validate Get Documents Grid Row Details
    [Tags]    REGRESSION
    Verify Get Documents Grid Row Details

Validate Document Name After Create
    [Tags]    REGRESSION
    Verify Document Name After Create

Validate Keywords After Create
    [Tags]    REGRESSION
    Verify Keywords After Create        ${DISPUTE NEW DOCUMENT KEYWORD}

Validate Order After Create
    [Tags]    REGRESSION
    Verify Order After Create       ${DISPUTE NEW DOCUMENT ORDER}

Validate Reference Number After Create
    [Tags]    REGRESSION
    Verify Reference Number After Create        ${DISPUTE NEW DOCUMENT REFERENCE NUMBER}

Validate Edit Value In Documents Grid Keywords Column
    [Tags]    REGRESSION
    Verify Set Value In Documents Grid      ${KEYWORDS COLUMN NAME}     ${DISPUTE DOCUMENT KEYWORD FOR EDIT}

Validate Edit Value In Documents Grid Order Column
    [Tags]    REGRESSION
    Verify Set Value In Documents Grid      ${ORDER COLUMN NAME}        ${DISPUTE DOCUMENT ORDER FOR EDIT}

Validate Edit Value In Documents Grid Reference Number Column
    [Tags]    REGRESSION
    Verify Set Value In Documents Grid      ${REFERENCE NUMBER COLUMN NAME}     ${DISPUTE DOCUMENT REFRENCE NUMBER FOR EDIT}

Validate Click Documents Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Documents Grid Save Changes Button

Validate Edit Value In Documents Grid Order Column For Cancel Edit
    [Tags]    REGRESSION
    Verify Set Value In Documents Grid      ${ORDER COLUMN NAME}        ${DISPUTE DOCUMENT ORDER FOR CANCEL EDIT}

Validate Click Documents Grid Cancel Changes Button
    [Tags]    REGRESSION
    Verify Click Documents Grid Cancel Changes Button

Validate Select Documents Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Documents Grid Row Checkbox

Validate Click Documents Delete Button
    [Tags]    REGRESSION
    Verify Click Documents Delete Button

Valdiate Click Upload Document Button After Delete
    [Tags]    REGRESSION
    Verify Click Upload Document Button

Validate Set Document Name After Delete
    [Tags]    REGRESSION
    Verify Set Document Name        ${TEST DATA PREFIX}

Validate Set Document Keyword After Delete
    [Tags]    REGRESSION
    Verify Set Document Keyword     ${DISPUTE NEW DOCUMENT KEYWORD}

Validate Set Document Reference Number After Delete
    [Tags]    REGRESSION
    Verify Set Document Reference Number        ${DISPUTE NEW DOCUMENT REFERENCE NUMBER}

Validate Set Document Date After Delete
    [Tags]    REGRESSION
    Verify Set Document Date        ${DISPUTE NEW DOCUMENT DATE}

Validate Set Document Order After Delete
    [Tags]    REGRESSION
    Verify Set Document Order       ${DISPUTE NEW DOCUMENT ORDER}

Validate Click Browse Button After Delete
    [Tags]    REGRESSION
    Verify Click Browse Button

Validate Select The File To Be Uploaded After Delete
    [Tags]    REGRESSION
    Verify Select File To Be Uploaded       ${DISPUTE FILE PATH FOR UPLOAD}

Validate Click Upload Button After Delete
    [Tags]    REGRESSION
    Verify Click Upload Button

Validate Set Document Name For Search After Delete
    [Tags]    REGRESSION
    Verify Set Document Name For Search

Validate Click Documents Search Button After Delete
    [Tags]    REGRESSION
    Verify Click Documents Search Button

Validate Click Documents Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Documents Grid Inline Action Button

Validate Select Documents Grid Delete Inline Action
    [Tags]    REGRESSION
    Verify Select Documents Grid Delete Inline Action

Validate New Document Is Deleted Successfully
    [Tags]    REGRESSION
    Verify New Document Is Deleted Successfully

Validate Close Inbound Statement Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${INBOUND STATEMENTS TAB NAME}