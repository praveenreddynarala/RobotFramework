*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate All Grid Related Actions Of Reference Prices Grid Functionality

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
    Verify Select Inline Action Item        ${REFERANCE PRICES INLINE ITEM}

Validate Set Reference Prices Grid Settings
    [Tags]    REGRESSION
    Verify Set Reference Prices Grid Settings    ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Specific Column From Reference Prices Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Reference Prices Grid     ${SELLING DESTINATION COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Reference Prices Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Reference Prices Grid Column In Descending Order    ${SELLING DESTINATION COLUMN NAME}

Validate Get All Rows of Selling Destination Column From Reference Prices For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Reference Prices Grid    ${SELLING DESTINATION COLUMN NAME}

Validate Descending Sorted Data For Reference Prices Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Reference Prices Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Reference Prices Grid Column In Ascending Order   ${SELLING DESTINATION COLUMN NAME}

Validate Get All Rows of Selling Destination Column From Reference Prices Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Reference Prices Grid    ${SELLING DESTINATION COLUMN NAME}

Validate Ascending Sorted Data For Reference Prices Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Reference Prices Grid Column Names By Order
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =    Verify Get Reference Prices Grid Column Names By Order
    set suite variable    @{COLUMN NAME LIST}

Validate Drag Reference Prices Grid Column
    [Tags]    REGRESSION
    Verify Drag Reference Prices Grid Column    Origin    ${BEGIN DATE COLUMN NAME}

Validate Get Reference Prices Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Reference Prices Grid Column Names By Order

Validate Reference Prices Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering For Reference Prices    Origin    ${BEGIN DATE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Set Reference Prices Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Reference Prices Grid Settings   ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Reference Prices Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Reference Prices Grid Column Names By Order

Validate Reference Prices Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering For Reference Prices    ${BEGIN DATE COLUMN NAME}    ${BEGIN DATE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Grid Export To Excel Button