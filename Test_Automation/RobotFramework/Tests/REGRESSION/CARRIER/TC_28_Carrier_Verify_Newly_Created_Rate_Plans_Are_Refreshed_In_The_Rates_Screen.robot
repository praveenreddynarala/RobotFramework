*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify Newly Created Rate Plans Are Refreshed In the Rates Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${RATE PLAN}      ${EMPTY}
${COMPANY CARRIER NAME}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Expand Show Search Form Link
    [Tags]    REGRESSION
    Verify Expand Show Search Form Link

Validate Set Carrier Type For Carriers Search
    [Tags]    REGRESSION
    Verify Set Carrier Type For Carriers Search     ${INTERCOMPANY CARRIER TYPE}

Validate Click Carriers Page Search Button
    [Tags]    REGRESSION
    Verify Click Carriers Page Search Button

Validate Get Created Company Carrier Name
    [Tags]    REGRESSION
    ${COMPANY CARRIER NAME} =     Verify Get Company Carrier Name
    log     ${COMPANY CARRIER NAME}
    set suite variable      ${COMPANY CARRIER NAME}

Validate Filter Carriers Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid For Inter Company      ${CARRIER NAME COLUMN NAME}     ${COMPANY CARRIER NAME}

Validate Click Carriers Page First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RATES INLINE ITEM}

Validate Get Created Rate Plan Name
    [Tags]    REGRESSION
    ${RATE PLAN} =    Verify Get Rate Plan Name
    set suite variable    ${RATE PLAN}

Validate Set Rate Plan
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Rate Plan    ${RATE PLAN}

Validate Click Add New Rates Button
    [Tags]    REGRESSION
    Verify Click Add New Rates Button

Validate Set Product For Add New rate
    [Tags]    REGRESSION
    Verify Set Product For Add New rate     ${PRODUCT NAME FOR ADD NEW RATE}

Validate Set Grid Value For Add New Rate
    [Tags]    REGRESSION
    Verify Set Grid Value For Add New Rate

Validate Click Add New Rate Save Button
    [Tags]    REGRESSION
    Verify Click Add New Rate Save Button