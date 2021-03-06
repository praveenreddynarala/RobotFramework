*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Creating New Exchange Rate Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CURRENCY NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Currency And Exchange Rates Menu
    [Tags]    REGRESSION
    Verify Expand Currency And Exchange Rates Menu

Validate Click Currency And Exchange Rates Submenu
    [Tags]    REGRESSION
    Verify Click Currency And Exchange Rates Submenu

Validate Click Currency Button
    [Tags]    REGRESSION
    Verify Click Currency Button

Validate Click New Currency Button
    [Tags]    REGRESSION
    Verify Click New Currency Button

Validate Set Currency Name
    [Tags]    REGRESSION
    Verify Set Currency Name        ${TEST DATA PREFIX}

Validate Set Currency Abbreviation
    [Tags]    REGRESSION
    Verify Set Currency Abbreviation        CA_

Validate Set Currency Symbol
    [Tags]    REGRESSION
    Verify Set Currency Symbol

Validate Click New Currency Save Button
    [Tags]    REGRESSION
    Verify Click New Currency Save Button

Validate Close Currency Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${CURRENCY TAB NAME}