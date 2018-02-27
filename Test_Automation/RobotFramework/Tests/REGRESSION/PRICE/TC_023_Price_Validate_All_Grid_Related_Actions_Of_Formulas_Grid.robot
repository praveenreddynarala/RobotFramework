*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate All Grid Related Actions Of Formulas Grid Functionality

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

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Click On Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Set Cost Policy Formulas Grid Settings
    [Tags]    REGRESSION
    Verify Set Cost Policy Formulas Grid Settings    ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Cost Policy Column From Cost Policy Formulas Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =    Verify Get All Rows of Specific Column From Cost Policy Formulas Grid    ${COST POLICY COLUMN NAME}
    set suite variable    @{ALL ROW DATA}

Validate Sort Cost Policy Formulas Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Cost Policy Formulas Grid Column In Descending Order    ${COST POLICY COLUMN NAME}

Validate Get All Rows of Cost Policy Column From Cost Policy Formulas Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Cost Policy Formulas Grid    ${COST POLICY COLUMN NAME}

Validate Descending Sorted Data For Cost Policies Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Cost Policy Formulas Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Cost Policy Formulas Grid Column In Ascending Order    ${COST POLICY COLUMN NAME}

Validate Get All Rows of Cost Policy Column From Cost Policy Formulas Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Cost Policy Formulas Grid    ${COST POLICY COLUMN NAME}

Validate Ascending Sorted Data For Cost Policy Formulas Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Cost Policy Formulas Grid Column Names By Order
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =    Verify Get Cost Policy Formulas Grid Column Names By Order
    set suite variable    @{COLUMN NAME LIST}

Validate Drag Cost Policy Formulas Grid Column
    [Tags]    REGRESSION
    Verify Drag Cost policy Formulas Grid Column    ${COST POLICY COLUMN NAME}    ${RATE TYPE COLUMN NAME}

Validate Get Cost Policy Formulas Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Cost Policy Formulas Grid Column Names By Order

Validate Cost Policy Formulas Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${COST POLICY COLUMN NAME}    ${RATE TYPE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Set Cost Policy Formulas Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Cost Policy Formulas Grid Settings    ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Cost Policies Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Cost Policy Formulas Grid Column Names By Order

Validate Cost Policy Formulas Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${RATE TYPE COLUMN NAME}    ${RATE TYPE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Cost Policy Formulas Grid Export To Excel Button

Validate Close Cost Policy Formulas Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${COST POLICY FORMULAS TAB NAME}

Validate Click Cost Policy Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid First Row Inline Action Button

Validate Click Cost Policy Grid Inline Item
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Item       ${FORMULAS INLINE ITEM}

Validate Set Cost Policy Formulas Grid Settings For Inline Action Item
    [Tags]    REGRESSION
    Verify Set Cost Policy Formulas Grid Settings    ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Formula Type Column From Cost Policy Formulas Grid For Inline Action Item
    [Tags]    REGRESSION
    @{ALL ROW DATA} =    Verify Get All Rows of Specific Column From Cost Policy Formulas Grid    ${FORMULA TYPE COLUMN NAME}
    set suite variable    @{ALL ROW DATA}

Validate Sort Cost Policy Formulas Grid Column In Descending Order For Inline Action Item
    [Tags]    REGRESSION
    Verify Sort Cost Policy Formulas Grid Column In Descending Order    ${FORMULA TYPE COLUMN NAME}

Validate Get All Rows of Formula Type Column From Cost Policy Formulas Grid For Descending Sort For Inline Action Item
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Cost Policy Formulas Grid    ${FORMULA TYPE COLUMN NAME}

Validate Descending Sorted Data For Cost Policies Grid Column For Inline Action Item
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Cost Policy Formulas Grid Column In Ascending Order For Inline Action Item
    [Tags]    REGRESSION
    Verify Sort Cost Policy Formulas Grid Column In Ascending Order    ${FORMULA TYPE COLUMN NAME}

Validate Get All Rows of Formula Type Column From Cost Policy Formulas Grid For Ascending Sort For Inline Action Item
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Cost Policy Formulas Grid    ${FORMULA TYPE COLUMN NAME}

Validate Ascending Sorted Data For Cost Policy Formulas Grid Column For Inline Action Item
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Cost Policy Formulas Grid Column Names By Order For Inline Action Item
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =    Verify Get Cost Policy Formulas Grid Column Names By Order
    set suite variable    @{COLUMN NAME LIST}

Validate Drag Cost Policy Formulas Grid Column For Inline Action Item
    [Tags]    REGRESSION
    Verify Drag Cost policy Formulas Grid Column    ${FORMULA TYPE COLUMN NAME}    ${RATE TYPE COLUMN NAME}

Validate Get Cost Policy Formulas Grid Column Name List After Altering For Inline Action Item
    [Tags]    REGRESSION
    Verify Get Cost Policy Formulas Grid Column Names By Order

Validate Cost Policy Formulas Grid Column Position After Altering For Inline Action Item
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${FORMULA TYPE COLUMN NAME}    ${RATE TYPE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Set Cost Policy Formulas Reset Column Order Grid Settings For Inline Action Item
    [Tags]    REGRESSION
    Verify Set Cost Policy Formulas Grid Settings    ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Cost Policies Grid Column Name List After Resetting For Inline Action Item
    [Tags]    REGRESSION
    Verify Get Cost Policy Formulas Grid Column Names By Order

Validate Cost Policy Formulas Grid Column Position After Resetting For Inline Action Item
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${RATE TYPE COLUMN NAME}    ${RATE TYPE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Click Export To Excel Button For Inline Action Item
    [Tags]    REGRESSION
    Verify Click Cost Policy Formulas Grid Export To Excel Button
