*** Settings ***
Documentation     [TAENOSIS-924] A Test Suite With Set Of Tests For Outbound Statement Management To Verify User Is Not Able To Delete The Trangition Type Statement Type Satelment And Adjustment Other Then The Payment

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
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
    Verify Set Begin Date For Statement Search        6/1/2017

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statement Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Transactions Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item        ${TRANSACTIONS INLINE ITEM}

Validate Is Delete Checkbox Enabled In Transactions Grid
    [Tags]    REGRESSION
    Verify Is Delete Checkbox Enabled In Transactions Grid