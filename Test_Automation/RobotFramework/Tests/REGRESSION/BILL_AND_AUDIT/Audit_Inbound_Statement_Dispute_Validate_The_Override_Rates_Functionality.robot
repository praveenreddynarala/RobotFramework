*** Settings ***
Documentation     A Test Suite With Set Of Tests For Inbound Statement Dispute To Validate The Override Rates Functionality

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
    Verify Set Statement Status For Search    @{OVERRIDE RATES STATEMENT STATUS LIST}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search      ${OVERRIDE RATES BEGIN DATE}

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Filter Inbound Statements Grid
    [Tags]    REGRESSION
    Verify Filter Inbound Statements Grid       ${STATEMENT NUMBER COLUMN NAME}     ${OVERRIDE RATES STATEMENT NUMBER}

Validate Click Inbound Statement Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${STATEMENT DETAILS INLINE ITEM}

Validate Click Hide Summary Link
    [Tags]    REGRESSION
    Verify Click Hide Summary Link

Validate Select Disputes Tab
    [Tags]    REGRESSION
    Verify Select Disputes Tab

Validate Click Line Item Disputes Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Line Item Disputes Grid First Row Inline Action Button

Validate Select Summary Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${SUMMARY INLINE ITEM}

Validate Set Rating Quantity In Internal Statement Grid
    [Tags]    REGRESSION
    Verify Set Value In Internal Statement Grid         ${RATING QUANTITY COLUMN NAME}

Validate Set Rate In Internal Statement Grid
    [Tags]    REGRESSION
    Verify Set Value In Internal Statement Grid         ${RATE COLUMN NAME}

Validate Click Internal Statement Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Internal Statement Grid Save Changes Button

Validate Close Dispute Line Item Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${DISPUTE LINE ITEM TAB NAME}

Validate Select Statement Validation Tab
    [Tags]    REGRESSION
    Verify Select Statement Validation Tab

Validate Close Inbound Statement Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${INBOUND STATEMENTS TAB NAME}