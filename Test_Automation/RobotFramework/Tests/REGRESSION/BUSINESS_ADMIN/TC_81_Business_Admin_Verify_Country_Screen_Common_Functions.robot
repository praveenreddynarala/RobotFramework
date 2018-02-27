*** Settings ***
Documentation     [TAENOSIS-826] A Test Suite With Set Of Tests To Verify Country Screen Common Functions

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Country Submenu
    [Tags]    REGRESSION
    Verify Click Country Submenu

Validate Set Country Reset All Grid Settings
    [Tags]    REGRESSION
    Verify Set Country Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get Country Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Country Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Country Grid Column
    [Tags]    REGRESSION
    Verify Drag Country Grid Column     Country       Country Abbreviation

Validate Get Country Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Country Grid Column Names By Order

Validate Country Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Country       Country Abbreviation       @{COLUMN NAME LIST}

Validate Get All Rows of Country Column From Country Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Country Grid        Country
    set suite variable      @{ALL ROW DATA}

Validate Sort Country Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Country Grid Column In Descending Order      Country

Validate Get All Rows of Country Column From Country Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Grid     Country

Validate Descending Sorted Data For Country Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Country Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Country Grid Column In Ascending Order      Country

Validate Get All Rows of Country Group Column From Country Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Grid     Country

Validate Ascending Sorted Data For Country Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Country Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Country Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Country Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Country Grid Column Names By Order

Validate Country Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Country       Country       @{COLUMN NAME LIST}

Validate Set Country Reset All Grid Settings To Verify Grid Action After Closing Country Tab
    [Tags]    REGRESSION
    Verify Set Country Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get Country Grid Column Name List To Verify Grid Action After Closing Country Tab
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Country Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Country Grid Column To Verify Grid Action After Closing Country Tab
    [Tags]    REGRESSION
    Verify Drag Country Grid Column     Country       Country Abbreviation

Validate Get Country Grid Column Name List After Altering To Verify Grid Action After Closing Country Tab
    [Tags]    REGRESSION
    Verify Get Country Grid Column Names By Order

Validate Country Grid Column Position After Altering To Verify Grid Action After Closing Country Tab
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Country       Country Abbreviation       @{COLUMN NAME LIST}

Validate Set Country Save Settings Grid Settings To Verify Grid Action After Closing Country Tab
    [Tags]    REGRESSION
    Verify Set Country Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Country Tab
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Tab      Country

Validate Click Country Submenu To Verify Grid Action After Closing Country Tab
    [Tags]    REGRESSION
    Verify Click Country Submenu

Validate Get Country Grid Column Name List To Verify Grid Action After Opening Country Tab
    [Tags]    REGRESSION
    Verify Get Country Grid Column Names By Order

Validate Country Grid Column Position To Verify Grid Action After Closing Country Tab
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Country       Country Abbreviation       @{COLUMN NAME LIST}

Validate Set Country Reset Column Order Grid Settings After Verifying Grid Action After Closing Country Tab
    [Tags]    REGRESSION
    Verify Set Country Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Set Country Save Settings Grid Settings After Verifying Grid Action After Closing Country Tab
    [Tags]    REGRESSION
    Verify Set Country Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Get All Rows of Country Column From Default Country Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Country Grid        Country
    set suite variable      @{ALL ROW DATA}

Validate Sort Default Country Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Country Grid Column In Descending Order      Country

Validate Get All Rows of Country Column From Default Country Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Grid     Country

Validate Descending Sorted Data For Default Country Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Default Country Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Country Grid Column In Ascending Order      Country

Validate Get All Rows of Country Group Column From Default Country Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Grid     Country

Validate Ascending Sorted Data For Default Country Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Reset Sort On Country Grid
    [Tags]    REGRESSION
    Verify Set Country Grid Settings        ${RESET SORT GRID SETTINGS}

Validate Export To Excel On Country Grid
    [Tags]    REGRESSION
    Verify Set Country Grid Settings        ${EXPORT TO EXCEL GRID SETTINGS}