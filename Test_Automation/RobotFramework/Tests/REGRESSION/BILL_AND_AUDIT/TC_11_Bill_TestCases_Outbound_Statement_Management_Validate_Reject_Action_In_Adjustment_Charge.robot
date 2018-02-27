*** Settings ***
Documentation     A Test Suite With Set Of Tests For Outbound Statement Management To Validate Reject Action In Adjustment Charge

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
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

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search    6/1/2017

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statements Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Non-Traffic Charges Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item    ${STATEMENT DETAILS INLINE ITEM}

Validate Select Adjustments Tab
    [Tags]    REGRESSION
    Verify Select Adjustments Tab

Validate Click Adjustments Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Adjustments Grid First Row Inline Action Button

Validate Select Adjustments View Statement Inline Action Item
    [Tags]    REGRESSION
    Verify Select Adjustment Grid Inline Action Item       View Statement

Validate Click Add Financial Charges Button
    [Tags]    REGRESSION
    Verify Click Add Financial Charges Button

Validate Set Adjustment Charge Product
    [Tags]    REGRESSION
    Verify Set Adjustment Charge Product    ${TEST DATA PREFIX}

Validate Set Adjustment Charge Begin Date
    [Tags]    REGRESSION
    Verify Set Adjustment Charge Begin Date    6/1/2017

Validate Set Adjustment Charge End Date
    [Tags]    REGRESSION
    Verify Set Adjustment Charge End Date    ${ADJUSTMENT CHARGE END DATE}

Validate Set Adjustment Charge Currency
    [Tags]    REGRESSION
    ${CURRENCY NAME} =     Verify Get Currency Name
    Verify Set Adjustment Charge Currency    ${CURRENCY NAME}

Validate Set Adjustment Charge Amount
    [Tags]    REGRESSION
    Verify Set Adjustment Charge Amount    ${ADJUSTMENT CHARGE AMOUNT}

Validate Click Create Adjustemnt Charge Save Button
    [Tags]    REGRESSION
    Verify Click Create Adjustment Charge Save Button

Validate Click Adjustment Charges Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Adjustment Charges Grid First Row Inline Action Button

Validate Select Adjustment Charges Reject Inline Action Item
    [Tags]    REGRESSION
    Verify Select Adjustment Charges Reject Inline Action Item    ${REJECT INLINE ITEM}