*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate All Grid Related Actions Of User Defined Parameter Grid Functionality

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

Validate Click User Defined Parameters Button
    [Tags]    REGRESSION
    Verify Click User Defined Parameters Button

Validate Set Cost Policies User Defined Parameters Grid Settings
    [Tags]    REGRESSION
    Verify Set Cost Policies User Defined Parameters Grid Settings    ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Cost Policy Column From Cost Policies User Defined Parameters Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =    Verify Get All Rows of Specific Column From Cost Policies User Defined Parameters Grid    ${COST POLICY COLUMN NAME}
    set suite variable    @{ALL ROW DATA}

Validate Sort Cost Policies User Defined Parameters Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Cost Policies User Defined Parameters Grid Column In Descending Order    ${COST POLICY COLUMN NAME}

Validate Get All Rows of Cost Policy Column From Cost Policies User Defined Parameters For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Cost Policies User Defined Parameters Grid    ${COST POLICY COLUMN NAME}

Validate Descending Sorted Data For Cost Policies User Defined Parameters Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Cost Policies User Defined Parameters Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Cost Policies User Defined Parameters Grid Column In Ascending Order    ${COST POLICY COLUMN NAME}

Validate Get All Rows of Cost Policy Column From Cost Policies User Defined Parameters Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Cost Policies User Defined Parameters Grid    ${COST POLICY COLUMN NAME}

Validate Ascending Sorted Data For Cost Policies User Defined Parameters Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Cost Policies User Defined Grid Column Names By Order
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =    Verify Get Cost Policies User Defined Parameters Grid Column Names By Order
    set suite variable    @{COLUMN NAME LIST}

Validate Drag Cost policies User Defined Parameters Grid Column
    [Tags]    REGRESSION
    Verify Drag Cost policies User Defined Parameters Grid Column    ${COST POLICY COLUMN NAME}    ${VALUE COLUMN NAME}

Validate Get Cost policies User Defined Parameters Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Cost Policies User Defined Parameters Grid Column Names By Order

Validate Cost policies User Defined Parameters Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${COST POLICY COLUMN NAME}    ${VALUE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Set Cost policies User Defined Parameters Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Cost Policies User Defined Parameters Grid Settings    ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Cost policies User Defined Parameters Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Cost Policies User Defined Parameters Grid Column Names By Order

Validate Cost policies User Defined Parameters Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${VALUE COLUMN NAME}    ${VALUE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Cost policies User Defined Parameters Grid Export To Excel Button

Validate Close Cost Policy Formulas Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${COST POLICY FORMULAS TAB NAME}

Validate Click Cost Policy Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid First Row Inline Action Button

Validate Click Cost Policy Grid Inline Item
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Item       ${USER DEFINED PARAMETERS INLINE ITEM}

Validate Set Cost Policies User Defined Parameters Grid Settings For Inline Action Item
    [Tags]    REGRESSION
    Verify Set Cost Policies User Defined Parameters Grid Settings    ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Parameter Column From Cost Policies User Defined Parameters Grid For Inline Action Item
    [Tags]    REGRESSION
    @{ALL ROW DATA} =    Verify Get All Rows of Specific Column From Cost Policies User Defined Parameters Grid    ${PARAMETER COLUMN NAME}
    set suite variable    @{ALL ROW DATA}

Validate Sort Cost Policies User Defined Parameters Grid Column In Descending Order For Inline Action Item
    [Tags]    REGRESSION
    Verify Sort Cost Policies User Defined Parameters Grid Column In Descending Order    ${PARAMETER COLUMN NAME}

Validate Get All Rows of Parameter Column From Cost Policies User Defined Parameters For Descending Sort For Inline Action Item
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Cost Policies User Defined Parameters Grid    ${PARAMETER COLUMN NAME}

Validate Descending Sorted Data For Cost Policies User Defined Parameters Grid Column For Inline Action Item
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Cost Policies User Defined Parameters Grid Column In Ascending Order For Inline Action Item
    [Tags]    REGRESSION
    Verify Sort Cost Policies User Defined Parameters Grid Column In Ascending Order    ${PARAMETER COLUMN NAME}

Validate Get All Rows of Parameter Column From Cost Policies User Defined Parameters Grid For Ascending Sort For Inline Action Item
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Cost Policies User Defined Parameters Grid    ${PARAMETER COLUMN NAME}

Validate Ascending Sorted Data For Cost Policies User Defined Parameters Grid Column For Inline Action Item
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Cost Policies User Defined Grid Column Names By Order For Inline Action Item
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =    Verify Get Cost Policies User Defined Parameters Grid Column Names By Order
    set suite variable    @{COLUMN NAME LIST}

Validate Drag Cost policies User Defined Parameters Grid Column For Inline Action Item
    [Tags]    REGRESSION
    Verify Drag Cost policies User Defined Parameters Grid Column    ${PARAMETER COLUMN NAME}    ${VALUE COLUMN NAME}

Validate Get Cost policies User Defined Parameters Grid Column Name List After Altering For Inline Action Item
    [Tags]    REGRESSION
    Verify Get Cost Policies User Defined Parameters Grid Column Names By Order

Validate Cost policies User Defined Parameters Grid Column Position After Altering For Inline Action Item
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${PARAMETER COLUMN NAME}    ${VALUE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Set Cost policies User Defined Parameters Reset Column Order Grid Settings For Inline Action Item
    [Tags]    REGRESSION
    Verify Set Cost Policies User Defined Parameters Grid Settings    ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Cost policies User Defined Parameters Grid Column Name List After Resetting For Inline Action Item
    [Tags]    REGRESSION
    Verify Get Cost Policies User Defined Parameters Grid Column Names By Order

Validate Cost policies User Defined Parameters Grid Column Position After Resetting For Inline Action Item
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${VALUE COLUMN NAME}    ${VALUE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Click Export To Excel Button For Inline Action Item
    [Tags]    REGRESSION
    Verify Click Cost policies User Defined Parameters Grid Export To Excel Button
