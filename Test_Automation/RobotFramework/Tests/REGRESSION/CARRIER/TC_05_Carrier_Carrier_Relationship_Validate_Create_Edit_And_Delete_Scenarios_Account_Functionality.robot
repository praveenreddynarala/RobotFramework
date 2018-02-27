*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Edit And Delete Scenarios Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${TRUNK NAME}           ${EMPTY}

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

Validate Expand Scenarios Section
    [Tags]    REGRESSION
    Verify Expand Scenarios Section

Validate Click Create Scenario Button
    [Tags]    REGRESSION
    Verify Click Create Scenario Button

Validate Set Scenario Type
    [Tags]    REGRESSION
    Verify Set Scenario Type        ${SCENARIO TYPE FOR CREATE SCENARIO}

Validte Set Traffic Direction
    [Tags]    REGRESSION
    Verify Set Traffic Direction    ${TRAFFIC DIRECTION FOR CREATE SCENARIO}

Validate Set Commercial Trunk
    [Tags]    REGRESSION
    Verify Set Commercial Trunk     ${TRUNK NAME}

Validate Set Country
    [Tags]    REGRESSION
    Verify Set Country              ${COUNTRY FOR CREATE SCENARIO}

Validate Set Service
    [Tags]    REGRESSION
    Verify Set Service              ${SERVICE FOR CREATE SCENARIO}

Validate Set Begin date
    [Tags]    REGRESSION
    Verify Set Begin Date For Add New Rate Plan         ${BEGIN DATE FOR CREATE SCENARIO}

Validate Set End Date
    [Tags]    REGRESSION
    Verify Set End Date             ${END DATE FOR CREATE SCENARIO}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Close New Event Case Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up         ${NEW EVENT CASE POP UP NAME}

Validate Get Scenarios Grid Row Details
    [Tags]    REGRESSION
    Verify Get Scenarios Grid Row Details

Validate Scenarios Grid Scenario Type
    [Tags]    REGRESSION
    Verify Scenarios Grid Scenario Type         ${SCENARIO TYPE FOR CREATE SCENARIO}

Validate Scenarios Grid Commercial Trunk
    [Tags]    REGRESSION
    Verify Scenarios Grid Commercial Trunk      ${TRUNK NAME}

Validate Scenarios Grid Direction
    [Tags]    REGRESSION
    Verify Scenarios Grid Direction     ${TRAFFIC DIRECTION FOR CREATE SCENARIO}

Validate Scenarios Grid Country
    [Tags]    REGRESSION
    Verify Scenarios Grid Country       ${COUNTRY FOR CREATE SCENARIO}

Validate Scenarios Grid Service
    [Tags]    REGRESSION
    Verify Scenarios Grid Service       ${SERVICE FOR CREATE SCENARIO}

Validate Click Scenarios Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Scenarios Grid Inline Action Button     ${TRUNK NAME}

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${EDIT INLINE ITEM}

Validate Click Add New Event Settlement Button
    [Tags]    REGRESSION
    Verify Click Add New Event Settlement Button

Validate Select Event Settlement Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Event Settlement Grid Row Checkbox        ${PAYING PARTY}

Validate Click Delete Event Settlement Button
    [Tags]    REGRESSION
    Verify Click Delete Event Settlement Button

Validate Click Save Button For Changes
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Close Edit Event Case Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up         ${EDIT EVENT CASE POP UP NAME}

Validate Select Scenarios Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Scenarios Grid Row Checkbox       ${TRUNK NAME}

Validate Click Delete Scenario Button
    [Tags]    REGRESSION
    Verify Click Delete Scenario Button

Validate Close Carrier Profile Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${CARRIER PROFILE TAB NAME}
