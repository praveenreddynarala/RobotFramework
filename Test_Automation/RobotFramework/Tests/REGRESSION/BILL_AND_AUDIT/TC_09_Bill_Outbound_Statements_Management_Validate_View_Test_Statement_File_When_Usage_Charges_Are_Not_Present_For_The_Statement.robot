*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate View Test Statement File When Usage Charges Are Not Present For The Statement

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

Validate Set Statement Type For Search
    [Tags]    REGRESSION
    Verify Set Statement Type       @{REGULAR STATEMENT TYPE}

Validate Set Bill Account For Search
    [Tags]    REGRESSION
    ${CREATED BILL ACCOUNT NAME} =       Verify Get Created Bill Account Name
    Verify Set Bill Account     ${CREATED BILL ACCOUNT NAME}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search      9/1/2017

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statements Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Non-Traffic Charges Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item        ${STATEMENT DETAILS INLINE ITEM}

Validate Usage Charges Grid Has No Records Status
    [Tags]    REGRESSION
    Verify Usage Charges Grid Has No Records Status

Validate Click View Test Statement File Button
    [Tags]    REGRESSION
    Verify Click View Test Statement File Button

Validate Test Statements Error Message Given Status
    [Tags]    REGRESSION
    Verify Test Statements Error Message Given Status