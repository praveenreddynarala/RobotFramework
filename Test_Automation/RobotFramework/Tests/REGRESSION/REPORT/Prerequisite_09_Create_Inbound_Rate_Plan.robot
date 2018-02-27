*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Inbound Rate Plan Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SERVICE LEVEL}        ${EMPTY}
${RATING METHOD}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Filter Carrier Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}

Validate Click Carriers Page Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button After Create

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Rate Plans Section
    [Tags]    REGRESSION
    Verify Expand Rate Plans Section

Validate Click Create Rate Plan Button
    [Tags]    REGRESSION
    Verify Click Create Rate Plan Button

Validate Set Rate Plan Name
    [Tags]    REGRESSION
    Verify Set Rate Plan Name                   ${TEST DATA PREFIX}

Validate Set Rate Plan Abbreviation
    [Tags]    REGRESSION
    Verify Set Rate Plan Abbreviation           ${TEST DATA PREFIX}

Validate Set Increase Notice Period Days
    [Tags]    REGRESSION
    Verify Set Increase Notice Period Days      ${INCREASE NOTICE PERIOD DAYS}

Validate Set Decrease Notice Period Days
    [Tags]    REGRESSION
    Verify Set Decrease Notice Period Days      ${DECREASE NOTICE PERIOD DAYS}

Validate Set Dial Digit Change Notice Period Days
    [Tags]    REGRESSION
    Verify Set Dial Digit Change Notice Period Days         ${DIAL DIGIT CHANGE NOTICE PERIOD DAYS}

Validate Set Business Type
    [Tags]    REGRESSION
    Verify Set Business Type            ${BUSINESS TYPE}

Validate Set Traffic Direction
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Traffic Direction        ${INBOUND TRAFFIC DIRECTION}

Validate Set Tariff Type
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Tariff Type              ${TARIFF TYPE}

Validate Set Service Level
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Service Level            ${SERVICE LEVEL}

Validate Set Currency
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Currency                 ${CURRENCY}

Validate Set Product Catalog
    [Tags]    REGRESSION
    Verify Set Product Catalog          ${PRODUCT CATALOG}

Validate Get Rating Method
    [Tags]    REGRESSION
    ${RATING METHOD} =    Verify Get Rating Method
    set suite variable      ${RATING METHOD}

Validate Set Rating Method
    [Tags]    REGRESSION
    Verify Set Rating Method            ${RATING METHOD}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Close Carrier Profile Tab After Creating Rate Plan
    [Tags]    REGRESSION
    Verify Close Current Tab            ${CARRIER PROFILE TAB NAME}
