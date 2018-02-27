*** Settings ***
Documentation     [TAENOSIS-861] A Test Suite With Set Of Tests To Verify Number Plan Common Functions

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

Validate Click Number Plan Submenu
    [Tags]    REGRESSION
    Verify Click Number Plan Submenu

Validate Set Number Plan Grid Reset All Grid Settings
    [Tags]    REGRESSION
    Verify Set Number Plan Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get Number Plan Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Number Plan Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Number Plan Grid Column
    [Tags]    REGRESSION
    Verify Drag Number Plan Grid Column     Number Plan Type       Number Plan Abbreviation

Validate Get Number Plan Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Number Plan Grid Column Names By Order

Validate Number Plan Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Number Plan Type       Number Plan Abbreviation       @{COLUMN NAME LIST}

Validate Get All Rows of Number Plan Column From Number Plan Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Number Plan Grid        Number Plan
    set suite variable      @{ALL ROW DATA}

Validate Sort Number Plan Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Number Plan Grid Column In Descending Order      Number Plan

Validate Get All Rows of Number Plan Column From Number Plan Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Number Plan Grid     Number Plan

Validate Descending Sorted Data For Number Plan Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Number Plan Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Number Plan Grid Column In Ascending Order      Number Plan

Validate Get All Rows of Number Plan Column From Number Plan Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Number Plan Grid     Number Plan

Validate Ascending Sorted Data For Number Plan Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Number Plan Grid Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Number Plan Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Number Plan Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Number Plan Grid Column Names By Order

Validate Number Plan Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Number Plan Type       Number Plan Type       @{COLUMN NAME LIST}

Validate Set Number Plan Grid Reset All Grid Settings To Verify Grid Action After Closing Number Plan Tab
    [Tags]    REGRESSION
    Verify Set Number Plan Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get Number Plan Grid Column Name List To Verify Grid Action After Closing Number Plan Tab
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Number Plan Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Number Plan Grid Column To Verify Grid Action After Closing Number Plan Tab
    [Tags]    REGRESSION
    Verify Drag Number Plan Grid Column     Number Plan Type       Number Plan Abbreviation

Validate Get Number Plan Grid Column Name List After Altering To Verify Grid Action After Closing Number Plan Tab
    [Tags]    REGRESSION
    Verify Get Number Plan Grid Column Names By Order

Validate Number Plan Grid Column Position After Altering To Verify Grid Action After Closing Number Plan Tab
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Number Plan Type       Number Plan Abbreviation       @{COLUMN NAME LIST}

Validate Set Number Plan Grid Save Settings Grid Settings To Verify Grid Action After Closing Number Plan Tab
    [Tags]    REGRESSION
    Verify Set Number Plan Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Number Plan Tab
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Tab      Number Plan

Validate Click Number Plan Submenu To Verify Grid Action After Closing Number Plan Tab
    [Tags]    REGRESSION
    Verify Click Number Plan Submenu

Validate Get Number Plan Grid Column Name List To Verify Grid Action After Opening Number Plan Tab
    [Tags]    REGRESSION
    Verify Get Number Plan Grid Column Names By Order

Validate Number Plan Grid Column Position To Verify Grid Action After Closing Number Plan Tab
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Number Plan Type       Number Plan Abbreviation       @{COLUMN NAME LIST}

Validate Set Number Plan Grid Reset Column Order Grid Settings After Verifying Grid Action After Closing Number Plan Tab
    [Tags]    REGRESSION
    Verify Set Number Plan Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Set Number Plan Grid Save Settings Grid Settings After Verifying Grid Action After Closing Number Plan Tab
    [Tags]    REGRESSION
    Verify Set Number Plan Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Get All Rows of Number Plan Column From Default Number Plan Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Number Plan Grid        Number Plan
    set suite variable      @{ALL ROW DATA}

Validate Sort Default Number Plan Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Number Plan Grid Column In Descending Order      Number Plan

Validate Get All Rows of Number Plan Column From Default Number Plan Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Number Plan Grid     Number Plan

Validate Descending Sorted Data For Default Number Plan Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Default Number Plan Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Number Plan Grid Column In Ascending Order      Number Plan

Validate Get All Rows of Number Plan Column From Default Number Plan Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Number Plan Grid     Number Plan

Validate Ascending Sorted Data For Default Number Plan Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Reset Sort On Number Plan Grid
    [Tags]    REGRESSION
    Verify Set Number Plan Grid Settings        ${RESET SORT GRID SETTINGS}

Validate Export To Excel On Number Plan Grid
    [Tags]    REGRESSION
    Verify Set Number Plan Grid Settings        ${EXPORT TO EXCEL GRID SETTINGS}