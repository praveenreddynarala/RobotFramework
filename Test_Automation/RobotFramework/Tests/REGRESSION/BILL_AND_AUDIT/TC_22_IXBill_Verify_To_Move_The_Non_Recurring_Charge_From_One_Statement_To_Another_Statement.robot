*** Settings ***
Documentation     [TAENOSIS-899] Verify to move the non-recurring charge from one statement to another statement

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${FIRST ITEM NAME}          ${EMPTY}
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
    set suite variable      ${CREATED BILL ACCOUNT NAME}
    bill_and_audit_page_resource.Verify Set Bill Account         ${CREATED BILL ACCOUNT NAME}

Validate Set Statement Type
    [Tags]    REGRESSION
    Verify Set Statement Type       @{STATEMENT TYPE LIST}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search    9/1/2017

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statements Grid First Row Inline Action Button
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
    Verify Set Begin Date For Non Recurring Charge      6/1/2017

Validate Set Non Recurring Charge End Date
    [Tags]    REGRESSION
    Verify Set End Date For Non Recurring Charge        6/30/2017

Validate Set Non Recurring Charge
    [Tags]    REGRESSION
    Verify Set Non Recurring Charge     ${TEST DATA PREFIX}

Validate Set Charge Category
    [Tags]    REGRESSION
    Verify Set Charge Category          ${CHARGE CATEGORY}

Validate Set Currency
    [Tags]    REGRESSION
    ${CURRENCY NAME} =     Verify Get Currency Name
    bill_and_audit_page_resource.Verify Set Currency                 ${CURRENCY NAME}

Validate Set Charge Amount
    [Tags]    REGRESSION
    Verify Set Charge Amount            ${CHARGE AMOUNT}

Validate Set Tax Template
    [Tags]    REGRESSION
    ${CREATED TAX TEMPLATE NAME} =      Verify Get Created Tax Templates Name
    bill_and_audit_page_resource.Verify Set Tax Template             ${CREATED TAX TEMPLATE NAME}

Validate Click Non Recurring Charge Save Button Without Statement Dates
    [Tags]    REGRESSION
    Verify Click Non Recurring Charge Save Button Without Statement Dates

Validate Get Non Traffic Change Specific Column Kendo Dropdown First Item Name
    [Tags]    REGRESSION
    ${FIRST ITEM NAME} =        Verify Get Non Traffic Change Specific Column Kendo Dropdown First Item Name        Move To
    set suite variable          ${FIRST ITEM NAME}

Validate Set First Value In Move To Kendo Dropdown Column In Non Traffic Charge Grid
    [Tags]    REGRESSION
    Verify Set First Value In Move To Column In Non Traffic Charge Grid

Validate Click Non Traffic Charges Save Changes Button
    [Tags]    REGRESSION
    Verify Click Non Traffic Charges Save Changes Button

Validate Close Bill And Audit Window
    [Tags]    REGRESSION
    Verify Close Bill And Audit Window

Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Go To IXBill Screen With Specific Url
    [Tags]    REGRESSION
    Go To IXBill Screen With Specific Url

Validate Click Statements Submenu
    [Tags]    REGRESSION
    Verify Click Statements Submenu

Validate Set Ixtools Account Letter
    [Tags]    REGRESSION
    Verify Set Ixtools Account Letter       ${TEST DATA PREFIX}

Validate Set Billing Account Letter
    [Tags]    REGRESSION
    Verify Set Billing Account Letter       ${CREATED BILL ACCOUNT NAME}

Validate Click Ixbill Statements Go Button
    [Tags]    REGRESSION
    Verify Click Ixbill Statements Button

Validate Click First Company Plus Button
    [Tags]    REGRESSION
    Verify Click First Company Plus Button

Validate Click First Inner Carrier Plus Button
    [Tags]    REGRESSION
    Verify Click First Inner Carrier Plus Button

Validate The Specific Bill Account Is Available
    [Tags]    REGRESSION
    Verify The Specific Bill Account Is Available       ${CREATED BILL ACCOUNT NAME}

Validate Click Inner Bill Account Plus Button
    [Tags]    REGRESSION
    Verify Click Inner Bill Account Plus Button

Validate Click On Specific Statement Date
    [Tags]    REGRESSION
    Verify Click On Specific Statement Date     ${FIRST ITEM NAME}

Validate Compare Moved Non Traffic Charge
    [Tags]    REGRESSION
    Verify Compare Moved Non Traffic Charge         ${CHARGE AMOUNT}

Validate Click Exit Button
    [Tags]    REGRESSION
    ixbill_page_resource.Verify Click Exit Button