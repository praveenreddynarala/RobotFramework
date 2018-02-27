*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Formula Wizard Loads Tabs Correctly

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
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
    Verify Set Cost Policy Call Type    Analog

Validate Set Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    Verify Set Cost Policy Route Class    ${ROUTE CLASS}

Validate Click Create Price Policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Price Policy Grid With Created Price Policy
    [Tags]    REGRESSION
    Verify Filter Price Policy Grid With Created New Price Policy    ${PRICE POLICY COLUMN NAME}

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

Validate Set Destination of Formula Pop Up
    [Tags]    REGRESSION
    ${CREATED DESTINATION} =        verify get created destination
    Verify Set Destination of Formula Pop Up        ${CREATED DESTINATION}

Validate Set Begin Date For Destination Formula
    [Tags]    REGRESSION
    Verify Set Begin Date    ${BEGIN DATE FOR DESTINATION}

Validate Set Formula Target Value
    [Tags]    REGRESSION
    Verify Set Formula Target    5

Validate Set Formula Minimum Value
    [Tags]    REGRESSION
    Verify Set Formula Minimum      Cost*USD

Validate Set Cost Formula For Destination Formula
    [Tags]    REGRESSION
    Verify Set Formula Cost    0

Validate Click Calculate Button
    [Tags]    REGRESSION
    Verify Click Calculate Button

Validate Reference Prices Cost And Routing Section Is Loaded
    [Tags]    REGRESSION
    Verify Reference Prices Cost And Routing Section Is Loaded

Validate Pricing Policies Reference Prices Grid Columns Header
    [Tags]    REGRESSION
    @{COLUMNS HEADER} =     create list     Reference Price List    Rate Type   Target Price    Minimum Price   Cost    Begin Date
    Verify Pricing Policies Reference Prices Grid Header     @{COLUMNS HEADER}

Validate Select Cost Elements Grid
    [Tags]    REGRESSION
    Verify Set Display Grid     Cost Elements

Validate Route Class Kendo Dropdown Is Present
    [Tags]    REGRESSION
    Verify Route Class Kendo Dropdown Is Present

Validate Cost Elements Grid Columns Header
    [Tags]    REGRESSION
    @{COLUMNS HEADER} =     create list     Info   Cost Element   Rate Type    Value    Delta (Value - Cost)
    Verify Cost Elements Grid Header     @{COLUMNS HEADER}

Validate Select Route Guide Links Grid
    [Tags]    REGRESSION
    Verify Set Display Grid     Route Guide Links

Validate Routing Guide Links Grid Columns Header
    [Tags]    REGRESSION
    @{COLUMNS HEADER} =     create list     Routing Product
    Verify Routing Guide Links Grid Header     @{COLUMNS HEADER}

Validate Click Create Formula
    [Tags]    REGRESSION
    Verify Click Create Button

