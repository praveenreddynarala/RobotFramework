*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Reference Price Generation for SMS

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${DESTINATION}         ${EMPTY}

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
    Verify Set Scope    General

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    2

Validate Click Save Changes Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Vlidate Click Create New Price Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Price Policy Name
    [Tags]    REGRESSION
    Verify Set Cost Policy Name    ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Price Policy Status
    [Tags]    REGRESSION
    Verify Set Cost Policy Status    ${PRICE POLICY ACTIVE STATUS}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type    SMS

Validate Set Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    Verify Set Cost Policy Route Class    ${ROUTE CLASS}

Validate Click Create Price Policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Price Policy Grid With Created New Price Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid    ${PRICE POLICY COLUMN NAME}

Validate Select Price Policies Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Price Policies Grid Row Checkbox

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Get Available Reference Prices Count
    [Tags]    REGRESSION
    Verify Get Available Reference Prices Count

Validate Close Current Tab
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab    ${REFERANCE PRICES TAB NAME}

Validate Click Generate Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Button

Validate Set Generation Type
    [Tags]    REGRESSION
    Verify Set Generation Type      SMS

Validate Select Available Destinations
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    @{DESTINATIONS} =    create list    ${DESTINATION}
    Verify Select Available Destinations    @{DESTINATIONS}

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
    [Tags]    REGRESSION
    Verify Compare Price Reference Prices Count After Create    0

