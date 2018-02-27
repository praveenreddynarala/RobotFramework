*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate All Grid Related Actions Of Price Policy Formulas Grid Functionality

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

Validate Click Price Policy Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Price Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${VIEW PRICE POLICY INLINE ITEM}

Validate Select Price Policy Formulas Tab
    [Tags]    REGRESSION
    Select Price Policy Formulas Tab

Validate Set Price Policy Formulas Grid Settings
    [Tags]    REGRESSION
    Verify Set Cost Policy Formulas Grid Settings    ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Formula Type Column From Price Policy Formulas Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =    Verify Get All Rows of Specific Column From Cost Policy Formulas Grid    ${FORMULA TYPE COLUMN NAME}
    set suite variable    @{ALL ROW DATA}

Validate Sort Price Policy Formulas Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Cost Policy Formulas Grid Column In Descending Order    ${FORMULA TYPE COLUMN NAME}

Validate Get All Rows of Formula Type Column From Price Policy Formulas Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Cost Policy Formulas Grid    ${FORMULA TYPE COLUMN NAME}

Validate Descending Sorted Data For Price Policies Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Price Policy Formulas Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Cost Policy Formulas Grid Column In Ascending Order    ${FORMULA TYPE COLUMN NAME}

Validate Get All Rows of Formula Type Column From Price Policy Formulas Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Cost Policy Formulas Grid    ${FORMULA TYPE COLUMN NAME}

Validate Ascending Sorted Data For Price Policy Formulas Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Price Policy Formulas Grid Column Names By Order
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =    Verify Get Cost Policy Formulas Grid Column Names By Order
    set suite variable    @{COLUMN NAME LIST}

Validate Drag Price Policy Formulas Grid Column
    [Tags]    REGRESSION
    Verify Drag Cost policy Formulas Grid Column    ${FORMULA TYPE COLUMN NAME}    ${RATE TYPE COLUMN NAME}

Validate Get Price Policy Formulas Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Cost Policy Formulas Grid Column Names By Order

Validate Price Policy Formulas Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${FORMULA TYPE COLUMN NAME}    ${RATE TYPE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Set Price Policy Formulas Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Cost Policy Formulas Grid Settings    ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Price Policies Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Cost Policy Formulas Grid Column Names By Order

Validate Price Policy Formulas Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${RATE TYPE COLUMN NAME}    ${RATE TYPE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Cost Policy Formulas Grid Export To Excel Button