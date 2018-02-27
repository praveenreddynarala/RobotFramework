*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation To View Price Policy Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}         ${EMPTY}
@{COLUMN NAME LIST}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Get Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Cost Policy Grid With Created New Cost Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${COST POLICY COLUMN NAME}

Validate Click Cost Policy Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid First Row Inline Action Button

Validate Click Cost Policy Grid Inline Item
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Item       ${VIEW COST POLICY INLINE ITEM}

Validate View Cost Policy Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify View Cost Policy Page Is Loaded Properly

Validate Close View Cost Policy Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${VIEW COST POLICY TAB NAME}

Validate Set Cost Policies Grid Settings
    [Tags]    REGRESSION
    Verify Set Cost Policies Grid Settings      ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Abbreviation Column From Cost Policies Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Cost Policies Grid     ${COST POLICY COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Clear Cost Policy Column Filter
    [Tags]    REGRESSION
    Verify Clear Cost Policy Column Filter      ${COST POLICY COLUMN NAME}

Validate Sort Cost Policies Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Cost Policies Grid Column In Descending Order       ${COST POLICY COLUMN NAME}

Validate Get All Rows of Cost Policy Column From Cost Policies Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Cost Policies Grid     ${COST POLICY COLUMN NAME}

Validate Descending Sorted Data For Cost Policies Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Cost Policies Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Cost Policies Grid Column In Ascending Order      ${COST POLICY COLUMN NAME}

Validate Get All Rows of Cost Policy Column From Cost Policies Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Cost Policies Grid     ${COST POLICY COLUMN NAME}

Validate Ascending Sorted Data For Cost Policies Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Cost Policies Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Cost policies Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Cost Policies Grid Column
    [Tags]    REGRESSION
    Verify Drag Cost Policies Grid Column     ${COST POLICY COLUMN NAME}       ${ROUTE CLASS COLUMN NAME}

Validate Get Cost Policies Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Cost Policies Grid Column Names By Order

Validate Cost Policies Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${COST POLICY COLUMN NAME}       ${ROUTE CLASS COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Cost Policies Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Cost Policies Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Cost Policies Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Cost Policies Grid Column Names By Order

Validate Cost Policies Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${ROUTE CLASS COLUMN NAME}        ${ROUTE CLASS COLUMN NAME}       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Cost Policies Grid Export To Excel Button