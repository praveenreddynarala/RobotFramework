*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Sources and Policies To Validate Add, Delete New Customer Source Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNT NAME}         ${EMPTY}
${RATE PLAN NAME}       ${EMPTY}
${PRICE POLICY NAME}    ${EMPTY}
${CSNP NUMBER PLAN}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Carrier Account Name
    [Tags]    REGRESSION
    ${ACCOUNT NAME} =     Verify Get Carrier Account Name
    log  ${ACCOUNT NAME}
    set suite variable      ${ACCOUNT NAME}

Validate Get Rate Plan Name
    [Tags]    REGRESSION
    ${RATE PLAN NAME} =     Verify Get Rate Plan Name
    log  ${RATE PLAN NAME}
    set suite variable      ${RATE PLAN NAME}

Validate Get Price Policy Name
    [Tags]    REGRESSION
    ${PRICE POLICY NAME} =     Verify Get Price Policy Name
    log  ${PRICE POLICY NAME}
    set suite variable      ${PRICE POLICY NAME}

Validate Get CSNP
    [Tags]    REGRESSION
    ${CSNP NUMBER PLAN} =     Verify Get CSNP Number Plan
    log  ${CSNP NUMBER PLAN}
    set suite variable      ${CSNP NUMBER PLAN}

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Type For Search
    [Tags]    REGRESSION
    Verify Set Source Type For Search       ${CUSTOMER SOURCE TYPE}

Validate Click Sources Search Button
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Click Add New Source Button
    [Tags]    REGRESSION
    Verify Click Add New Source Button

Validate Set Source
    [Tags]    REGRESSION
    Verify Set Source       ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Abbreviation     ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Status       ${ACTIVE STATUS}

Validate Set Account
    [Tags]    REGRESSION
    Verify Set Account      ${ACCOUNT NAME}

Validate Set Call Type
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Call Type        ${SOURCE CALL TYPE}

Validate Set Rate Plan
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Rate Plan        ${RATE PLAN NAME}

Validate Set Number Plan
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Number Plan      ${CSNP NUMBER PLAN}

Validate Set Reference Price List
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Reference Price List     ${PRICE POLICY NAME}

Validate Click Create New Customer Save Button
    [Tags]    REGRESSION
    Verify Click Create New Customer Save Button

Validate Set Source For Search
    [Tags]    REGRESSION
    Verify Set Source For Search

Validate Click Sources Search Button After Create New Source
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Select Created Source Checkbox
    [Tags]    REGRESSION
    Verify Select Created Source Checkbox

Validate Click Delete Button
    [Tags]    REGRESSION
    Verify Click Delete Button