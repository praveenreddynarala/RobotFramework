*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Service Level Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SERVICE LEVEL}        ${EMPTY}
${TRUNK NAME}           ${EMPTY}
${DESTINATION}          ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Get Created Destination
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    set suite variable      ${DESTINATION}

Validate Get Created Service Level
    [Tags]    REGRESSION
    ${SERVICE LEVEL} =    Verify Get Created Service Level
    set suite variable      ${SERVICE LEVEL}

Validate Get Trunk Name
    [Tags]    REGRESSION
    ${TRUNK NAME} =    Verify Get Trunk Name
    set suite variable      ${TRUNK NAME}

Validate Filter Carrier Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}

Validate Click Carriers Page Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button After Create

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Service Level Assignments Section
    [Tags]    REGRESSION
    Verify Expand Service Level Assignments Section

Validate Click Add Service Level button
    [Tags]    REGRESSION
    Verify Click Add Service Level button

Validate Set Trunk Dropdown Value
    [Tags]    REGRESSION
    Verify Set Trunk Dropdown Value       ${TRUNK NAME}

Validate Set Destination Dropdown Value
    [Tags]    REGRESSION
    Verify Set Destination Dropdown Value       ${DESTINATION}

Validate Set Service Level Dropdown Value
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Service Level    ${SERVICE LEVEL}

Validate Set Service Level Begin Date
    [Tags]    REGRESSION
    Verify Set Service Level Begin Date

Validate Set Service Level End Date
    [Tags]    REGRESSION
    Verify Set Service Level End Date

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button

