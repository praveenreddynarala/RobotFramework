*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Carrier And Rate Plan Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${COMPANY NAME}             ${EMPTY}
${RATING METHOD NAME}       ${EMPTY}
${TRUNK NAME}               ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click Create Carrier Button
    [Tags]    REGRESSION
    Verify Click Create Carrier Button

Validate Set Carrier Name
    [Tags]    REGRESSION
    Verify Set Carrier Name             ${TEST DATA PREFIX}

Validate Set Carrier Abbreviation
    [Tags]    REGRESSION
    Verify Set Carrier Abbreviation     ${TEST DATA PREFIX}

Validate Set Carrier Legal Name
    [Tags]    REGRESSION
    Verify Set Carrier Legal Name       ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    Verify Set Status                   ${ACTIVE STATUS}

Validate Get Rating Method
    [Tags]    REGRESSION
    ${RATING METHOD NAME} =     Verify Get Rating Method
    log  ${RATING METHOD NAME}
    set suite variable      ${RATING METHOD NAME}

Validate Get Company Name
    [Tags]    REGRESSION
    ${COMPANY NAME} =     Verify Get Company
    log  ${COMPANY NAME}
    set suite variable      ${COMPANY NAME}

Validate Set Company
    [Tags]    REGRESSION
    Verify Set Company                  ${COMPANY NAME}

Validate Set Carrier Number
    [Tags]    REGRESSION
    Verify Set Carrier Number

Validate Click Create Carrier Save Button
    [Tags]    REGRESSION
    Verify Click Create Carrier Save Button

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
    carrier_page_resource.Verify Set Traffic Direction        ${INBOUND TRAFFIC DIRECTION}

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
    Verify Set Rating Method            ${RATING METHOD NAME}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button
