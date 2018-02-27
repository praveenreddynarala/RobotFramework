*** Settings ***
Documentation     [TAENOSIS-687] A Test Suite With Set Of Tests To Verify Reference Price List Generation For VOICE Reference Price List

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot
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

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
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

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Get Created Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    set suite variable      ${ROUTE CLASS}

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
    Verify Set Cost Policy Call Type        ${CALL TYPE}

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create Price Policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Click Generate Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Button

Validate Get Completed Status Green Button Jobs Count For Generate Reference Prices
    [Tags]    REGRESSION
    Verify Get Completed Status Green Button Jobs Count For Reference Price

Validate Select Reference Price Policies
    [Tags]    REGRESSION
    Verify Select Reference Price Policies

Validate Select Available Destinations
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    @{DESTINATIONS} =       create list       ${DESTINATION}
    Verify Select Available Destinations        @{DESTINATIONS}

Validate Click Generate Reference Prices Submit Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Submit Button

Validate Close Price Window
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Go To IXControl Screen With Specific Url
    [Tags]    REGRESSION
    Go To IXControl Screen With Specific Url

Validate Click Trade Submenu
    [Tags]    REGRESSION
    Verify Click Trade Submenu

Validate Set Registry Item
    [Tags]    REGRESSION
    Verify Set Registry Item        Reference Price List Generate

Validate Click Go Button
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click First Compare Reference Price List Generate Info Button
    [Tags]    REGRESSION
    Verify Click First Registry Item Info Button

Valivate Compare Reference Price List Generate Status
    [Tags]    REGRESSION
    Verify Compare Unp Status

Validate Close IXControl Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}

Validate Navigate to Price module After Closing IxControl
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Select Price Policies Tab After Closing IxControl
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Generate Reference Prices Button After Closing IxControl
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Button

Validate Compare Completed Status Green Buttons Jobs Count For Generate Reference Prices
    [Tags]    REGRESSION
    Verify Compare Completed Status Green Buttons Jobs Count For Reference Price