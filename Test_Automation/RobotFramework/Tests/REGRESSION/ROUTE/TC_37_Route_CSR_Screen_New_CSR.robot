*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate CSR Screen New CSR

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER ACCOUNT}     ${EMPTY}
${TRUNK NAME}       ${EMPTY}

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CARRIER ACCOUNT} =       Verify Get Created Carrier Name
    log  ${CARRIER ACCOUNT}
    set suite variable      ${CARRIER ACCOUNT}

Validate Get Trunk Name
    [Tags]    REGRESSION
    ${TRUNK NAME} =       Verify Get Trunk Name
    log  ${TRUNK NAME}
    set suite variable      ${TRUNK NAME}

Validate Click Customer Specific Routing Button
    [Tags]    REGRESSION
    Verify Click Customer Specific Routing Button

Validate Click New CSR Button
    [Tags]    REGRESSION
    Verify Click New CSR Button

Validate Set CSR Product
    [Tags]    REGRESSION
    Verify Set CSR Product      ${ROUTING PRODUCT}

Validate Set CSR Customer
    [Tags]    REGRESSION
    Verify Set CSR Customer      ${CARRIER ACCOUNT}      ${TRUNK NAME}

Validate Select To Rank Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select To Rank Grid First Row Checkbox

Validate Click CSR To Rank Button
    [Tags]    REGRESSION
    Verify Click CSR To Rank Button

Validate Set Value In RCN To Rank Grid Column
    [Tags]    REGRESSION
    Verify Set Value In RCN To Rank Grid Column

Validate Click Review Route Guide Button
    [Tags]    REGRESSION
    Verify Click Review Route Guide Button

Validate Click CSR Save And Create Button
    [Tags]    REGRESSION
    Verify Click CSR Save And Create Button

Validate Close Csrm Pop Up
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Pop Up     ${NEW CUSTOMER SPECIFIC ROUTE GUIDE POP UP NAME}

Validate Click CSRM Grid First Row Routing Product Link
    [Tags]    REGRESSION
    Verify Click CSRM Grid First Row Routing Product Link