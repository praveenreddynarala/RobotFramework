*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Carrier And Rate Plan Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNT NAME}             ${EMPTY}
${RATING METHOD NAME}       ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Carrier Account Name
    [Tags]    REGRESSION
    ${ACCOUNT NAME} =     Verify Get Carrier Account Name
    log  ${ACCOUNT NAME}
    set suite variable      ${ACCOUNT NAME}

Validate Filter Carriers Grid
    [Tags]    REGRESSION
    @{ACCOUNT LIST} =       create list         ${ACCOUNT NAME}
    Verify Filter Carriers Grid         ${CARRIER NAME COLUMN NAME}      @{ACCOUNT LIST}

Validate Click Carriers Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carrier Page Inline Action Button      ${ACCOUNT NAME}

Validate Select Carrier Relationship Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Rate Plans Section
    [Tags]    REGRESSION
    Verify Expand Rate Plans Section

Validate Click Create Rate Plan Button
    [Tags]    REGRESSION
    Verify Click Create Rate Plan Button

Validate Set Rate Plan Name
    [Tags]    REGRESSION
    Verify Set Rate Plan Name     ${TEST DATA PREFIX}

Validate Set Rate Plan Abbreviation
    [Tags]    REGRESSION
    Verify Set Rate Plan Abbreviation           ${TEST DATA PREFIX}

Validate Set Business Type
    [Tags]    REGRESSION
    Verify Set Business Type            ${BUSINESS TYPE}

Validate Set Traffic Direction
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Traffic Direction        ${TRAFFIC DIRECTION}

Validate Set Tariff Type
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Tariff Type              ${TARIFF TYPE}

Validate Set Currency
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Currency                 ${CURRENCY}

Validate Set Product Catalog
    [Tags]    REGRESSION
    Verify Set Product Catalog          ${PRODUCT CATALOG}

Validate Set Rating Method
    [Tags]    REGRESSION
    ${RATING METHOD NAME} =     Verify Get Rating Method
    log  ${RATING METHOD NAME}
    Verify Set Rating Method            ${RATING METHOD NAME}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button
