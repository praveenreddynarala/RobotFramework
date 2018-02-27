*** Settings ***
Documentation     [TAENOSIS-938] Verify The Amount on The Statement Page is Matched Amount on Outbound Statement Worklist Page

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/bill_and_audit_page_test_data_source.robot


Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${EXPECTED AMOUNT}        ${EMPTY}
${ACTUAL AMOUNT}        ${EMPTY}
${CREATED BILL ACCOUNT NAME}        ${EMPTY}

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
    set suite variable          ${CREATED BILL ACCOUNT NAME}
    bill_and_audit_page_resource.Verify Set Bill Account         ${CREATED BILL ACCOUNT NAME}

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statement Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Non-Traffic Charges Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item        ${NON TRAFFIC CHARGES INLINE ITEM}

Validate Click Add Non Recurring Charge Button
    [Tags]    REGRESSION
    Verify Click Add Non Recurring Charge Button

Validate Set Accounting Code
    [Tags]    REGRESSION
    ${ACCOUNTING CODE} =        Verify Get Created Accounting Code
    bill_and_audit_page_resource.Verify Set Accounting Code          ${ACCOUNTING CODE}

Validate Set Non Recurring Charge Begin Date
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Set Non Recurring Charge Begin Date          6/1/2017

Validate Set Non Recurring Charge End Date
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Set Non Recurring Charge End Date               12/31/2017

Validate Set Non Recurring Charge Name
    [Tags]    REGRESSION
    Verify Set Non Recurring Charge         ${TEST DATA PREFIX}

Validate Set Non Recurring Charge Category
    [Tags]    REGRESSION
    ${CHARGE CATEGORY} =        Verify Get Charge Categories Name
    Verify Set Charge Category          ${CHARGE CATEGORY}

Validate Set Currency
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Set Currency         ${CURRENCY}

Validate Set Charge Amount
    [Tags]    REGRESSION
    Verify Set Charge Amount    80

Validate Set Tax Template
    [Tags]    REGRESSION
    ${TAX TEMPLATE} =       Verify Get Created Tax Templates Name
    Verify Set Tax Template         ${TAX TEMPLATE}

Validate Click Non Recurring Charge Save Button
    [Tags]    REGRESSION
    Verify Click Non Recurring Charge Save Button

Validate Go Back to Outbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Outbound Statements Tab

Validate Click Outbound Statements Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Get Outbound Statement Grid First Row Amount Column Value
    [Tags]    REGRESSION
    ${EXPECTED AMOUNT} =        Verify Get Outbound Statement Grid First Row Amount Column Value
    set suite variable      ${EXPECTED AMOUNT}

Validate Close Bill And Audit Window
    [Tags]    REGRESSION
    Verify Close Bill And Audit Window

Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Go To IXBill Screen With Specific Url
    [Tags]    REGRESSION
    Go To IXBill Screen With Specific Url

Validate Click Outbound Statements Submenu
    [Tags]    REGRESSION
    Verify Click Outbound Statements Submenu

Validate Set Outbound Statements Worklist Begin Date
    [Tags]    REGRESSION
    Verify Set Outbound Statements Worklist Begin Date          6/1/2017

Validate Set Outbound Statements Worklist End Date
    [Tags]    REGRESSION
    Verify Set Outbound Statements Worklist End Date            12/31/2017

Validate Select Billing Account in Outbound Statements Worklist Screen
    [Tags]    REGRESSION
    Verify Select Billing Account in Outbound Statements Worklist Screen        ${CREATED BILL ACCOUNT NAME}

Validate Click Outbound Statements Worklist Go Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Worklist Go Button

Validate Get Outbound Statements Worklist Grid First Row Amount Value
    [Tags]    REGRESSION
    ${ACTUAL AMOUNT} =      Verify Get Outbound Statements Worklist Grid First Row Amount Value
    set suite variable          ${ACTUAL AMOUNT}

Validate Expected And Actual Result
    [Tags]    REGRESSION
    Verify Expected And Actual Result       ${EXPECTED AMOUNT}          ${ACTUAL AMOUNT}

Validate Close Ixbill Window
    [Tags]    REGRESSION
    Verify Close Ixbill Window