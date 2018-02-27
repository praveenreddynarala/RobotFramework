*** Settings ***
Documentation     [TAENOSIS-844] A Test Suite With Set Of Tests To Verify Copy Formula Or Copy UDP With New Start And End Date Set

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}        ${EMPTY}
${ROUTE CLASS}      ${EMPTY}

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
    Verify Set Destination Type     ${DESTINATION TYPE}

Validate Set Call Char
    [Tags]    REGRESSION
    Verify Set Call Char        ${DESTINATION CALL CHAR}

Validate Set Country
    [Tags]    REGRESSION
    Verify Set Country          ${DESTINATION COUNTRY}

Validate Set Number Plan
    [Tags]    REGRESSION
    Verify Set Number Plan      ${INBOUND REF NUMBER PLAN}

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

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Get Created Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    set suite variable      ${ROUTE CLASS}

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Vlidate Click Create New Cost Policy For First Cost Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Cost Policy Name For First Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation For First Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Cost Policy Status For First Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${COST POLICY ACTIVE STATUS}

Validate Set Call Type For First Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        ${CALL TYPE}

Validate Set Route Class For First Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create policy Save Button For First Cost Policy
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

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

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        ${CALL TYPE}

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create Cost Policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Previously Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Previously Created Cost Policy Name

Validate Filter Cost Policy Grid With Created Cost Policy For Cost Policy Formula Screen
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${COST POLICY COLUMN NAME}

Validate Select Cost Policies Grid Row Checkbox For Cost Policy Formula Screen
    [Tags]  REGRESSION
    Verify Select Price Policies Grid Row Checkbox

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Click Create Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate Set Destination of Formula Pop Up
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    Verify Set Destination of Formula Pop Up    ${DESTINATION}

Validate Set Rate Type For Destination Formula
    [Tags]    REGRESSION
    Verify Set Rate Type    ${RATE TYPE FOR DESTINATION FOR COPY}

Validate Set Begin Date For Destination Formula
    [Tags]    REGRESSION
    Verify Set Begin Date    ${BEGIN DATE FOR DESTINATION}

Validate Set Cost Formula For Destination Formula
    [Tags]    REGRESSION
    Verify Set Cost Formula    ${COST FORMULA FOR DESTINATION}

Validate Click Calculate Button
    [Tags]    REGRESSION
    Verify Click Calculate Button

Validate Click Create Button For Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Button

Validate Click Formulas Page Search Button
    [Tags]    REGRESSION
    Verify Click Formulas Page Search Button

Validate Select Cost Policy Formulas Grid Row Checkbox
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
    Verify Set New Start Date    ${NEW START DATE}

Validate Set New End Date
    [Tags]    REGRESSION
    Verify Set New End Date

Validate Select Cost Policies From Available Policies
    [Tags]    REGRESSION
    Verify Select Cost Policies From Available Policies

Validate Click Next Button
    [Tags]    REGRESSION
    Verify Click Next Button

Validate Click Copy Cost Formulas Save Button
    [Tags]    REGRESSION
    Verify Click Copy Cost Formulas Save Button

Validate The Cost Formula Grid First Row Checkbox Is Checked
    [Tags]    REGRESSION
    Verify The Cost Formula Grid First Row Checkbox Is Checked

Validate Close Cost Policies Formulas Tab
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        Cost Policies Formulas

Validate Close Price Module
    [Tags]    REGRESSIon
    Verify Close Price Window

Validate Navigate to Price module After Closing The Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Vlidate Click Create New Price Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Price Policy Name For Price Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation For Price Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Price Policy Status For Price Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${PRICE POLICY ACTIVE STATUS}

Validate Set Call Type For Price Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        ${CALL TYPE}

Validate Set Route Class For Price Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create Price Policy Save Button For Price Policy
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Previously Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Previously Created Cost Policy Name

Validate Click User Defined Parameters Button
    [Tags]  REGRESSION
    Verify Click User Defined Parameters Button

Validate Click Search Button For Price Policy
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Select Checkbox Of User Defined Parameters Grid Row
    [Tags]    REGRESSION
    Verify Select User Defined Parameters Grid First Row Checkbox

Validate Click Copy Parameter Button
    [Tags]    REGRESSION
    Verify Click Copy Parameter Button

Validate Check New Start And End Date Radio Button For Price Policy
    [Tags]    REGRESSION
    Verify Check New Start And End Date Radio Button

Validate Set New Start Date For Price Policy
    [Tags]    REGRESSION
    Verify Set New Start Date       ${START DATE FOR COPY UDP}

Validate Set New End Date For Price Policy
    [Tags]    REGRESSION
    Verify Set New End Date

Validate Move Available Policies To Destination
    [Tags]    REGRESSION
    Verify Move Available Policies To Destination

Validate Click Next Button For Price Policy
    [Tags]    REGRESSION
    Verify Click Next Button

Validate Click Second Page Next Button
    [Tags]    REGRESSION
    Verify Click Second Page Next Button

Validate Click Copy Cost Formulas Save Button For Price Policy
    [Tags]    REGRESSION
    Verify Click Copy Cost Formulas Save Button

Validate Verify The Price Policy UDP Grid First Row Checkbox Is Checked
    [Tags]    REGRESSION
    Verify The Price Policy UDP Grid First Row Checkbox Is Checked