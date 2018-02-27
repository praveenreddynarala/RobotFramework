*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Sources and Policies To Validate Add And Delete New Reference Price List Source Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${PRICE POLICY NAME}        ${EMPTY}
${ROUTE CLASS}              ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =     Verify Get Route Class
    log  ${ROUTE CLASS}
    set suite variable      ${ROUTE CLASS}

Validate Get Price Policy Name
    [Tags]    REGRESSION
    ${PRICE POLICY NAME} =     Verify Get Price Policy Name
    log  ${PRICE POLICY NAME}
    set suite variable      ${PRICE POLICY NAME}

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Type For Search
    [Tags]    REGRESSION
    Verify Set Source Type For Search       ${REFERENCE PRICE LIST SOURCE TYPE}

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
    Verify Set Abbreviation     ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Status       ${REFERENCE PRICE LIST SOURCE STATUS}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Call Type        ${CALL TYPE FOR ADD REFERENCE PRICE LIST}

Validate Set Reference Pricing Policy
    [Tags]    REGRESSION
    Verify Set Reference Pricing Policy        ${PRICE POLICY NAME}

Validate Set Route Class
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Route Class      ${ROUTE CLASS}

Validate Check Compound RPL Checkbox
    [Tags]    REGRESSION
    Verify Select Source And Policies Checkboxes      ${COMPOUND RPL CHECKBOX LABEL TEXT}     ${COMPOUND RPL CHECKBOX FOR ADD REFERENCE PRICE LIST}

Validate Set AZ Min Selection Threshold
    [Tags]    REGRESSION
    Verify Set Az Min Selection Threshold       ${AZ MIN SELECTION THRESHOLD FOR ADD REFERENCE PRICE LIST}

Validate Set Note
    [Tags]    REGRESSION
    Verify Set Note     ${NOTE FOR ADD REFERENCE PRICE LIST}

Validate Click Create New Customer Save Button
    [Tags]    REGRESSION
    Verify Click Create New Customer Save Button

Validate Set Source For Search
    [Tags]    REGRESSION
    Verify Set Source For Search

Validate Click Sources Search Button After Create New Source
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Get Reference Price List Grid Row Details
    [Tags]    REGRESSION
    Verify Get Reference Price List Grid Row Details

Validate Source Name After Create
    [Tags]    REGRESSION
    Verify Source Name After Create

Validate Abbreviation After Create
    [Tags]    REGRESSION
    Verify Abbreviation After Create

Validate Status After Create
    [Tags]    REGRESSION
    Verify Status After Create      ${REFERENCE PRICE LIST SOURCE STATUS}

Validate Call Type After Create
    [Tags]    REGRESSION
    Verify Call Type After Create       ${CALL TYPE FOR ADD REFERENCE PRICE LIST}

Validate Reference Pricing Policy After Create
    [Tags]    REGRESSION
    Verify Reference Pricing Policy After Create      ${PRICE POLICY NAME}

Validate Az Min Selection Threshold After Create
    [Tags]    REGRESSION
    Verify Az Min Selection Threshold After Create      ${AZ MIN SELECTION THRESHOLD FOR ADD REFERENCE PRICE LIST}

Validate Route Class After Create
    [Tags]    REGRESSION
    Verify Route Class After Create     ${ROUTE CLASS}

Validate Compound RPL Checkbox Is Checked
    [Tags]    REGRESSION
    Verify Grid Checkbox Is Checked      ${COMPOUND RPL CHECKBOX LABEL TEXT}     ${COMPOUND RPL CHECKBOX FOR ADD REFERENCE PRICE LIST}

Validate Note After Create
    [Tags]    REGRESSION
    Verify Note After Create        ${NOTE FOR ADD REFERENCE PRICE LIST}

Validate Select Created Source Checkbox
    [Tags]    REGRESSION
    Verify Select Created Source Checkbox

Validate Click Delete Button
    [Tags]    REGRESSION
    Verify Click Delete Button

Validate Click Add New Source Button For New Source
    [Tags]    REGRESSION
    Verify Click Add New Source Button

Validate Set Source For New Source
    [Tags]    REGRESSION
    Verify Set Source       ${TEST DATA PREFIX}

Validate Set Abbreviation For New Source
    [Tags]    REGRESSION
    Verify Set Abbreviation     ${TEST DATA PREFIX}

Validate Set Status For New Source
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Status       ${REFERENCE PRICE LIST SOURCE STATUS}

Validate Set Call Type For New Source
    [Tags]    REGRESSION
    Verify Set Call Type        ${CALL TYPE FOR ADD REFERENCE PRICE LIST}

Validate Set Reference Pricing Policy For New Source
    [Tags]    REGRESSION
    Verify Set Reference Pricing Policy        ${PRICE POLICY NAME}

Validate Set Route Class For New Source
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Route Class      ${ROUTE CLASS}

Validate Check Compound RPL Checkbox For New Source
    [Tags]    REGRESSION
    Verify Select Source And Policies Checkboxes      ${COMPOUND RPL CHECKBOX LABEL TEXT}     ${COMPOUND RPL CHECKBOX FOR ADD REFERENCE PRICE LIST}

Validate Set AZ Min Selection Threshold For New Source
    [Tags]    REGRESSION
    Verify Set Az Min Selection Threshold       ${AZ MIN SELECTION THRESHOLD FOR ADD REFERENCE PRICE LIST}

Validate Set Note For New Source
    [Tags]    REGRESSION
    Verify Set Note     ${NOTE FOR ADD REFERENCE PRICE LIST}

Validate Click Create New Source Save Button For New Source
    [Tags]    REGRESSION
    Verify Click Create New Customer Save Button