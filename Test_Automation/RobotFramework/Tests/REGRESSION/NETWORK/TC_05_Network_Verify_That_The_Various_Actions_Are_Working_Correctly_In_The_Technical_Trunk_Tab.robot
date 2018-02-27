*** Settings ***
Documentation   [TAENOSIS-865] A Test Suite With Set Of Tests To Verify that The Various Actions Are Woking Correctly In The Technical Trunk Tab

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/network_page_resource.robot
Resource    ../../../Resources/ExternalDataSource/TestAutomation/network_page_test_data_source.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}

*** Test Cases ***
Validate Navigate to Network module
    [Tags]  REGRESSION
    Click on Home Icon and Select 'Network' From Main Menu

Validate Technical Trunks Tab Is Available
    [Tags]  REGRESSION
    Verify The Technical Trunks Tab Is Available

Validate Navigate to Technical Trunks Tab
    [Tags]  REGRESSION
    Click On Technical Trunks Tab

Validate Technical Trunks Tab Is Loaded Properly
    [Tags]  REGRESSION
    Verify Technical Trunks Tab Is Loaded Properly

Validate Set Technical Trunks Grid Settings
    [Tags]    REGRESSION
    Verify Set Technical Trunks Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Vendor Column From Technical Trunks Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Technical Trunks Grid        ${TECHNICAL TRUNK COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Technical Trunks Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Technical Trunks Grid Column In Ascending Order      ${TECHNICAL TRUNK COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Technical Trunks Grid     ${TECHNICAL TRUNK COLUMN NAME}

Validate Ascending Sorted Data For Technical Trunks Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Technical Trunks Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Technical Trunks Grid Column In Descending Order      ${TECHNICAL TRUNK COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Technical Trunks Grid     ${TECHNICAL TRUNK COLUMN NAME}

Validate Descending Sorted Data For Technical Trunks Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Technical Trunks Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Technical Trunks Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Technical Trunks Grid Column
    [Tags]    REGRESSION
    Verify Drag Technical Trunks Grid Column     ${TECHNICAL TRUNK COLUMN NAME}       ${ACCOUNT COLUMN NAME}

Validate Get Technical Trunks Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Technical Trunks Grid Column Names By Order

Validate Technical Trunks Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${TECHNICAL TRUNK COLUMN NAME}       ${ACCOUNT COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Technical Trunks Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Technical Trunks Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Technical Trunks Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Technical Trunks Grid Column Names By Order

Validate Re Analysis Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${TECHNICAL TRUNK COLUMN NAME}       ${TECHNICAL TRUNK COLUMN NAME}       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Technical Trunks Grid Export To Excel Button