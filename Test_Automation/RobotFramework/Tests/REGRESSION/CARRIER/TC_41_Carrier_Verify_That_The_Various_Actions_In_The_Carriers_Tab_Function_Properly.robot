*** Settings ***
Documentation     A Test Suite With Set Of Tests For Carrier To Verify That The Various Actions In The Carriers Tab Function Properly

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Expand Show Search Form Link
    [Tags]    REGRESSION
    Verify Expand Show Search Form Link

Validate Set Carrier Type For Carriers Search
    [Tags]    REGRESSION
    Verify Set Carrier Type For Carriers Search         ${INTERCOMPANY CARRIER TYPE}

Validate Click Carriers Page Search Button
    [Tags]    REGRESSION
    Verify Click Carriers Page Search Button

Validate Set Carriers Grid Settings
    [Tags]    REGRESSION
    Verify Set Carriers Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Vendor Column From Carriers Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Carriers Grid        Carrier Name
    set suite variable      @{ALL ROW DATA}

Validate Sort Carriers Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Carriers Grid Column In Ascending Order      Carrier Name

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Carriers Grid     Carrier Name

Validate Ascending Sorted Data For Carriers Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Carriers Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Carriers Grid Column In Descending Order      Carrier Name

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Carriers Grid     Carrier Name

Validate Descending Sorted Data For Carriers Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Carriers Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Carriers Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Carriers Grid Column
    [Tags]    REGRESSION
    Verify Drag Carriers Grid Column     Carrier Name       Carrier Status

Validate Get Carriers Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Carriers Grid Column Names By Order

Validate Carriers Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Carrier Name       Carrier Status       @{COLUMN NAME LIST}

Validate Set Carriers Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Carriers Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Carriers Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Carriers Grid Column Names By Order

Validate Carriers Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Carrier Name       Carrier Name       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Carriers Grid Export To Excel Button