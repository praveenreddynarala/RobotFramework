*** Settings ***
Documentation     A Test Suite With Set Of Tests For Sell Validate Customer Rates Grid Related Actions

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
    Verify Select Inline Action Item        ${CUSTOMER RATES INLINE ITEM}

Validate Get All Rows of Vendor Column From Customer Rates Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Customer Rates Grid        ${RATING PRODUCT COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Customer Rates Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Customer Rates Grid Column In Descending Order      ${RATING PRODUCT COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Customer Rates Grid     ${RATING PRODUCT COLUMN NAME}

Validate Descending Sorted Data For Customer Rates Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Customer Rates Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Customer Rates Grid Column In Ascending Order      ${RATING PRODUCT COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Customer Rates Grid     ${RATING PRODUCT COLUMN NAME}

Validate Ascending Sorted Data For Customer Rates Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Customer Rates Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Customer Rates Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Customer Rates Grid Column
    [Tags]    REGRESSION
    Verify Drag Customer Rates Grid Column     ${RATING PRODUCT COLUMN NAME}       ${RATE1 COLUMN NAME}

Validate Get Customer Rates Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Customer Rates Grid Column Names By Order

Validate Customer Rates Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${RATING PRODUCT COLUMN NAME}       ${RATE1 COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Rates Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date       5/5/2010

Validate Click Customer Rates Search Button
    [Tags]    REGRESSION
    Verify Click Customer Rates Search Button

Validate Filter Customer Rates Grid
    [Tags]    REGRESSION
    Verify Grid Filter Details With First Row Value      ${RATING PRODUCT COLUMN NAME}       @{ALL ROW DATA}

Validate Customer Rates Grid Filtered Properly
    [Tags]    REGRESSION
    Verify Customer Rates Grid Filtered Properly     ${RATING PRODUCT COLUMN NAME}