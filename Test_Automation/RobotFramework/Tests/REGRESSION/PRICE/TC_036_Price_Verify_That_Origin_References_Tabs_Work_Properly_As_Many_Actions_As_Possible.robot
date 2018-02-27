*** Settings ***
Documentation     A Test Suite With Set Of Tests For Price Verify That Origin References Tabs Work Properly As Many Actions As Possible Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}     ${EMPTY}
@{COLUMN NAME LIST}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Origin Reference Price List Link
    [Tags]    REGRESSION
    Verify Click Origin Reference Price List Link

Validate Click Search Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Set Origin Reference Price List Grid Settings
    [Tags]    REGRESSION
    Verify Set Origin Reference Price List Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Specific Column From Origin Reference Price List Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Origin Reference Price List Grid        ${DESTINATION COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Origin Reference Price List Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Origin Reference Price List Grid Column In Descending Order       ${DESTINATION COLUMN NAME}

Validate Get All Rows of Destination Column From Origin Reference Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Origin Reference Price List Grid    ${DESTINATION COLUMN NAME}

Validate Descending Sorted Data For Origin Reference Price List Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Origin Reference Price List Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Origin Reference Price List Grid Column In Ascending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Destination Column From Origin Reference Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Origin Reference Price List Grid     ${DESTINATION COLUMN NAME}

Validate Ascending Sorted Data For Origin Reference Price List Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Origin Reference Price List Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Origin Reference Price List Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Origin Reference Price List Grid Column
    [Tags]    REGRESSION
    Verify Drag Origin Reference Price List Grid Column     ${DESTINATION COLUMN NAME}       ${ORIGIN SET COLUMN NAME}

Validate Get Origin Reference Price List Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Origin Reference Price List Grid Column Names By Order

Validate Origin Reference Price List Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${DESTINATION COLUMN NAME}       ${ORIGIN SET COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Origin Reference Price List Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Origin Reference Price List Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Origin Reference Price List Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Origin Reference Price List Grid Column Names By Order

Validate Origin Reference Price List Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${ORIGIN SET COLUMN NAME}       ${ORIGIN SET COLUMN NAME}       @{COLUMN NAME LIST}

Validate Select Multiple Rows From Origin Reference Price List Grid
    [Tags]    REGRESSION
    Verify Select Multiple Rows From Origin Reference Price List Grid

Validate Click Origin Reference Price List Grid Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Origin Reference Price List Grid Bulk Edit Button

Validate Set Note For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Note For Bulk Edit

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Save Changes Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Save Changes Button

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Origin Reference Price List Grid Export To Excel Button