*** Settings ***
Documentation     [TAENOSIS-480] EndToEnd: Validate recurring charge product creation, Assign and Populate on Bill account

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Bill And Audit' From Main Menu

Validate Navigate to Outbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Outbound Statements Tab

Validate Set Bill Account
    [Tags]    REGRESSION
    ${BILL ACCOUNT} =       carrier_page_resource.Verify Get Created Bill Account Name
    @{ACCOUNT} =        create list     aaaaa
    bill_and_audit_page_resource.Verify Set Bill Account         @{ACCOUNT}

Validate Click Outbound Statement Search button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statements Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item         ${NON TRAFFIC CHARGES INLINE ITEM}

Validate Assigned Non Recurring Charges is Populated in Grid
    [Tags]    REGRESSION
    ${CHARGE NAME} =        Verify Get Created Charge Name
    Verify Assigned Non Recurring Charges is Populated in Grid      Test
