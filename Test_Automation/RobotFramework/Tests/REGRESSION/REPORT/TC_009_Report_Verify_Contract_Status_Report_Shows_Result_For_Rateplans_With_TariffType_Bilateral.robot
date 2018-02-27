*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Contract Status Report Shows Result For Rateplans With TariffType Bilateral

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNT NAME}     ${EMPTY}
${RATE PLAN}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${BILATERAL REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CONTRACT STATUS REPORT SUBMENU}

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Get First Row Account Name
    [Tags]    REGRESSION
    ${ACCOUNT NAME} =   Verify Get First Row Account Name
    set suite variable      ${ACCOUNT NAME}

Validate Get First Row Rate Plan
    [Tags]    REGRESSION
    ${RATE PLAN} =      Verify Get First Row Rate Plan
    set suite variable      ${RATE PLAN}

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Navigate to Carrier Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Filter Carriers Grid
    [Tags]    REGRESSION
    @{CARRIER NAME LIST} =      create list     ${ACCOUNT NAME}
    Verify Filter Carriers Grid     ${CARRIER NAME COLUMN NAME}     @{CARRIER NAME LIST}

Validate Click Carriers Page First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Rate Plans Section
    [Tags]    REGRESSION
    Verify Expand Rate Plans Section

Validate Filter Rate Plan Grid
    [Tags]    REGRESSION
    @{RATE PLAN LIST} =         create list     ${RATE PLAN}
    Verify Filter Rate Plan Grid        ${RATE PLAN COLUMN NAME}     @{RATE PLAN LIST}

Validate Get Rate Plan Grid Row Details
    [Tags]    REGRESSION
    Verify Get Rate Plan Grid Row Details

Validate Rate Plan Grid Tariff Type
    [Tags]    REGRESSION
    Verify Rate Plan Grid Tariff Type          ${BILATERAL TARIFF TYPE}