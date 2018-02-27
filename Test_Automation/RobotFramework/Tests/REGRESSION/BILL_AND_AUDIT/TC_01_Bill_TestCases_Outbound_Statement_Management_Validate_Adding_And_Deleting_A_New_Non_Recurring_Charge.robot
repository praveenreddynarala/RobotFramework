*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Adding And Deleting A New Non Recurring Charge

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNTING CODE}                  ${EMPTY}
${CREATED TAX TEMPLATE NAME}        ${EMPTY}
${CURRENCY NAME}                    ${EMPTY}

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Outbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Outbound Statements Tab

Validate Set Statement Status
    [Tags]    REGRESSION
    Verify Set Statement Status For Search          @{STATEMENT STATUS FOR NON RECURRING CHARGE}

Validate Set Bill Account For Search
    [Tags]    REGRESSION
    ${CREATED BILL ACCOUNT NAME} =       Verify Get Created Bill Account Name
    Verify Set Bill Account     ${CREATED BILL ACCOUNT NAME}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search      6/1/2017

Validate Click Outbound Statement Search button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statements Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item        ${NON TRAFFIC CHARGES INLINE ITEM}

Validate Click Add Non Recurring Charge Button
    [Tags]    REGRESSION
    Verify Click Add Non Recurring Charge Button

Validate Set Accounting Code
    [Tags]    REGRESSION
    ${ACCOUNTING CODE} =        Verify Get Created Accounting Code
    set suite variable         ${ACCOUNTING CODE}
    bill_and_audit_page_resource.Verify Set Accounting Code          ${ACCOUNTING CODE}

Validate Set Non Recurring Charge Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date For Non Recurring Charge      6/1/2017

Validate Set Non Recurring Charge End Date
    [Tags]    REGRESSION
    Verify Set End Date For Non Recurring Charge        ${END DATE FOR NR CHARGE}

Validate Set Non Recurring Charge
    [Tags]    REGRESSION
    Verify Set Non Recurring Charge     ${TEST DATA PREFIX}

Validate Set Charge Category
    [Tags]    REGRESSION
    Verify Set Charge Category          ${NON RECURRING CHARGE CATEGORY}

Validate Set Currency
    [Tags]    REGRESSION
    ${CURRENCY NAME} =     Verify Get Currency Name
    set suite variable          ${CURRENCY NAME}
    bill_and_audit_page_resource.Verify Set Currency                 ${CURRENCY NAME}

Validate Set Charge Amount
    [Tags]    REGRESSION
    Verify Set Charge Amount            ${NON RECURRING CHARGE AMOUNT}

Validate Set Tax Template
    [Tags]    REGRESSION
    ${CREATED TAX TEMPLATE NAME} =      Verify Get Created Tax Templates Name
    set suite variable          ${CREATED TAX TEMPLATE NAME}
    bill_and_audit_page_resource.Verify Set Tax Template             ${CREATED TAX TEMPLATE NAME}

Validate Click Non Recurring Charge Save Button Without Statement Dates
    [Tags]    REGRESSION
    Verify Click Non Recurring Charge Save Button Without Statement Dates

Validate Filter Non Traffic Charges Grid
    [Tags]    REGRESSION
    Verify Filter Non Traffic Charges Grid      ${CHARGE NAME COLUMN NAME}

Validate Get Non Traffic Charges Grid Row Details
    [Tags]    REGRESSION
    Verify Get Non Traffic Charges Grid Row Details

Validate Non Traffic Charges Grid Row Details
    [Tags]    REGRESSION
    Verify Non Traffic Charges Grid Row Details     ${ACCOUNTING CODE}      ${NON RECURRING CHARGE CATEGORY}      ${CURRENCY NAME}     ${NON RECURRING CHARGE AMOUNT}    ${CREATED TAX TEMPLATE NAME}

Validate Set Amount In Non Traffic Charges Grid Row Column
    [Tags]    REGRESSION
    Verify Set Value In Non Traffic Charges Grid Column     ${AMOUNT COLUMN NAME}       ${NON RECURRING CHARGE EDIT AMOUNT}

Validate Click Non Traffic Charges Save Changes Button
    [Tags]    REGRESSION
    Verify Click Non Traffic Charges Save Changes Button

Validate Select Non Traffic Charges Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Non Traffic Charges Grid Row Checkbox

Validate Click Non Traffic Charges Delete Button
    [Tags]    REGRESSION
    Verify Click Non Traffic Charges Delete Button

Validate Close Outbound Statement Tab
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Close Current Tab       ${OUTBOUND STATEMENT TAB NAME PREFIX}