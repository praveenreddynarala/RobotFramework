*** Settings ***
Documentation     A Test Suite With Set Of Tests To Create Number Plan Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${TRUNK NAME}           ${EMPTY}
${CALL TYPE}            ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

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

Validate Expand Number Plans Section
    [Tags]    REGRESSION
    Verify Expand Number Plans Section

Validate Click Add Number Plan button
    [Tags]    REGRESSION
    Verify Click Add Number Plan Button

Validate Set Trunk Dropdown Value
    [Tags]    REGRESSION
    Verify Set Trunk Dropdown Value       ${TRUNK NAME}

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Set Call Type
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Call Type      ${CALL TYPE}

Validate Set Direction
    [Tags]    REGRESSION
    Verify Set Direction        ${NUMBER PLAN DIRECTION}

Validate Set Number Plan
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Number Plan      ${NUMBER PLAN FOR CREATE NUMBER PLAN}

Validate Set Begin date
    [Tags]    REGRESSION
    Verify Set Begin Date For Add New Rate Plan         ${BEGIN DATE FOR CREATE NUMBER PLAN}

Validate Click Save Button For Create Number Plan
    [Tags]    REGRESSION
    Verify Click Save Button