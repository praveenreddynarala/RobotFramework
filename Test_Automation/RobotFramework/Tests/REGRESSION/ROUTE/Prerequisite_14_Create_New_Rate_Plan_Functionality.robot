*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create And Edit New Rate Plan Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

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

Validate Get Created Service Level
    [Tags]    REGRESSION
    ${SERVICE LEVEL} =    Verify Get Created Service Level
    set suite variable      ${SERVICE LEVEL}

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
    Verify Set Traffic Direction        ${TRAFFIC DIRECTION}

Validate Set Tariff Type
    [Tags]    REGRESSION
    Verify Set Tariff Type              ${TARIFF TYPE}

Validate Set Service Level
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Service Level            ${SERVICE LEVEL}

Validate Set Currency
    [Tags]    REGRESSION
    Verify Set Currency                 ${CURRENCY}

Validate Set Product Catalog
    [Tags]    REGRESSION
    Verify Set Product Catalog          ${PRODUCT CATALOG}

Validate Set Rate Plan Scope
    [Tags]    REGRESSION
    Verify Set Rate Plan Scope          ${RATE PLAN SCOPE}

Validate Toggle Cost Pricing Indicator
    [Tags]    REGRESSION
    Verify Toggle Cost Pricing Indicator          ${COST PRICE INDICATOR}

Validate Get Rating Method
    [Tags]    REGRESSION
    ${RATING METHOD} =    Verify Get Rating Method
    set suite variable      ${RATING METHOD}

Validate Set Rating Method
    [Tags]    REGRESSION
    Verify Set Rating Method            ${RATING METHOD}

Validate Set Rate Plan Category 1
    [Tags]    REGRESSION
    Verify Set Rate Plan Category 1     ${RATE PLAN CAT 1}

Validate Set Rate Plan Category 2
    [Tags]    REGRESSION
    Verify Set Rate Plan Category 2     ${RATE PLAN CAT 2}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date For Add New Rate Plan               ${BEGIN DATE}

Validate Set End Date
    [Tags]    REGRESSION
    Verify Set End Date                 ${END DATE}

Validate Set Note
    [Tags]    REGRESSION
    Verify Set Note                     ${NOTE FOR RATE PLAN}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button