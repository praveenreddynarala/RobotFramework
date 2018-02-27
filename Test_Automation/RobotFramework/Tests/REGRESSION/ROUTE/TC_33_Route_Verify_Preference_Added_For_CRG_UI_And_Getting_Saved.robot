*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Preference Added For CRG UI And Getting Saved

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{COLUMN NAME LIST}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Set Commercial Routing Grid Settings
    [Tags]    REGRESSION
    Verify Set Commercial Routing Grid Settings         ${RESET ALL GRID SETTINGS}

Validate Get Cost Policies Costs Grid Column Names By Order
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =    Verify Get Commercial Routing Grid Column Names By Order
    set suite variable    @{COLUMN NAME LIST}

Validate Drag Cost policies Costs Grid Column
    [Tags]    REGRESSION
    Verify Drag Commercial Routing Grid Column        ${ROUTING PRODUCT COLUMN NAME}        ${ROUTE CLASS COLUMN NAME}

Validate Set Commercial Routing Save Settings
    [Tags]    REGRESSION
    Verify Set Commercial Routing Grid Settings         ${SAVE SETTINGS GRID SETTINGS}

Validate Log Out From Route Module
    [Tags]    REGRESSION
    Validate Log Out Functionality

Validate Login Functionality With Same Valid Credential
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to Route module After Altering
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab After Altering
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Get Commercial Routing Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Commercial Routing Grid Column Names By Order

Validate Commercial Routing Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${ROUTING PRODUCT COLUMN NAME}    ${ROUTE CLASS COLUMN NAME}    @{COLUMN NAME LIST}

Validate Set Commercial Routing Grid Settings After Altering
    [Tags]    REGRESSION
    Verify Set Commercial Routing Grid Settings         ${RESET ALL GRID SETTINGS}

Validate Set Commercial Routing Save Settings After Altering
    [Tags]    REGRESSION
    Verify Set Commercial Routing Grid Settings         ${SAVE SETTINGS GRID SETTINGS}