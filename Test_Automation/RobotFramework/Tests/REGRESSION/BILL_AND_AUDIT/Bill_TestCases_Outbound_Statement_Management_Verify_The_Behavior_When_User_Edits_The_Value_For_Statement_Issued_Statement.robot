*** Settings ***
Documentation     A Test Suite With Set Of Tests For Outbound Statement Management To Verify The Behavior When User Edits The Value For Statement Issued Statement

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

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search      @{STATEMENT ISSUED STATEMENT STATUS}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search        ${BEGIN DATE FOR EDIT STATEMENT FIELDS}

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statements Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Non-Traffic Charges Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${STATEMENT FIELDS INLINE ITEM}

Validate Click Statement Fields Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Click Statement Fields Grid First Row Checkbox

Validate Click Statement Fields Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Statement Fields Bulk Edit Button

Validate Set Statement Default Value
    [Tags]    REGRESSION
    Verify Set Statement Default Value      ${STATEMENT FIELDS DEFAULT VALUE}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Click Statement Fields Save Changes Button
    [Tags]    REGRESSION
    Verify Click Statement Fields Save Changes Button

Validate Close Outbound Statement Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${OUTBOUND STATEMENT TAB NAME PREFIX}