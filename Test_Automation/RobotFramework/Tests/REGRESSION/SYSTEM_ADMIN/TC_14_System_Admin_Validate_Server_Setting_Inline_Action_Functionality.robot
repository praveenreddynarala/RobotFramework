*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate Server Setting Inline Action Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${PHYSICAL SERVER ACTUAL VALUE}     ${EMPTY}
${SQL INSTANCE ACTUAL VALUE}        ${EMPTY}
${IP ADDRESS ACTUAL VALUE}          ${EMPTY}
${AGENT USER NAME ACTUAL VALUE}     ${EMPTY}
${CLUSTER NOTE ACTUAL VALUE}        ${EMPTY}
${SERVER STATUS ACTUAL VALUE}       ${EMPTY}
${SERVER IN USE ACTUAL VALUE}       ${EMPTY}
${AVAILABLE DATABASE FIRST VALUE}   ${EMPTY}

*** Variables ***
${SQL INSTANCE}         ${EMPTY}

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

Validate Get Physical Server Actual Value From Server Setting Management Page
    [Tags]    REGRESSION
    ${PHYSICAL SERVER ACTUAL VALUE} =   Verify Get Actual Value From Server Setting Management Page     Physical Server
    log     ${PHYSICAL SERVER ACTUAL VALUE}
    set suite variable      ${PHYSICAL SERVER ACTUAL VALUE}

Validate Get SQL Instance Actual Value From Server Setting Management Page
    [Tags]    REGRESSION
    ${SQL INSTANCE ACTUAL VALUE} =   Verify Get Actual Value From Server Setting Management Page     SQL Instance
    log     ${SQL INSTANCE ACTUAL VALUE}
    set suite variable          ${SQL INSTANCE ACTUAL VALUE}

Validate Get Agent User Name Actual Value From Server Setting Management Page
    [Tags]    REGRESSION
    ${AGENT USER NAME ACTUAL VALUE} =   Verify Get Actual Value From Server Setting Management Page     Agent User Name
    log     ${AGENT USER NAME ACTUAL VALUE}
    set suite variable          ${AGENT USER NAME ACTUAL VALUE}

Validate Get IP Address Actual Value From Server Setting Management Page
    [Tags]    REGRESSION
    ${IP ADDRESS ACTUAL VALUE} =   Verify Get Actual Value From Server Setting Management Page     IP Address
    log     ${IP ADDRESS ACTUAL VALUE}
    set suite variable          ${IP ADDRESS ACTUAL VALUE}

Validate Get Cluster Note Actual Value From Server Setting Management Page
    [Tags]    REGRESSION
    ${CLUSTER NOTE ACTUAL VALUE} =   Verify Get Actual Value From Server Setting Management Page     Cluster Note     ${True}
    log     ${CLUSTER NOTE ACTUAL VALUE}
    set suite variable          ${CLUSTER NOTE ACTUAL VALUE}

Validate Get Server Status Actual Value From Server Setting Management Page
    [Tags]    REGRESSION
    ${SERVER STATUS ACTUAL VALUE} =   Verify Get Actual Value From Server Setting Management Page     Server Status     ${True}
    log     ${SERVER STATUS ACTUAL VALUE}
    set suite variable          ${SERVER STATUS ACTUAL VALUE}

Validate Get Server In Use Actual Value From Server Setting Management Page
    [Tags]    REGRESSION
    ${SERVER IN USE ACTUAL VALUE} =   Verify Get Actual Value From Server Setting Management Page     Server In Use    ${True}
    log     ${SERVER IN USE ACTUAL VALUE}
    set suite variable          ${SERVER IN USE ACTUAL VALUE}

Validate Get Available Database First Item From Server Setting Management Page
    [Tags]    REGRESSION
    ${AVAILABLE DATABASE FIRST VALUE} =   Verify Get Available Database First Item From Server Setting Management Page
    log     ${AVAILABLE DATABASE FIRST VALUE}
    set suite variable          ${AVAILABLE DATABASE FIRST VALUE}

Validate Set Sql Instance
    [Tags]    REGRESSION
    Verify Set Sql Instance     ${TEST DATA PREFIX}

