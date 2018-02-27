*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Vendor Functionalities

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validate Navigate To Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Create Vendor Button
    [Tags]    REGRESSION
    Verify Click On Create Vendor Button

Validate Set Vendor Name
    [Tags]    REGRESSION
    Verify Set Vendor Name          ${TEST DATA PREFIX}

Validate Set Vendor Source
    [Tags]    REGRESSION
    Verify Set Vendor Source        ${TEST DATA PREFIX}

Validate Set IXtools Account
    [Tags]    REGRESSION
    Verify Set Ixtools Account

Validate Set Rate Plan
    [Tags]    REGRESSION
    Verify Set Rate Plan

Validate Set Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    Verify Set Call Type            ${CALL TYPE}

Validate Click On Save Vendor Profile Button
    [Tags]    REGRESSION
    Verify Click On Save Vendor Profile Button

Validate Close Create Vendor Tab
    [Tags]    REGRESSION
    Verify Close Create Vendor Tab      ${CREATE VENDOR TAB NAME}

Validate Filter Vendor Grid Column After Create
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Grid Row Data
    [Tags]    REGRESSION
    Verify Grid Row Data        ${ACTIVE STATUS}
