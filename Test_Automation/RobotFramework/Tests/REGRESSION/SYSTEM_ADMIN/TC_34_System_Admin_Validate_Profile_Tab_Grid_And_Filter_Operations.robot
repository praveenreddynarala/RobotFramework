*** Settings ***
Documentation    [TAENOSIS-859] A Test Suite With Set Of Tests To Validate Profile Tab Grid And Filter Operations

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}         ${EMPTY}
@{COLUMN NAME LIST}     ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select User Tab
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click Security Profile Button
    [Tags]    REGRESSION
    Verify Click Security Profile Button

Validate Set Security Profile Grid Settings
    [Tags]    REGRESSION
    Verify Set Security Profile Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Server Name Column From Security Profile Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Security Profile Grid       Profile
    set suite variable      @{ALL ROW DATA}

Validate Sort Profile Column Of Security Profile Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Security Profile Grid Column In Descending Order      Profile

Validate Get All Rows Of Profile Column From Security Profile Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Security Profile Grid    Profile

Validate Descending Sorted Data For Profile Column Of Security Profile Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Profile Column Of Security Profile Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Security Profile Grid Column In Ascending Order      Profile

Validate Get All Rows Of Profile Column From Security Profile Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Security Profile Grid    Profile

Validate Ascending Sorted Data For Profile Column Of Security Profile Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Security Profile Save Settings Grid Settings
    [Tags]    REGRESSION
    Verify Set Security Profile Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Valdiate Close Security Profile Management Tab
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab        Profile Management

Validate Click Security Profile Button After Closing Profile Management Tab
    [Tags]    REGRESSION
    Verify Click Security Profile Button

Validate Filter Security Profile Grid With First Row Value
    [Tags]    REGRESSION
    Verify Filter Profiles Grid With First Row Value        Profile

Validate Get Security Profile Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Security Profile Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Security Profile Grid Column
    [Tags]    REGRESSION
    Verify Drag Security Profile Grid Column     Profile       Modified Date

Validate Set Security Profile Grid Settings After Altering
    [Tags]    REGRESSION
    Verify Set Security Profile Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Valdiate Close Security Profile Management Tab After Altering
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab        Profile Management

Validate Click Security Profile Button After Closing Profile Management Tab After Altering
    [Tags]    REGRESSION
    Verify Click Security Profile Button

Validate Get Security Profile Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Security Profile Grid Column Names By Order

Validate Security Profile Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Profile       Modified Date       @{COLUMN NAME LIST}

Validate Set Security Profile Grid Settings After Altering To Reset
    [Tags]    REGRESSION
    Verify Set Security Profile Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Set Security Profile Grid Settings After Altering To Save
    [Tags]    REGRESSION
    Verify Set Security Profile Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Set Security Profile Grid Settings After Altering To Export
    [Tags]    REGRESSION
    Verify Set Security Profile Grid Settings        ${EXPORT TO EXCEL GRID SETTINGS}