*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify Inter Opco Functionality For Create Scenarios

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${RATE PLAN}      ${EMPTY}
${COMPANY CARRIER NAME}         ${EMPTY}
${ACCOUNT NAME}     ${EMPTY}

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

Validate Get Carrier Account Name
    [Tags]    REGRESSION
    ${ACCOUNT NAME} =     Verify Get Carrier Account Name
    log  ${ACCOUNT NAME}
    set suite variable      ${ACCOUNT NAME}

Validate Filter Carriers Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid For Inter Company      ${CARRIER NAME COLUMN NAME}     ${COMPANY CARRIER NAME}

Validate Click Carriers Page First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Get Created Rate Plan Name
    [Tags]    REGRESSION
    ${RATE PLAN} =    Verify Get Rate Plan Name
    set suite variable    ${RATE PLAN}

Validate Expand Inter Opco scenarios Section
    [Tags]    REGRESSION
    Verify Expand Inter Opco scenarios Section

Validate Click Inter Opco Create Scenario Button
    [Tags]    REGRESSION
    Verify Click Inter Opco Create Scenario Button

Validate Set Inter Opco Scenario Name
    [Tags]    REGRESSION
    Verify Set Inter Opco Name                 ${TEST DATA PREFIX}

Validate Set In Opco
    [Tags]    REGRESSION
    Verify Set In Opco          ${COMPANY CARRIER NAME}

Validate Set Out Opco
    [Tags]    REGRESSION
    Verify Set Out Opco          ${COMPANY CARRIER NAME}

Validate Set Service
    [Tags]    REGRESSION
    Verify Set Service              ${SERVICE FOR CREATE SCENARIO}

Validate Click Inter Opco Save Button
    [Tags]    REGRESSION
    Verify Click Inter Opco Save Button

Validate Click Inter Opco Add New Event Settlement Button
    [Tags]    REGRESSION
    Verify Click Inter Opco Add New Event Settlement Button

Validate Set New Event Paying Account
    [Tags]    REGRESSION
    Verify Set New Event Paying Account     ${ACCOUNT NAME}

Validate Set New Event Receiving Account
    [Tags]    REGRESSION
    Verify Set New Event Receiving Account      ${ACCOUNT NAME}

Validate Set New Event Rate Plan
    [Tags]    REGRESSION
    Verify Set New Event Rate Plan      ${RATE PLAN}         ${COMPANY CARRIER NAME}

Validate Click Save Chnages Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Save Changes Button

Validate Click Inter Opco Save Button After Edit Event Settlement
    [Tags]    REGRESSION
    Verify Click Inter Opco Save Button

Validate Click Inter Opco Add New Event Settlement Button For Inbound
    [Tags]    REGRESSION
    Verify Click Inter Opco Add New Event Settlement Button

Validate Set New Event Paying Account For Inbound
    [Tags]    REGRESSION
    Verify Set New Event Paying Account     ${ACCOUNT NAME}

Validate Set New Event Receiving Account For Inbound
    [Tags]    REGRESSION
    Verify Set New Event Receiving Account      ${ACCOUNT NAME}

Validate Set New Event Rate Plan For Inbound
    [Tags]    REGRESSION
    Verify Set New Event Rate Plan      ${RATE PLAN}         ${COMPANY CARRIER NAME}

Validate Set New Event Direction
    [Tags]    REGRESSION
    Verify Set New Event Direction      ${INBOUND TRAFFIC DIRECTION}

Validate Click Save Chnages Button For Inbound
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Save Changes Button

Validate Click Inter Opco Save Button After Edit Event Settlement For Inbound
    [Tags]    REGRESSION
    Verify Click Inter Opco Save Button

Validate Close Inter Opco New Event Case Pop Up
    [Tags]    REGRESSION
    carrier_page_resource.Verify Close Current Pop Up         ${INTER OPCO NEW EVENT CASE POP UP NAME}

Validate Close Carrier Window
    [Tags]   REGRESSION
    Verify Close Carrier Window

Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableInterOpCoSettlements

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        0

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window