*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate All Grid Related Actions Of UDP Grid for Inline Item Functionality

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
    Verify Select Inline Action Item        ${USER DEFINED PARAMETERS INLINE ITEM}

Validate Set Price Policies Udp Grid Settings
    [Tags]    REGRESSION
    Verify Set Price Policies Udp Grid Settings   ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Specific Column From Price Policies Udp Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Price Policies Udp Grid     ${PARAMETER COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Price Policies Udp Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Price Policies Udp Grid Column In Descending Order    ${PARAMETER COLUMN NAME}

Validate Get All Rows of Parameter Column From Price Policies Udp For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Price Policies Udp Grid    ${PARAMETER COLUMN NAME}

Validate Descending Sorted Data For Price Policies Udp Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Price Policies Udp Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Price Policies Udp Grid Column In Ascending Order    ${PARAMETER COLUMN NAME}

Validate Get All Rows of Parameter Column From Price Policies Udp Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Price Policies Udp Grid    ${PARAMETER COLUMN NAME}

Validate Ascending Sorted Data For Price Policies Udp Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Price Policies Udp Grid Column Names By Order
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =    Verify Get Price Policies Udp Grid Column Names By Order
    set suite variable    @{COLUMN NAME LIST}

Validate Drag Price Policies Udp Grid Column
    [Tags]    REGRESSION
    Verify Drag Price Policies Udp Grid Column    ${PARAMETER COLUMN NAME}    ${START DATE COLUMN NAME}

Validate Get Price Policies Udp Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Price Policies Udp Grid Column Names By Order

Validate Price Policies Udp Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${PARAMETER COLUMN NAME}    ${START DATE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Set Price Policies Udp Grid Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Price Policies Udp Grid Settings    ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Price Policies Udp Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Price Policies Udp Grid Column Names By Order

Validate Price Policies Udp Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering    ${START DATE COLUMN NAME}    ${START DATE COLUMN NAME}    @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Price Policies Udp Grid Export To Excel Button