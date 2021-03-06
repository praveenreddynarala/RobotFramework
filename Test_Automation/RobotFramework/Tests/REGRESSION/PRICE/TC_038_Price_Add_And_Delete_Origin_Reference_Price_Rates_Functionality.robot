*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Price Add And Delete Origin Reference Price Rates Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SOURCE NAME}      ${EMPTY}

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
    Verify Set Destination    ${TEST DATA PREFIX}

Validate Set Destination Abbreviation
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Set Destination Abbreviation

Validate Set Destination Type
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Set Destination Type    SMS

Validate Set Call Char
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Set Call Char    SMS

Validate Set Country
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Set Country    ${DESTINATION COUNTRY}

Validate Set Number Plan
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Set Number Plan    ${DESTINATION NUMBER PLAN}

Validate Set Destination Begin Date
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Set Destination Begin Date

Validate Set Destination End Date
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Set Destination End Date

Validate Click Destination Save Button
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Click Destination Save Button

Validate Close IxConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Origin Reference Price List Link
    [Tags]    REGRESSION
     Verify Click Origin Reference Price List Link

Validate Get Source Name
    [Tags]    REGRESSION
    ${SOURCE NAME} =        Verify Get Source Name
    set suite variable      ${SOURCE NAME}

Validate Click Add New Origin Rpl Button
    [Tags]    REGRESSION
    Verify Click Add New Origin Rpl Button

Valiadte Set Origin Reference Price List
    [Tags]    REGRESSION
    Verify Set Origin Reference Price List       ${SOURCE NAME}

Validate Set Add New Origin Rpl Destination
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    Verify Set Add New Origin Rpl Destination       ${DESTINATION}

Validate Set Add New Origin Rpl Origin Set
    [Tags]    REGRESSION
    ${ORIGIN SET} =    Verify Get Origin Set Name
    Verify Set Add New Origin Rpl Origin Set       ${ORIGIN SET}

Validate Set Add New Origin Rpl Rating Method
    [Tags]    REGRESSION
    ${RATING METHOD} =    Verify Get Rating Method
    Verify Set Add New Origin Rpl Rating Method       ${RATING METHOD}

Validate Click Add New Origin Rpl Search Button
    [Tags]    REGRESSION
    Verify Click Add New Origin Rpl Search Button

Validate Set Add New Origin Rpl Rate Values
    [Tags]    REGRESSION
    Verify Set Add New Origin Rpl Rate Values

Validate Click Origin Rpl Save Button
    [Tags]    REGRESSION
    Verify Click Origin Rpl Save Button

Validate Select Origin Reference Price List Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Origin Reference Price List Grid Row Checkbox

Validate Click Origin Rpl Delete Button
    [Tags]    REGRESSION
    Verify Click Origin Rpl Delete Button