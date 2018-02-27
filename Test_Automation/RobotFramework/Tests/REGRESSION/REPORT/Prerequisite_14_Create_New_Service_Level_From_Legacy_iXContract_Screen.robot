*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create New Service Level

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTE CLASS}        ${EMPTY}

*** Test Cases ***
Validate Navigate to IXConnect module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate IXConnect Page Loaded Properly
    [Tags]    REGRESSION
    Is Contracts Page Loaded Properly

Validate Select Service Level Submenu
    [Tags]    REGRESSION
    Verify Select Service Level Submenu

Validate Click Service Level New Button
    [Tags]    REGRESSION
    Verify Click Service Level New Button

Validate Set Service Level
    [Tags]    REGRESSION
    Verify Set Service Level        ${TEST DATA PREFIX}

Validate Set Service Level Abbreviation
    [Tags]    REGRESSION
    Verify Set Service Level Abbreviation

Validate Get Created Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class Name
    set suite variable      ${ROUTE CLASS}

Validate Select Route Class Dropdown Item
    [Tags]    REGRESSION
    Verify Select Route Class Dropdown Item     ${ROUTE CLASS}

Validate Click Service Level Save Button
    [Tags]    REGRESSION
    Verify Click Service Level Save Button

Validate Close IxConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window