*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Generate Option Filter Is Working For RPL Generation

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${DESTINATION}        ${EMPTY}
${ROUTE CLASS}      ${EMPTY}
${FIRSTLY CREATED COST POLICY NAME}        ${EMPTY}
${SECONDLY CREATED COST POLICY NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Scope
    [Tags]    REGRESSION
    Verify Set Scope        General

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    InboundReferenceNumberPlanID

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set InboundReferenceNumberPlanID
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${INBOUND REFERENCE NUMBER PLAN ID UPDATE VALUE}

Validate Set Outbound Reference Number Plan ID Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    OutboundReferenceNumberPlanID

Validate Click Configuration Variables Grid Search Button To Set OutboundReferenceNumberPlanID
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Outbound Reference Number Plan Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${OUTBOUND REFERENCE NUMBER PLAN ID VALUE}

Validate Set iXToolsWholesaleSolutionType Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button To Set iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

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
    Verify Set Destination Type     SMS

Validate Set Call Char
    [Tags]    REGRESSION
    Verify Set Call Char        SMS

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

Validate Get Created Destination
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    set suite variable      ${DESTINATION}

Validate Close IxConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Get Created Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    set suite variable      ${ROUTE CLASS}

Validate Click Create New Price Policy
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
    Verify Set Cost Policy Call Type        SMS

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create Price Policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Firstly Created Price Policy Name
    [Tags]    REGRESSION
    ${FIRSTLY CREATED COST POLICY NAME} =       Verify Get Created Cost Policy Name
    set suite variable          ${FIRSTLY CREATED COST POLICY NAME}

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Set Price Policy
    [Tags]    REGRESSION
    Verify Set Price Policy

Validate Click Search Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

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

Validate Close Price Policy Formulas Tab
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${FORMULAS TAB NAME}

Validate Click Create New Price Policy For Second Price Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Price Policy Name For Second Price Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation For Second Price Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Price Policy Status For Second Price Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${PRICE POLICY ACTIVE STATUS}

Validate Set Call Type For Second Price Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        SMS

Validate Set Route Class For Second Price Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create Price Policy Save Button For Second Price Policy
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Secondly Created Price Policy Name
    [Tags]    REGRESSION
    ${SECONDLY CREATED COST POLICY NAME} =       Verify Get Created Cost Policy Name
    set suite variable          ${SECONDLY CREATED COST POLICY NAME}

Validate Click Formulas Button For Second Price Policy
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Set Price Policy For Second Price Policy
    [Tags]    REGRESSION
    Verify Set Price Policy

Validate Click Search Button For Second Price Policy
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Click Create Destination Formula For Second Price Policy
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate Set Destination of Formula Pop Up For Second Price Policy
    [Tags]    REGRESSION
    Verify Set Destination of Formula Pop Up        ${DESTINATION}

Validate Set Rate Type For Destination Formula For Second Price Policy
    [Tags]    REGRESSION
    Verify Set Rate Type            ${RATE TYPE FOR DESTINATION PRICE FORMULA}

Validate Set Begin Date For Destination Formula For Second Price Policy
    [Tags]    REGRESSION
    Verify Set Begin Date           ${BEGIN DATE FOR DESTINATION PRICE FORMULA}

Validate Set Formula Target For Destination Formula For Second Price Policy
    [Tags]    REGRESSION
    Verify Set Formula Target       ${TARGET FOR DESTINATION}

Validate Set Formula Minimum For Destination Formula For Second Price Policy
    [Tags]    REGRESSION
    Verify Set Formula Minimum      ${MINIMUM FOR DESTINATION}

Validate Set Formula Cost For Destination Formula For Second Price Policy
    [Tags]    REGRESSION
    Verify Set Formula Cost         ${COST FOR DESTINATION}

Validate Click Calculate Button For Second Price Policy
    [Tags]    REGRESSION
    Verify Click Calculate Button

Validate Click Create Button For Destination Formula For Second Price Policy
    [Tags]    REGRESSION
    Verify Click Create Button

Validate Close Price Window
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Click Reference Price List Generation Submenu
    [Tags]    REGRESSION
    Verify Click Reference Price List Generation Submenu

Validate Set Generate Record
    [Tags]    REGRESSION
    Verify Set Generate Record      Destinations with Suggested Target Price OR Suggested Minimum Price Change

Validate Set IXTrade Generation Type
    [Tags]    REGRESSION
    Verify Set IXTrade Generation Type      SMS

Validate Move Available Reference Price List To Destination
    [Tags]    REGRESSION
    @{LIST OF REFERENCE PRICE LIST} =       create list         ${FIRSTLY CREATED COST POLICY NAME}
    Verify Move Available Reference Price List To Destination       @{LIST OF REFERENCE PRICE LIST}

Validate Move Available Reference Price List To Destination For Second Price Policy
    [Tags]    REGRESSION
    @{LIST OF REFERENCE PRICE LIST} =       create list         ${SECONDLY CREATED COST POLICY NAME}
    Verify Move Available Reference Price List To Destination       @{LIST OF REFERENCE PRICE LIST}

Validate Move Available RPL Destination To Destination
    [Tags]    REGRESSION
    @{DESTINATION LIST} =       create list         ${DESTINATION}
    Verify Move Available RPL Destination To Destination        @{DESTINATION LIST}

Validate Click IXTrade Generate Reference Price Lists Button
    [Tags]    REGRESSION
    Verify Click IXTrade Generate Reference Price Lists Button

Validate The Destination Resolved Correctly
    [Tags]    REGRESSION
    Verify The Destination Resolved Correctly

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Click Exit Button