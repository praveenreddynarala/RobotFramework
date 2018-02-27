*** Settings ***
Documentation     [TAENOSIS-856] A Test Suite With Set Of Tests To Verify Search And Edit Functions In IXTrade Price RPL Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED PRICE POLICY}     ${EMPTY}

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
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Price Policy Status
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${PRICE POLICY ACTIVE STATUS}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        ISDN

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      Premium

Validate Click Create Price Policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    ${CREATED PRICE POLICY} =       Verify Get Created Cost Policy Name
    log         ${CREATED PRICE POLICY}
    set suite variable          ${CREATED PRICE POLICY}

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
    Verify Set Destination of Formula Pop Up        India

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

Validate Navigate to Price Policies Tab After Creating Formula
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

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
    price_page_resource.Verify Close Current Tab        ${REFERANCE PRICES TAB NAME}

Validate Click Generate Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Button

Validate Select Available Destinations
    [Tags]    REGRESSION
    @{DESTINATIONS} =       create list       India
    Verify Select Available Destinations        @{DESTINATIONS}

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

Validate Close Price Module
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Reference Price List management Submenu
    [Tags]    REGRESSION
    Verify Click Reference Price List management Submenu

Validate Set Reference Price List For Search
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Set Reference Price List For Search      ${CREATED PRICE POLICY}

Validate Click Customer Pricing Exception Management Search Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Search Button

Validate Compare Reference Price List Column Value Of RPLM Left Grid
    [Tags]    REGRESSION
    Compare Specifie Column First Row Value Of RPLM Left Grid     Reference Price List        ${CREATED PRICE POLICY}

Validate Click RPLM Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Click RPLM Grid First Row Checkbox

Validate Click Bulk Edit Button
    [Tags]    REGRESSIOn
    ixtrade_page_resource.Verify Click Bulk Edit Button

Validate Set Status For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Status For Bulk Edit         Requested

Validate Set End Date For Bulk Edit
    [Tags]    REGRESSION
    Verify Set End Date For Bulk Edit

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSIOn
    ixtrade_page_resource.Verify Click Bulk Edit Submit Button

Validate Compare End Date Column Value Of RPLM Right Grid
    [Tags]    REGRESSION
    Compare Specifie Column First Row Value Of RPLM Right Grid        End Date

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Click Exit Button