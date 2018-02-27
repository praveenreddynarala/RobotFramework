*** Settings ***
Documentation     [TAENOSIS-1016] Verify The Missing Statement Header Fields in Statement Detail Page

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Navigate to Inbound Statement Tab
    [Tags]    REGRESSION
    Verify Select Inbound Statement Tab

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search      ${PENDING STATUS}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Search        1/1/2000

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Click Inbound Statement Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item        ${STATEMENT DETAILS INLINE ITEM}

Validate Set Inbound Statement Details Vat Code
    [Tags]    REGRESSION
    Verify Set Inbound Statement Details Vat Code       -5

Validate Set Base Currency
    [Tags]    REGRESSION
    #${CURRENCY} =       Verify Get Currency Name
#    Verify Set Base Currency      ${CURRENCY}
    Verify Set Base Currency      USD

Validate Set Exchange Rate
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Set Exchange Rate        -1.00

Validate Set Exchange Rate Date
    [Tags]    REGRESSION
    Verify Set Exchange Rate Date       1/1/2018

Validate Click Statement Summary Save Button
    [Tags]    REGRESSION
    Verify Click Statement Summary Save Button