*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-System Admin Module Verify Last Modified Details In Server Management With Italian Language Settings

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot
Resource          ../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SQL INSTANCE}         ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin Module
    [Tags]    LOCALIZATION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    LOCALIZATION
    Click on System Tab

Validate Click Server Management Link
    [Tags]    LOCALIZATION
    Verify Click Server Management Link

Validate Click Server Management Grid First Row Inline Action Button
    [Tags]    LOCALIZATION
    Verify Click Server Management Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    LOCALIZATION
    Verify Select Inline Action Item With Module Name        ${SERVER SETTING INLINE ITEM}

Validate Set Sql Instance
    [Tags]    LOCALIZATION
    Verify Set Sql Instance     ${TEST DATA PREFIX}

Validate Set Physical Server
    [Tags]    LOCALIZATION
    Verify Set Physical Server     ${TEST DATA PREFIX}

Validate Set Cluster Note
    [Tags]    LOCALIZATION
    Verify Set Cluster Note     Yes

Validate Set Agent User Name
    [Tags]    LOCALIZATION
    Verify Set Agent User Name     ${AGENT USER NAME}

Validate Set Agent Password
    [Tags]    LOCALIZATION
    Verify Set Agent Password     ${AGENT PASSWORD}

Validate Set Server Status
    [Tags]    LOCALIZATION
    Verify Set Server Status     ${SERVER STATUS}

Validate Set Server In Use
    [Tags]    LOCALIZATION
    Verify Set Server In Use     ${SERVER IN USE STATUS}

Validate Set Ip Address
    [Tags]    LOCALIZATION
    Verify Set Ip Address     ${IP ADDRESS}

Validate Move Available First Database Item To Destination
    [Tags]    LOCALIZATION
    Verify Move Available First Database Item To Destination

Validate Click Server Details Save Button
    [Tags]    LOCALIZATION
    Verify Click Server Details Save Button

Validate Close Server Settings Tab
    [Tags]    LOCALIZATION
    system_admin_page_resource.Verify Close Current Tab     ${SERVER SETTINGS TAB NAME}

Validate Get Sql Instance
    [Tags]    LOCALIZATION
    ${SQL INSTANCE} =       Verify Get Sql Instance
    set suite variable      ${SQL INSTANCE}

Validate Filter Server Management Grid Sql Instance Column
    [Tags]    LOCALIZATION
    Verify Filter Server Management Grid With Provided Value To Filter      ${SQL INSTANCE COLUMN NAME}     ${SQL INSTANCE}

Validate Verify Compare Server Management Grid Sql Instance Column First Row Value
    [Tags]    LOCALIZATION
    Verify Compare Server Management Grid First Row Value       ${SQL INSTANCE COLUMN NAME}     ${SQL INSTANCE}

Validate Verify Compare Server Management Grid Physical Server Column First Row Value
    [Tags]    LOCALIZATION
    ${PHYSICAL SERVER} =        Verify Get Physical Server
    Verify Compare Server Management Grid First Row Value       ${PHYSICAL SERVER COLUMN NAME}     ${PHYSICAL SERVER}

Validate Verify Compare Server Management Grid Server Status Column First Row Value
    [Tags]    LOCALIZATION
    Verify Compare Server Management Grid First Row Value       ${SERVER STATUS COLUMN NAME}     ${SERVER STATUS}

Validate Verify Compare Server Management Grid Server In Use Column First Row Value
    [Tags]    LOCALIZATION
    Verify Compare Server Management Grid First Row Value       ${SERVER IN USE COLUMN NAME}     ${SERVER IN USE STATUS}

Validate Verify Compare Server Management Grid Ip Address Column First Row Value
    [Tags]    LOCALIZATION
    Verify Compare Server Management Grid First Row Value       ${IP ADDRESS COLUMN NAME}     ${IP ADDRESS}

Validate Verify Server Management Grid Last Modified Date Format
    [Tags]    LOCALIZATION
    Verify Server Management Grid Last Modified Date Format         ${TIME STAMP}

