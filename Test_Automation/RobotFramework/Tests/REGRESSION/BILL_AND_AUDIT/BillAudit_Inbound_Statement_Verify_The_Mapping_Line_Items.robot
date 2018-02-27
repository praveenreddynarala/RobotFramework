*** Settings ***
Documentation     A Test Suite With Set Of Tests For Inbound Statement To Verify The Mapping Line Items

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

Validate Set Audit Account For Search
    [Tags]    REGRESSION
    Verify Set Audit Account For Search         @{MAPPING AUDIT ACCOUNT LIST}

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search      @{MAPPING STATEMENT STATUS LIST}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Inbound Statement Begin Date     ${MAPPING BEGIN DATE}

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Filter Inbound Statements Grid
   [Tags]    REGRESSION
    Verify Filter Inbound Statements Grid       ${STATEMENT NUMBER COLUMN NAME}     ${MAPPING STATEMENT NUMBER}

Validate Click Inbound Statement Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid Inline Action Button With Identifier        ${MAPPING STATEMENT NUMBER}

Validate Select Map Line Items Inline Action
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${MAP LINE ITEMS INLINE ITEM}

Validate Get Total Mapped Line Items Count
    [Tags]    REGRESSION
    Verify Get Total Mapped Line Items Count

Validate Map Unmapped Received Line Items
    [Tags]    REGRESSION
    Verify Map Unmapped Received Line Items

Validate Map Unmapped Internal Line Items
    [Tags]    REGRESSION
    Verify Map Unmapped Internal Line Items

Validate Is All Line Items Mapped
    [Tags]    REGRESSION
    Verify Is All Line Items Mapped

Validate Click Line Item Mapping Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Line Item Mapping Grid Save Changes Button

Validate Click Show Summary Link
    [Tags]    REGRESSION
    Verify Click Show Summary Link

Validate Set Statement Summary Status
    [Tags]    REGRESSION
    Verify Set Statement Summary Status     ${MAPPED STATUS}

Validate Click Statement Summary Save Button
    [Tags]    REGRESSION
    Verify Click Statement Summary Save Button

Validate Is Mapped Statements Validated
    [Tags]    REGRESSION
    Verify Is Mapped Statements Validated

Validate Set Statement Summary Status After Mapping
    [Tags]    REGRESSION
    Verify Set Statement Summary Status     ${ENTERED STATUS}

Validate Click Statement Summary Save Button After Mapping
    [Tags]    REGRESSION
    Verify Click Statement Summary Save Button

Validate Select Line Item Mapping Tab
    [Tags]    REGRESSION
    Verify Select Line Item Mapping Tab

Validate Click Remove All Mappings Button
    [Tags]    REGRESSION
    Verify Click Remove All Mappings Button

Validate Is All Line Items Unmapped
    [Tags]    REGRESSION
    Verify Is All Line Items Unmapped
