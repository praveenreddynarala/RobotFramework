*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Formula With Future Date

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixconnect_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

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

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Set Price Policy
    [Tags]    REGRESSION
    Verify Set Price Policy

Validate Click Search Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Click Create Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate Set Begin Date For Destination Formula
    [Tags]    REGRESSION
    Verify Set Begin Date With Future Date

Validate Set Destination of Formula Pop Up
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    Verify Set Destination of Formula Pop Up        ${DESTINATION}

Validate Set Rate Type For Destination Formula
    [Tags]    REGRESSION
    Verify Set Rate Type            ${RATE TYPE FOR DESTINATION PRICE FORMULA}

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

Validate Close Price Window
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to IXConnect module For Cost Policy Formula
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate IXConnect Page Loaded Properly For Cost Policy Formula
    [Tags]    REGRESSION
    Is Contracts Page Loaded Properly

Validate Select Destination Submenu For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Select Destination Submenu

Validate Click Destination New Button For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Click Destination New Button

Validate Set Destination For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Set Destination      ${TEST DATA PREFIX}

Validate Set Destination Abbreviation For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Set Destination Abbreviation

Validate Set Destination Type For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Set Destination Type     ${DESTINATION TYPE}

Validate Set Call Char For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Set Call Char        ${DESTINATION CALL CHAR}

Validate Set Country For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Set Country          ${DESTINATION COUNTRY}

Validate Set Number Plan For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Set Number Plan      ${INBOUND REF NUMBER PLAN}

Validate Set Destination Begin Date For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Set Destination Begin Date

Validate Set Destination End Date For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Set Destination End Date

Validate Click Destination Save Button For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Click Destination Save Button

Validate Close IxConnect Window For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}

Validate Navigate to Price module For Cost Policy Formula
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate The Cost Policies Tab Is Available
    [Tags]    REGRESSION
    Verify The Cost Policies Tab Is Available

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Navigate to Cost Policies Tab For Cost Policy Formula
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Vlidate Click Create New Cost Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Cost Policy Name
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Cost Policy Status
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${COST POLICY ACTIVE STATUS}

Validate Set Cost Policy Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Type     ${COST POLICY TYPE}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        ${CALL TYPE}

Validate Set Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create Policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Click Formulas Button For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Get Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Set Cost Policy For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Set Cost Policy

Validate Click Search Button For Cost Policy Formula
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Click Create New Cost Policy Formula Dropdown For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy Formula Dropdown

Validate Click Create Destination Formula For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate Set Begin Date For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Set Begin Date With Future Date

Validate Set Destination of Formula Pop Up For Cost Policy Formula
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    Verify Set Destination of Formula Pop Up        ${DESTINATION}

Validate Set Rate Type For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Set Rate Type            ${RATE TYPE FOR DESTINATION}

Validate Set Cost Formula For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Set Cost Formula         ${COST FORMULA FOR DESTINATION}

Validate Click Calculate Button For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Click Calculate Button

Validate Click Create Button For Cost Policy Formula
    [Tags]    REGRESSION
    Verify Click Create Button