Validate Set Physical Server
    [Tags]    REGRESSION
    Verify Set Physical Server     ${TEST DATA PREFIX}

Validate Set Cluster Note
    [Tags]    REGRESSION
    Verify Set Cluster Note     Yes

Validate Set Agent User Name
    [Tags]    REGRESSION
    Verify Set Agent User Name     ${AGENT USER NAME}

Validate Set Server Status
    [Tags]    REGRESSION
    Verify Set Server Status     ${SERVER STATUS}

Validate Set Server In Use
    [Tags]    REGRESSION
    Verify Set Server In Use     ${SERVER IN USE STATUS}

Validate Set Ip Address
    [Tags]    REGRESSION
    Verify Set Ip Address     ${IP ADDRESS}

Validate Move Available First Database Item To Destination
    [Tags]    REGRESSION
    Verify Move Available First Database Item To Destination

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

Validate Compare Server Management Grid Sql Instance Column First Row Value
    [Tags]    REGRESSION
    Verify Compare Server Management Grid First Row Value       ${SQL INSTANCE COLUMN NAME}     ${SQL INSTANCE}

Validate Compare Server Management Grid Physical Server Column First Row Value
    [Tags]    REGRESSION
    ${PHYSICAL SERVER} =        Verify Get Physical Server
    Verify Compare Server Management Grid First Row Value       ${PHYSICAL SERVER COLUMN NAME}     ${PHYSICAL SERVER}

Validate Compare Server Management Grid Server Status Column First Row Value
    [Tags]    REGRESSION
    Verify Compare Server Management Grid First Row Value       ${SERVER STATUS COLUMN NAME}     ${SERVER STATUS}

Validate Compare Server Management Grid Server In Use Column First Row Value
    [Tags]    REGRESSION
    Verify Compare Server Management Grid First Row Value       ${SERVER IN USE COLUMN NAME}     ${SERVER IN USE STATUS}

Validate Compare Server Management Grid Ip Address Column First Row Value
    [Tags]    REGRESSION
    Verify Compare Server Management Grid First Row Value       ${IP ADDRESS COLUMN NAME}     ${IP ADDRESS}

Validate Click Server Management Grid First Row Inline Action Button To Set Previous Value
    [Tags]    REGRESSION
    Verify Click Server Management Grid First Row Inline Action Button

Validate Select Inline Action Item To Set Previous Value
    [Tags]    REGRESSION
    Verify Select Inline Action Item With Module Name        ${SERVER SETTING INLINE ITEM}

Validate Set Sql Instance To Set Previous Value
    [Tags]    REGRESSION
    Verify Set Sql Instance     ${SQL INSTANCE ACTUAL VALUE}        ${True}

Validate Set Physical Server To Set Previous Value
    [Tags]    REGRESSION
    Verify Set Physical Server     ${PHYSICAL SERVER ACTUAL VALUE}      ${True}

Validate Set Cluster Note To Set Previous Value
    [Tags]    REGRESSION
    Verify Set Cluster Note     ${CLUSTER NOTE ACTUAL VALUE}

Validate Set Agent User Name To Set Previous Value
    [Tags]    REGRESSION
    Verify Set Agent User Name     ${AGENT USER NAME ACTUAL VALUE}

Validate Set Server Status To Set Previous Value
    [Tags]    REGRESSION
    Verify Set Server Status     ${SERVER STATUS ACTUAL VALUE}

Validate Set Server In Use To Set Previous Value
    [Tags]    REGRESSION
    Verify Set Server In Use     ${SERVER IN USE ACTUAL VALUE}

Validate Set Ip Address To Set Previous Value
    [Tags]    REGRESSION
    Verify Set Ip Address     ${IP ADDRESS ACTUAL VALUE}

Validate Unassign Assigned Database
    [Tags]    REGRESSION
    @{ITEM NAME LIST} =     create list        ${AVAILABLE DATABASE FIRST VALUE}
    Verify Unassign Assigned Database       @{ITEM NAME LIST}

Validate Click Server Details Save Button To Set Previous Value
    [Tags]    REGRESSION
    Verify Click Server Details Save Button