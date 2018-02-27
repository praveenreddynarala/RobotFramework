*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Formula Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

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

Validate Set Destination of Formula Pop Up
    [Tags]    REGRESSION
    Verify Set Destination of Formula Pop Up        India

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