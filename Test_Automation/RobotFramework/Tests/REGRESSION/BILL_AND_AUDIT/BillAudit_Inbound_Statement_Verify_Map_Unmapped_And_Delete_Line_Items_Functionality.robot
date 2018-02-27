*** Settings ***
Documentation     A Test Suite With Set Of Tests For Inbound Statement To Verify Map Unmapped And Delete Line Items Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]     REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Inbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Inbound Statement Tab

Validate Set Audit Account For Search
    [Tags]    REGRESSION
    Verify Set Audit Account For Search         @{MAP LINE ITEM AUDIT ACCOUNT LIST}

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search      @{MAP LINE ITEM STATEMENT STATUS LIST}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search      ${MAP LINE ITEM BEGIN DATE FOR SEARCH}

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Filter Inbound Statements Grid
   [Tags]    REGRESSION
    Verify Filter Inbound Statements Grid       ${STATEMENT NUMBER COLUMN NAME}     ${MAP LINE ITEM STATEMENT NUMBER}

Validate Click Inbound Statement Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid Inline Action Button With Identifier        ${MAP LINE ITEM STATEMENT NUMBER}

Validate Select Map Line Items Inline Action
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${MAP LINE ITEMS INLINE ITEM}

Validate Click Map Unmapped Line Items Button
    [Tags]    REGRESSION
    Verify Click Map Unmapped Line Items Button

Validate Click Remove All Mappings Button
    [Tags]    REGRESSION
    Verify Click Remove All Mappings Button

Validate Is All Line Items Unmaapped
    [Tags]    REGRESSION
    Verify Is All Line Items Unmapped

Validate Map Unmapped Received Line Items
    [Tags]    REGRESSION
    Verify Map Unmapped Received Line Items

Validate Map Unmapped Internal Line Items
    [Tags]    REGRESSION
    Verify Map Unmapped Internal Line Items

Validate Click Map Line Items Delete Button
    [Tags]    REGRESSION
    Verify Click Map Line Items Delete Button

Validate Is All Line Items Unmaapped After Deleting
    [Tags]    REGRESSION
    Verify Is All Line Items Unmapped

Validate Map Unmapped Received Line Items After Deleting
    [Tags]    REGRESSION
    Verify Map Unmapped Received Line Items

Validate Map Unmapped Internal Line Items After Deleting
    [Tags]    REGRESSION
    Verify Map Unmapped Internal Line Items

Validate Click Line Item Mapping Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Line Item Mapping Grid Save Changes Button