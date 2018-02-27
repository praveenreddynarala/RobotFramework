*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate The Create Route Class Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTE CLASS}      ${EMPTY}

*** Test Cases ***
Validate Navigate to IXConnect module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate IXConnect Page Loaded Properly
    [Tags]    REGRESSION
    Is Contracts Page Loaded Properly

Validate Select Route Class Submenu
    [Tags]    REGRESSION
    Verify Select Route Class Submenu

Validate Click New Route Class Button
    [Tags]    REGRESSION
    Verify Click New Route Class Button

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Route Class     ${TEST DATA PREFIX}

Validate Get Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =     Verify Get Route Class
    log  ${ROUTE CLASS}

Validate Set Route Class Abbreviation
    [Tags]    REGRESSION
    Verify Set Route Class Abbreviation

Validate Set Route Class Service
    [Tags]    REGRESSION
    Verify Set Route Class Service      ${ROUTE CLASS SERVICE}

Validate Set Target Fulfillment Order
    [Tags]    REGRESSION
    Verify Set Target Fulfillment Order

Validate Set Capacity Saturation Order
    [Tags]    REGRESSION
    Verify Set Capacity Saturation Order

Validate Route Class Is Created
    [Tags]    REGRESSION
    Verify Click Route Class Save Button

Validate Close IxConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}