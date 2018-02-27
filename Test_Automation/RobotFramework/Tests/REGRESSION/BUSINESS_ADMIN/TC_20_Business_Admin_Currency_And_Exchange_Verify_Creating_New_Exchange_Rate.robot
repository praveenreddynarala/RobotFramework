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

Validate Get Currency Name
    [Tags]    REGRESSION
    ${CURRENCY NAME} =     Verify Get Currency Name
    log  ${CURRENCY NAME}
    set suite variable      ${CURRENCY NAME}

Validate Click New Exchange Rate Button
    [Tags]    REGRESSION
    Verify Click New Exchange Rate Button

Validate Set Exchange Rate Type
    [Tags]    REGRESSION
    Verify Set Exchange Rate Type       ${EXCHANGE RATE TYPE}

Validate Set Currency
    [Tags]    REGRESSION
    Verify Set Currency     ${CURRENCY NAME}

Validate Set Exchange Rate
    [Tags]    REGRESSION
    Verify Set Exchange Rate        ${EXCHANGE RATE}

Validate Set Exchange Rate Begin Date
    [Tags]    REGRESSION
    Verify Set Exchange Rate Begin Date     ${EXCHANGE RATE BEGIN DATE}

Validate Click Add Exchange Rate Save Button
    [Tags]    REGRESSION
    Verify Click Add Exchange Rate Save Button

Validate Set Exchange Rate Type For Search
    [Tags]    REGRESSION
    Verify Set Exchange Rate Types For Search       @{EXCHANGE RATE TYPE LIST}

Validate Set Currency For Search
    [Tags]    REGRESSION
    Verify Set Currency For Search     ${CURRENCY NAME}

Validate Set Exchange Rate Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Exchange Rate Begin Date For Search

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Get Exchange Rates Grid Row Details
    [Tags]    REGRESSION
    Verify Get Exchange Rates Grid Row Details

Validate Exchange Rates Grid Row Details
    [Tags]    REGRESSION
    Verify Exchange Rates Grid Row Details      ${EXCHANGE RATE TYPE}    ${CURRENCY NAME}

Validate Click Exchange Rates Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Exchange Rates Grid Inline Action Button       ${EXCHANGE RATE TYPE}

Validate Click Exchange Rate Delete Inline Item
    [Tags]    REGRESSION
    Verify Click Exchange Rate Delete Inline Item
