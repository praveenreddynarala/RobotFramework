*** Settings ***
Documentation     A Test Suite With Set Of Tests For Price Verify That The Compound Reference Price List Works Correctly The Various Possible Actions Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}     ${EMPTY}
@{COLUMN NAME LIST}     ${EMPTY}
${SOURCE NAME}          ${EMPTY}
${REFERENCE PRICE LIST}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Compound Reference Price List Source Name
    [Tags]    REGRESSION
    ${SOURCE NAME} =        Verify Get Source Name
    set suite variable      ${SOURCE NAME}

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Type For Search
    [Tags]    REGRESSION
    Verify Set Source Type For Search       ${REFERENCE PRICE LIST SOURCE TYPE}

Validate Click Sources Search Button
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Click Add New Source Button
    [Tags]    REGRESSION
    Verify Click Add New Source Button

Validate Set Source
    [Tags]    REGRESSION
    Verify Set Source       ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Abbreviation     ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Status       ${REFERENCE PRICE LIST SOURCE STATUS}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Call Type        ${CALL TYPE FOR ADD REFERENCE PRICE LIST}

Validate Set Reference Pricing Policy
    [Tags]    REGRESSION
    ${PRICE POLICY NAME} =     Verify Get Price Policy Name
    Verify Set Reference Pricing Policy        ${PRICE POLICY NAME}

Validate Set Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =     Verify Get Route Class
    business_admin_page_resource.Verify Set Route Class      ${ROUTE CLASS}

Validate Set Note
    [Tags]    REGRESSION
    Verify Set Note     ${NOTE FOR ADD REFERENCE PRICE LIST}

Validate Click Create New Customer Save Button
    [Tags]    REGRESSION
    Verify Click Create New Customer Save Button

Validate Close Business Admin Window
    [Tags]    REGRESSION
    Verify Close Business Admin Window

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Get Reference Price List Name
    [Tags]    REGRESSION
    ${REFERENCE PRICE LIST} =        Verify Get Source Name
    log     ${REFERENCE PRICE LIST}
    set suite variable      ${REFERENCE PRICE LIST}

Validate Click Compund Reference Price List Link
    [Tags]    REGRESSION
    Verify Click Compound Reference Price List Link

Validate Set Compound Reference Price List
    [Tags]    REGRESSION
    Verify Set Compound Reference Price List     ${SOURCE NAME}

Validate Click Search Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Set Compound Reference Price List Grid Settings
    [Tags]    REGRESSION
    Verify Set Compound Reference Price List Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Specific Column From Compound Reference Price List Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Compound Reference Price List Grid        ${DESTINATIONS COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Compound Reference Price List Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Compound Reference Price List Grid Column In Descending Order       ${DESTINATIONS COLUMN NAME}

Validate Get All Rows of Destinations Column From Compound Reference Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Compound Reference Price List Grid    ${DESTINATIONS COLUMN NAME}

Validate Descending Sorted Data For Compound Reference Price List Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Compound Reference Price List Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Compound Reference Price List Grid Column In Ascending Order      ${DESTINATIONS COLUMN NAME}

Validate Get All Rows of Destinations Column From Compound Reference Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Compound Reference Price List Grid     ${DESTINATIONS COLUMN NAME}

Validate Ascending Sorted Data For Compound Reference Price List Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Compound Reference Price List Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Compound Reference Price List Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Compound Reference Price List Grid Column
    [Tags]    REGRESSION
    Verify Drag Compound Reference Price List Grid Column     ${DESTINATIONS COLUMN NAME}       ${BEGIN DATE COLUMN NAME}

Validate Get Compound Reference Price List Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Compound Reference Price List Grid Column Names By Order

Validate Compound Reference Price List Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${DESTINATIONS COLUMN NAME}       ${BEGIN DATE COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Compound Reference Price List Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Compound Reference Price List Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Compound Reference Price List Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Compound Reference Price List Grid Column Names By Order

Validate Compound Reference Price List Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${BEGIN DATE COLUMN NAME}       ${BEGIN DATE COLUMN NAME}       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Compound Reference Price List Grid Export To Excel Button

Validate Select Multiple Rows From Compound Reference Price List Grid
    [Tags]    REGRESSION
    Verify Select Multiple Rows From Compound Reference Price List Grid

Validate Click Compound Reference Price List Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Compound Reference Price List Bulk Edit Button

Validate Set Reference Price List
    [Tags]    REGRESSION
    price_page_resource.Verify Set Reference Price List         ${REFERENCE PRICE LIST}

Validate Set Compound Rpl Begin Date
    [Tags]    REGRESSION
    Verify Set Compound Rpl Begin Date

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Save Changes Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Save Changes Button

