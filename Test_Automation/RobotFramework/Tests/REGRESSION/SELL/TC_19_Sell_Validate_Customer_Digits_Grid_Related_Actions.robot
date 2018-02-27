*** Settings ***
Documentation     A Test Suite With Set Of Tests For Sell Validate Customer Digits Grid Related Actions

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}
@{FILTER ITEM LIST}

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Select Customers Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Get Create Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Filter Customer Grid Column With Created Customer Before Edit
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column With Created Customer

Validate Click Customer Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Customer Grid Inline Action Button

Validate Select Inline Action Itme
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${CUSTOMER DIGITS INLINE ITEM}

Validate Get All Rows of Vendor Column From Customer Digits Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Customer Digits Grid        ${DESTINATION COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Customer Digits Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Customer Digits Grid Column In Descending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Customer Digits Grid     ${DESTINATION COLUMN NAME}

Validate Descending Sorted Data For Customer Digits Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Customer Digits Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Customer Digits Grid Column In Ascending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Customer Digits Grid     ${DESTINATION COLUMN NAME}

Validate Ascending Sorted Data For Customer Digits Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Customer Digits Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Customer Digits Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Customer Digits Grid Column
    [Tags]    REGRESSION
    Verify Drag Customer Digits Grid Column     ${DESTINATION COLUMN NAME}       ${BEGIN DATE COLUMN NAME}

Validate Get Customer Digits Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Customer Digits Grid Column Names By Order

Validate Customer Digits Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${DESTINATION COLUMN NAME}       ${BEGIN DATE COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Digits Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date       ${EMPTY}

Validate Click Customer Digits Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Filter Customer Digits Grid
    [Tags]    REGRESSION
    Verify Grid Filter Details With First Row Value      ${DESTINATION COLUMN NAME}       @{ALL ROW DATA}

Validate Customer Digits Grid Filtered Properly
    [Tags]    REGRESSION
    Verify Customer Digits Grid Filtered Properly     ${DESTINATION COLUMN NAME}