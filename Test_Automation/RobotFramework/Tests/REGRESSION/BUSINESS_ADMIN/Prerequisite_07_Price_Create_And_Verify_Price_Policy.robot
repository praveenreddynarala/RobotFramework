*** Settings ***
Documentation     A Test Suite With Set Of Tests To Create and Verify Price Policies in PRICE

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTE CLASS}      ${EMPTY}
${DESTINATION}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Get Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =     Verify Get Route Class
    log  ${ROUTE CLASS}

Validate Get Destination
    [Tags]    REGRESSION
    ${DESTINATION} =     Verify Get Created Destination
    log  ${DESTINATION}
    set suite variable      ${DESTINATION}

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

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
    Verify Set Cost Policy Call Type        ${PRICE POLICY CALL TYPE}

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${PRICE POLICY ROUTE CLASS}

Validate Click Create Price Policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Set Price Policy
    [Tags]    REGRESSION
    Verify Set Price Policy

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Click Create Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate Set Destination of Formula Pop Up
    [Tags]    REGRESSION
    Verify Set Destination of Formula Pop Up        ${DESTINATION}

Validate Set Rate Type For Destination Formula
    [Tags]    REGRESSION
    Verify Set Rate Type            ${RATE TYPE FOR DESTINATION PRICE FORMULA}

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

Validate Close Formulas Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${FORMULAS TAB NAME}

Validate Filter Price Policy Grid With Created New Price Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${PRICE POLICY COLUMN NAME}

Validate Select Price Policies Grid Row Checkbox
    [Tags]  REGRESSION
    Verify Select Price Policies Grid Row Checkbox

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Get Available Reference Prices Count
    [Tags]    REGRESSION
    Verify Get Available Reference Prices Count

Validate Close Current Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${REFERANCE PRICES TAB NAME}

Validate Click Generate Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Button

Validate Select Available Destinations
    [Tags]    REGRESSION
    @{DESTINATION LIST} =       create list     ${DESTINATION}
    Verify Select Available Destinations        @{DESTINATION LIST}

Validate Click Generate Reference Prices Submit Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Submit Button

Validate Navigate to Price Policies Tab Again
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Reference Prices Button Again
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Compare Price Reference Prices Count After Create
    [Tags]   REGRESSION
    Verify Compare Price Reference Prices Count After Create        0