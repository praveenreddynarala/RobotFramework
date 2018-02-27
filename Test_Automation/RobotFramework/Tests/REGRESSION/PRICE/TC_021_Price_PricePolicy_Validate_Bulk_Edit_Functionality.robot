*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Price Policy Bulk Edit Functionality

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
    Verify Set Number Plan      Inbound Ref.

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

Validate Get Created Destination
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    set suite variable      ${DESTINATION}

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

Validate Get Created Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    set suite variable      ${ROUTE CLASS}

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
    Verify Set Destination of Formula Pop Up        ${DESTINATION}

Validate Set Rate Type For Destination Formula
    [Tags]    REGRESSION
    Verify Set Rate Type            ${RATE TYPE FOR DESTINATION PRICE FORMULA FOR BULK EDIT}

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

Validate Navigate to Price Policies Tab Again
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

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
    ${DESTINATION} =    Verify Get Created Destination
    @{DESTINATIONS} =       create list       ${DESTINATION}
    Verify Select Available Destinations        @{DESTINATIONS}

Validate Click Generate Reference Prices Submit Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Submit Button

Validate Select Reference Price Policies
    [Tags]  REGRESSION
    Verify Select Reference Price Policies

Validate Select Available Destinations Again
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    @{DESTINATIONS} =       create list       ${DESTINATION}
    Verify Select Available Destinations        @{DESTINATIONS}

Validate Click Generate Reference Prices Submit Button Again
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Submit Button

Validate Navigate to Price Policies Tab Again For Compare
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Reference Prices Button Again
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Compare Price Reference Prices Count After Create
    [Tags]   REGRESSION
    Verify Compare Price Reference Prices Count After Create        1

Validate Select Reference Prices Grid Multiple Rows
    [Tags]    REGRESSION
    Verify Select Reference Prices Grid Multiple Rows

Validate Click Reference Prices Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Bulk Edit Button

Validate Set Note For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Note For Bulk Edit

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Save Changes Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Save Changes Button