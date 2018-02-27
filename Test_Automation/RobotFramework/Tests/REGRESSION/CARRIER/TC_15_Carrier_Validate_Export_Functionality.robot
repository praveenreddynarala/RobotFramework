*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Export Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}             ${EMPTY}

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
    Verify Set Multiple Status           @{STATUS LIST FOR EXPORT}

Validate Set Price List Type
    [Tags]    REGRESSION
    Verify Set Price List Type           ${PRICE LIST TYPE FOR EXPORT}

Validate Set Destinations
    [Tags]    REGRESSION
    Verify Set Destinations              ${DESTINATIONS FOR EXPORT}

Validate Set From Date
    [Tags]    REGRESSION
    Verify Set From Date                 ${FROM DATE FOR EXPORT}

Validate Set To Date
    [Tags]    REGRESSION
    Verify Set To Date                   ${TO DATE FOR EXPORT}

Validate Click Price Lists History Search Button
    [Tags]    REGRESSION
    Verify Click Price Lists History Search Button

Validate Click Price Lists History Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Price List History Grid First Row Inline Action Button

Validate Select Item From Price Lists History Grid Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${VIEW PRICE LIST DETAIL INLINE ITEM}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Export To Excel Button