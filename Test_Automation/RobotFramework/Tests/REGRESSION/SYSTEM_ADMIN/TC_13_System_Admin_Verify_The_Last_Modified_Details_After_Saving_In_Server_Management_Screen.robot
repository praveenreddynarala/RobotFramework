*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify The Last Modified Details After Saving In Server Management Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SQL INSTANCE}         ${EMPTY}
${SQL INSTANCE ACTUAL VALUE}        ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Server Management Link
    [Tags]    REGRESSION
    Verify Click Server Management Link

Validate Click Server Management Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Server Management Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item With Module Name        ${SERVER SETTING INLINE ITEM}

Validate Get SQL Instance Actual Value From Server Setting Management Page
    [Tags]    REGRESSION
    ${SQL INSTANCE ACTUAL VALUE} =   Verify Get Actual Value From Server Setting Management Page     SQL Instance
    log     ${SQL INSTANCE ACTUAL VALUE}
    set suite variable          ${SQL INSTANCE ACTUAL VALUE}

Validate Set Sql Instance
    [Tags]    REGRESSION
    Verify Set Sql Instance     ${TEST DATA PREFIX}

Validate Click Server Details Save Button
    [Tags]    REGRESSION
    Verify Click Server Details Save Button

Validate Close Server Settings Tab
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab     ${SERVER SETTINGS TAB NAME}

Validate Get Sql Instance
    [Tags]    REGRESSION
    ${SQL INSTANCE} =       Verify Get Sql Instance
    set suite variable      ${SQL INSTANCE}

Validate Filter Server Management Grid Sql Instance Column
    [Tags]    REGRESSION
    Verify Filter Server Management Grid With Provided Value To Filter      ${SQL INSTANCE COLUMN NAME}     ${SQL INSTANCE}

Validate Verify Compare Server Management Grid Sql Instance Column First Row Value
    [Tags]    REGRESSION
    Verify Compare Server Management Grid First Row Value       ${SQL INSTANCE COLUMN NAME}     ${SQL INSTANCE}

Validate Click Server Management Grid First Row Inline Action Button To Set Previous Value
    [Tags]    REGRESSION
    Verify Click Server Management Grid First Row Inline Action Button

Validate Select Inline Action Item To Set Previous Value
    [Tags]    REGRESSION
    Verify Select Inline Action Item With Module Name        ${SERVER SETTING INLINE ITEM}

Validate Set Sql Instance To Set Previous Value
    [Tags]    REGRESSION
    Verify Set Sql Instance     ${SQL INSTANCE ACTUAL VALUE}        ${True}

Validate Click Server Details Save Button To Set Previous Value
    [Tags]    REGRESSION
    Verify Click Server Details Save Button