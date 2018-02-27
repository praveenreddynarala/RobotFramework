*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Add Network Destination Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Network Codes Submenu
    [Tags]    REGRESSION
    Verify Click Network Codes Submenu

Validate Set Network Codes Grid Settings
    [Tags]    REGRESSION
    Verify Set Network Codes Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Vendor Column From Network Codes Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Network Codes Grid        Network Destination
    set suite variable      @{ALL ROW DATA}

Validate Sort Network Codes Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Network Codes Grid Column In Ascending Order      Network Destination

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Network Codes Grid     Network Destination

Validate Ascending Sorted Data For Network Codes Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Network Codes Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Network Codes Grid Column In Descending Order      Network Destination

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Network Codes Grid     Network Destination

Validate Descending Sorted Data For Network Codes Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Network Codes Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Network Codes Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Network Codes Grid Column
    [Tags]    REGRESSION
    Verify Drag Network Codes Grid Column     Network Destination       Call Char

Validate Get Network Codes Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Network Codes Grid Column Names By Order

Validate Network Codes Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Network Destination       Call Char       @{COLUMN NAME LIST}

Validate Set Network Codes Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Network Codes Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Network Codes Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Network Codes Grid Column Names By Order

Validate Network Codes Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Network Destination       Network Destination       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Network Codes Grid Export To Excel Button

Validate Get Network Destinations Grid First Row Details
    [Tags]    REGRESSION
    Verify Get Network Destinations Grid First Row Details

Validate Click Add Network Destination Button
    [Tags]    REGRESSION
    Verify Click Add Network Destination Button

Validate Set Network Destination
    [Tags]    REGRESSION
    Verify Set Network Destination              ${TEST DATA PREFIX}

Validate Set Destination Abbreviation
    [Tags]    REGRESSION
    Verify Set Destination Abbreviation         ${DESTINATION ABBREVIATION}

Validate Set Network Destination Country
    [Tags]    REGRESSION
    Verify Set Network Destination Country      ${NETWORK DESTINATION COUNTRY}

Validate Set Call Char
    [Tags]    REGRESSION
    Verify Set Call Char        ${CALL CHAR}

Validate Set Network Destination Begin Date
    [Tags]    REGRESSION
    Verify Set Network Destination Begin Date

Validate Set Network Destination End Date
    [Tags]    REGRESSION
    Verify Set Network Destination End Date

Validate Set Internal Code
    [Tags]    REGRESSION
    Verify Set Internal Code        ${INTERNAL CODE}

Validate Set External Code
    [Tags]    REGRESSION
    Verify Set External Code        ${EXTERNAL CODE}

Validate Click Add Network Destination Save Button
    [Tags]    REGRESSION
    Verify Click Add Network Destination Save Button

Validate Set Country For Search
    [Tags]    REGRESSION
    Verify Set Country For Search       ${NETWORK DESTINATION COUNTRY}

Validate Set Created Network Destination For Search
    [Tags]    REGRESSION
    Verify Set Created Network Destination For Search

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Network Destination Begin Date For Search

Validate Set End Date For Search
    [Tags]    REGRESSION
    Verify Set Network Destination End Date For Search

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Get Network Destinations Grid First Row Details After Creation
    [Tags]    REGRESSION
    Verify Get Network Destinations Grid First Row Details

Validate Created Network Destinations Details
    [Tags]    REGRESSION
    Verify Created Network Destinations Details         ${DESTINATION ABBREVIATION}     ${NETWORK DESTINATION COUNTRY}      ${CALL CHAR}    ${INTERNAL CODE}    ${EXTERNAL CODE}

Validate Set Value In Network Destinations Grid Destination Abbreviation Column
    [Tags]    REGRESSION
    Verify Set Value In Network Destinations Grid First Row Column          ${DESTINATION ABBREVIATION COLUMN NAME}     ${EDIT DESTINATION ABBREVIATION}

Validate Click Save Changes Button
    [Tags]    REGRESSION
    Verify Click Save Changes Button
