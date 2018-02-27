*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate All Grid Related Actions Of Price Policies Overrides Grid Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}    ${EMPTY}
@{COLUMN NAME LIST}    ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Price Overrides Button
    [Tags]    REGRESSION
    Verify Click Price Overrides Button

Validate Set Price Overrides Grid Settings
    [Tags]    REGRESSION
    Verify Set Price Overrides Grid Settings    ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Specific Column From Price Overrides Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Price Overrides Grid     ${PRICE POLICY COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Price Overrides Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Price Overrides Grid Column In Descending Order    ${PRICE POLICY COLUMN NAME}

Validate Get All Rows of Destination Column From Price Overrides For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Price Overrides Grid    ${PRICE POLICY COLUMN NAME}

Validate Descending Sorted Data For Price Overrides Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Price Overrides Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Price Overrides Grid Column In Ascending Order    ${PRICE POLICY COLUMN NAME}

Validate Get All Rows of Destination Column From Price Overrides Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Price Overrides Grid    ${PRICE POLICY COLUMN NAME}

Validate Ascending Sorted Data For Price Overrides Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Price Overrides Grid Column Names By Order
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =    Verify Get Price Overrides Grid Column Names By Order
    set suite variable    @{COLUMN NAME LIST}

Validate Drag Price Overrides Grid Column
    [Tags]    REGRESSION
    Verify Drag Price Overrides Grid Column    ${PRICE POLICY COLUMN NAME}    ${BEGIN DATE COLUMN NAME}

Validate Get Price Overrides Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Price Overrides Grid Column Names By Order

Validate Price Overrides Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${PRICE POLICY COLUMN NAME}    ${BEGIN DATE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Set Price Overrides Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Price Overrides Grid Settings    ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Price Overrides Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Price Overrides Grid Column Names By Order

Validate Price Overrides Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${BEGIN DATE COLUMN NAME}    ${BEGIN DATE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Price Overides Grid Export To Excel Button