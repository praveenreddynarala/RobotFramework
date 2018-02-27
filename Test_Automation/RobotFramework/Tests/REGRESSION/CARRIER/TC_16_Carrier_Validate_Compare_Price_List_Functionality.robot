*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Compare Price List Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}           ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}

Validate Filter Carrier Grid
    [Tags]    REGRESSION
    carrier_page_resource.Verify Grid Filter Details           ${CARRIER NAME COLUMN NAME}        ${CARRIER NAME}

Validate Click Carriers Page Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button         ${CARRIER NAME}

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${PRICE LISTS HISTORY INLINE ITEM}

Validate Set Multiple Status
    [Tags]    REGRESSION
    Verify Set Multiple Status           @{STATUS LIST FOR COMPARE}

Validate Set Price List Type
    [Tags]    REGRESSION
    Verify Set Price List Type           ${PRICE LIST TYPE FOR COMPARE}

Validate Set Destinations
    [Tags]    REGRESSION
    Verify Set Destinations              ${DESTINATIONS FOR COMPARE}

Validate Set From Date
    [Tags]    REGRESSION
    Verify Set From Date                 ${FROM DATE FOR COMPARE}

Validate Set To Date
    [Tags]    REGRESSION
    Verify Set To Date                   ${TO DATE FOR COMPARE}

Validate Click Price Lists History Search Button
    [Tags]    REGRESSION
    Verify Click Price Lists History Search Button

Validate Select Price Lists History Grid Multiple Rows
    [Tags]    REGRESSION
    Verify Select Price Lists History Grid Multiple Rows

Validate Click Compare Price Lists Button
    [Tags]    REGRESSION
    Verify Click Compare Price Lists Button

Validate Selected Price Lists Details Info
    [Tags]    REGRESSION
    Verify Selected Price Lists Details Info

Validate Rates Grid Columns Header
    [Tags]    REGRESSION
    Verify Rates Grid Columns Header

Validate Select Dial Digits Tab
    [Tags]    REGRESSION
    Verify Select Dial Digits Tab

Validate Dialed Digits Columns Header
    [Tags]    REGRESSION
    Verify Dialed Digits Columns Header

Validate Close Compare Price Lists Pop Up
    [Tags]    REGRESSION
    Verify Close Compare Price Lists Pop Up
