*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate If User Is Allowed To Create Non Recurring Charges For Status After Non Traffic Item

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/bill_and_audit_page_test_data_source.robot

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

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search      @{NON TRAFFIC ITEMS INCLUDED STATUS}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search        ${BEGIN DATE FOR STATEMENT SEARCH}

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statements Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Non-Traffic Charges Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${NON TRAFFIC CHARGES INLINE ITEM}

Validate Create Non Recurring Charges Button Is Not Present
    [Tags]    REGRESSION
    Verify Create Non Recurring Charges Button Is Not Present