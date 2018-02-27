*** Settings ***
Documentation     A Test Suite With Set Of Tests For iXBill Create New Cycle Template

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixbill_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Go To IXBill Screen With Specific Url
    [Tags]    REGRESSION
    Go To IXBill Screen With Specific Url

Validate Click Cycle And Settlement Management Submenu
    [Tags]    REGRESSION
    Verify Click Cycle And Settlement Management Submenu

Validate Click New Cycle Template Button
    [Tags]    REGRESSION
    Verify Click New Cycle Template Button

Validate Set Cycle Template Name
    [Tags]    REGRESSION
    Verify Set Cycle Template Name          ${TEST DATA PREFIX}

Validate Set Cycle Template Type
    [Tags]    REGRESSION
    Verify Set Cycle Template Type          ${PERIODIC CYCLE TEMPLATE TYPE}

Validate Set Recurrence Pattern Period Length
    [Tags]    REGRESSION
    Verify Set Recurrence Pattern Period Length         ${RECURRENCE PATTERN PERIOD LENGTH}

Validate Set Recurrence Pattern Period Type
    [Tags]    REGRESSION
    Verify Set Recurrence Pattern Period Type           ${RECURRENCE PATTERN PERIOD TYPE}

Validate Set Recurrence Pattern Starting Date
    [Tags]    REGRESSION
    Verify Set Recurrence Pattern Starting Date         ${RECURRENCE PATTERN STARTING DATE}

Validate Click New Cycle Template Save Button
    [Tags]    REGRESSION
    Verify Click New Cycle Template Save Button

Validate Template Added Successfully
    [Tags]    REGRESSION
    Verify Template Added Successfully

Validate Close IXBill Window
    [Tags]    REGRESSION
    Verify Click Exit Button
