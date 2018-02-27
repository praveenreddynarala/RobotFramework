*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify The Editing Rates for Existing Records

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}           ${EMPTY}
${RATE PLAN}              ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name For Rate Plan
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name For Rate Plan
    set suite variable      ${CARRIER NAME}

Validate Filter Carriers Grid
    [Tags]  REGRESSION
    carrier_page_resource.Verify Grid Filter Details   ${CARRIER NAME COLUMN NAME}     ${CARRIER NAME}

Validate Click Carrier Page Inline Action Button
    [Tags]  REGRESSION
    Verify Click Carrier Page Inline Action Button      ${CARRIER NAME}

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           Carrier Rates

Validate Set Carrier Profile Rates Grid Begin Date
    [Tags]    REGRESSION
    Verify Set Carrier Profile Rates Grid Begin Date

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    ${DATE} =   Verify Get Future Date      2
    Verify Set Begin Date For Rate Search   ${DATE}

Validate Set End Date For Search
    [Tags]    REGRESSION
    ${DATE} =   Verify Get Future Date      7
    Verify Set End Date For Rate Search   ${DATE}

Validate Click Rates Page Search Button
    [Tags]    REGRESSION
    Verify Click Rates Page Search Button

Validate Data Is Loaded In The Grid
    [Tags]    REGRESSION
    Verify Data Is Loaded In The Grid