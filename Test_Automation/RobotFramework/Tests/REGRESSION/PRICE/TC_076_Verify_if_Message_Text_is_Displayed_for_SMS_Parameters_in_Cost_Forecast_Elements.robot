*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify if "message" Text is Displayed for SMS Parameters in Cost Forecast Elements

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality


*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
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

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        SMS

Validate Set Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =        Verify Get Route Class
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Cost Policy Grid With Created Cost Policy For Cost Policy Formula Screen
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${COST POLICY COLUMN NAME}

Validate Select Cost Policies Grid Row Checkbox For Cost Policy Formula Screen
    [Tags]  REGRESSION
    Verify Select Price Policies Grid Row Checkbox

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Click Formulas Page Search Button
    [Tags]    REGRESSION
    Verify Click Formulas Page Search Button

Validate Click Create Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate The Message Text Is Available In Info Column
    [Tags]    REGRESSION
    Verify The Message Text Is Available In Info Column

Validate Close Price Window
    [Tags]    REGRESSION
    Verify Close Price Window

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

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        -2

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module After Setting InboundReferenceNumberPlanID To -2
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab After Setting InboundReferenceNumberPlanID To -2
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Filter Cost Policy Grid With Created Cost Policy For Cost Policy Formula Screen After Setting InboundReferenceNumberPlanID To -2
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${COST POLICY COLUMN NAME}

Validate Select Cost Policies Grid Row Checkbox For Cost Policy Formula Screen After Setting InboundReferenceNumberPlanID To -2
    [Tags]  REGRESSION
    Verify Select Price Policies Grid Row Checkbox

Validate Click Formulas Button After Setting InboundReferenceNumberPlanID To -2
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Click Formulas Page Search Button After Setting InboundReferenceNumberPlanID To -2
    [Tags]    REGRESSION
    Verify Click Formulas Page Search Button

Validate Click Create Destination Formula After Setting InboundReferenceNumberPlanID To -2
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate The Message Text Is Available In Info Column After Setting InboundReferenceNumberPlanID To -2
    [Tags]    REGRESSION
    Verify The Message Text Is Available In Info Column

Validate Close Price Window After Setting InboundReferenceNumberPlanID To -2
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to System Admin module To Set Default Value
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set Default Value
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set Default Value
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Scope To Set Default Value
    [Tags]    REGRESSION
    Verify Set Scope        General

Validate Set Variable Name To Set Default Value
    [Tags]    REGRESSION
    Verify Set Variable Name    InboundReferenceNumberPlanID

Validate Click Search Button To Set Default Value
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set Default Value
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        -1