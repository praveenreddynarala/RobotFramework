*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Copy Price Policy Formulas Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTE CLASS}      ${EMPTY}

*** Test Cases ***
Validate Navigate to IXConnect module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate IXConnect Page Loaded Properly
    [Tags]    REGRESSION
    Is Contracts Page Loaded Properly

Validate Select Destination Submenu
    [Tags]    REGRESSION
    Verify Select Destination Submenu

Validate Click Destination New Button
    [Tags]    REGRESSION
    Verify Click Destination New Button

Validate Set Destination
    [Tags]    REGRESSION
    Verify Set Destination      ${TEST DATA PREFIX}

Validate Set Destination Abbreviation
    [Tags]    REGRESSION
    Verify Set Destination Abbreviation

Validate Set Destination Type
    [Tags]    REGRESSION
    Verify Set Destination Type     ${DESTINATION TYPE}

Validate Set Call Char
    [Tags]    REGRESSION
    Verify Set Call Char        ${DESTINATION CALL CHAR}

Validate Set Country
    [Tags]    REGRESSION
    Verify Set Country          ${DESTINATION COUNTRY}

Validate Set Number Plan
    [Tags]    REGRESSION
    Verify Set Number Plan      ${DESTINATION NUMBER PLAN}

Validate Set Destination Begin Date
    [Tags]    REGRESSION
    Verify Set Destination Begin Date

Validate Set Destination End Date
    [Tags]    REGRESSION
    Verify Set Destination End Date

Validate Click Destination Save Button
    [Tags]    REGRESSION
    Verify Click Destination Save Button

Validate Close IxConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Get Previously Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Previously Created Cost Policy Name

Validate Get Created Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    set suite variable      ${ROUTE CLASS}

Vlidate Click Create New Price Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Price Policy Name
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Price Policy Status
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${PRICE POLICY ACTIVE STATUS}

Validate Set Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    Verify Set Cost Policy Call Type        ${CALL TYPE}

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create Price Policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Price Policy Grid With Created Price Policy For Price Policy Formula Screen
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${PRICE POLICY COLUMN NAME}

Validate Select Price Policies Grid Row Checkbox For Price Policy Formula Screen
    [Tags]  REGRESSION
    Verify Select Price Policies Grid Row Checkbox

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Set Select date
    [Tags]    REGRESSION
    Verify Set Select Date      ${SELECT DATE FOR COPY POLICIY}

Validate Click Seartch Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Click Create Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate Set Destination of Formula Pop Up
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    Verify Set Destination of Formula Pop Up        ${DESTINATION}

Validate Set Rate Type For Destination Formula
    [Tags]    REGRESSION
    Verify Set Rate Type            ${RATE TYPE FOR DESTINATION PRICE FORMULA FOR COPY}

Validate Set Begin Date For Destination Formula
    [Tags]    REGRESSION
    Verify Set Begin Date           ${BEGIN DATE FOR DESTINATION PRICE FORMULA}

Validate Set Formula Target For Destination Formula
    [Tags]    REGRESSION
    Verify Set Formula Target       ${TARGET FOR DESTINATION}

Validate Set Formula Minimum For Destination Formula
    [Tags]    REGRESSION
    Verify Set Formula Minimum      ${MINIMUM FOR DESTINATION}

Validate Set Formula Cost For Destination Formula
    [Tags]    REGRESSION
    Verify Set Formula Cost         ${COST FOR DESTINATION}

Validate Click Calculate Button
    [Tags]    REGRESSION
    Verify Click Calculate Button

Validate Click Create Button For Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Button

Validate Select Price Policy Formulas Grid Row Checkbox
    [Tags]  REGRESSION
    Verify Select Price Policy Formulas Grid Row Checkbox

Validate Click Copy Formulas Button
    [Tags]    REGRESSION
    Verify Click Copy Formulas Button

Validate Check New Start And End Date Radio Button
    [Tags]    REGRESSION
    Verify Check New Start And End Date Radio Button

Validate Set New Start Date
    [Tags]    REGRESSION
    Verify Set New Start Date       ${START DATE FOR COPY POLICIY}

Validate Set New End Date
    [Tags]    REGRESSION
    Verify Set New End Date

Validate Move Available Policies To Destination
    [Tags]    REGRESSION
    Verify Move Available Policies To Destination

Validate Click Next Button
    [Tags]    REGRESSION
    Verify Click Next Button

Validate Click Second Page Next Button
    [Tags]    REGRESSION
    Verify Click Second Page Next Button

Validate Click Copy Cost Formulas Save Button
    [Tags]    REGRESSION
    Verify Click Copy Cost Formulas Save Button