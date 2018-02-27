*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Add Network Destination Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Network Codes Submenu
    [Tags]    REGRESSION
    Verify Click Network Codes Submenu

Validate Get Network Destinations Grid First Row Details
    [Tags]    REGRESSION
    Verify Get Network Destinations Grid First Row Details

Validate Click Add Network Destination Button
    [Tags]    REGRESSION
    Verify Click Add Network Destination Button

Validate Add Duplicate Network Destination
    [Tags]    REGRESSION
    Verify Add Duplicate Network Destination

Validate Set Network Destination
    [Tags]    REGRESSION
    Verify Set Network Destination              ${TEST DATA PREFIX}

Validate Set Destination Abbreviation
    [Tags]    REGRESSION
    Verify Set Destination Abbreviation         ${DESTINATION ABBREVIATION}

Validate Set Network Destination Country
    [Tags]    REGRESSION
    Verify Set Network Destination Country      ${NETWORK DESTINATION COUNTRY}

Validate Set Call Char
    [Tags]    REGRESSION
    Verify Set Call Char        ${CALL CHAR}

Validate Set Network Destination Begin Date
    [Tags]    REGRESSION
    Verify Set Network Destination Begin Date

Validate Set Network Destination End Date
    [Tags]    REGRESSION
    Verify Set Network Destination End Date

Validate Set Internal Code
    [Tags]    REGRESSION
    Verify Set Internal Code        ${INTERNAL CODE}

Validate Set External Code
    [Tags]    REGRESSION
    Verify Set External Code        ${EXTERNAL CODE}

Validate Click Add Network Destination Save Button
    [Tags]    REGRESSION
    Verify Click Add Network Destination Save Button

Validate Set Country For Search
    [Tags]    REGRESSION
    Verify Set Country For Search       ${NETWORK DESTINATION COUNTRY}

Validate Set Created Network Destination For Search
    [Tags]    REGRESSION
    Verify Set Created Network Destination For Search

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Network Destination Begin Date For Search

Validate Set End Date For Search
    [Tags]    REGRESSION
    Verify Set Network Destination End Date For Search

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Get Network Destinations Grid First Row Details After Creation
    [Tags]    REGRESSION
    Verify Get Network Destinations Grid First Row Details

Validate Created Network Destinations Details
    [Tags]    REGRESSION
    Verify Created Network Destinations Details         ${DESTINATION ABBREVIATION}     ${NETWORK DESTINATION COUNTRY}      ${CALL CHAR}    ${INTERNAL CODE}    ${EXTERNAL CODE}

Validate Set Value In Network Destinations Grid Destination Abbreviation Column
    [Tags]    REGRESSION
    Verify Set Value In Network Destinations Grid First Row Column          ${DESTINATION ABBREVIATION COLUMN NAME}     ${EDIT DESTINATION ABBREVIATION}

Validate Click Save Changes Button
    [Tags]    REGRESSION
    Verify Click Save Changes Button
