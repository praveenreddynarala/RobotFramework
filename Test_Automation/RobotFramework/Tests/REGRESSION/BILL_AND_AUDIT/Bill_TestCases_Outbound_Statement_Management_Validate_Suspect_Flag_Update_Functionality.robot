*** Settings ***
Documentation     A Test Suite With Set Of Tests For Outbound Statement To Validate Suspect Flag Update Functionality

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

Validate Set Suspect Status For Search
    [Tags]    REGRESSION
    Verify Set Suspect Status       @{STATEMENT SUSPECT STATUS}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search        ${BEGIN DATE FOR SUSPECT STATUS}

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statements Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Non-Traffic Charges Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${SUSPECT FLAGS INLINE ACTION ITEM}

Validate Select Suspect Flag Ignored Checkbox
    [Tags]    REGRESSION
    Verify Select Deselect Suspect Flag Ignored Checkbox

Validate Click Suspect Flags Grid Save Changes Button After Select
    [Tags]    REGRESSION
    Verify Click Suspect Flags Grid Save Changes Button

Validate Deselect Suspect Flag Ignored Checkbox
    [Tags]    REGRESSION
    Verify Select Deselect Suspect Flag Ignored Checkbox

Validate Click Suspect Flags Grid Save Changes Button After Deselect
    [Tags]    REGRESSION
    Verify Click Suspect Flags Grid Save Changes Button