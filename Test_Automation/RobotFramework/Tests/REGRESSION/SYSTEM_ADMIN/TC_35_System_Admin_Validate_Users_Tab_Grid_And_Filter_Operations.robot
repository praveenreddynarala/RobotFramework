*** Settings ***
Documentation    [TAENOSIS-860] A Test Suite With Set Of Tests To Validate Users Tab Grid And Filter Operations

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

Validate Set Users Grid Settings
    [Tags]    REGRESSION
    Verify Set Users Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Server Name Column From Users Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Users Grid       User Name
    set suite variable      @{ALL ROW DATA}

Validate Sort User Name Column Of Users Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Users Grid Column In Descending Order      User Name

Validate Get All Rows Of User Name Column From Users Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Users Grid    User Name

Validate Descending Sorted Data For User Name Column Of Users Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort User Name Column Of Users Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Users Grid Column In Ascending Order      User Name

Validate Get All Rows Of User Name Column From Users Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Users Grid    User Name

Validate Ascending Sorted Data For User Name Column Of Users Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Users Save Settings Grid Settings
    [Tags]    REGRESSION
    Verify Set Users Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Select System Tab After Grid Settings
    [Tags]    REGRESSION
    Click on System Tab

Validate Select User Tab After Grid Settings
    [Tags]    REGRESSION
    Click on Users Tab

Validate Get All Rows Of User Name Column From Users Grid For Ascending Sort After Grid Settings
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Users Grid    User Name

Validate Ascending Sorted Data For User Name Column Of Users Grid After Grid Settings
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Filter Users Grid With First Row Value
    [Tags]    REGRESSION
    Verify Filter Users Grid With First Row Value        User Name

Validate Compare Column Value After Filtering With First Row Value
    [Tags]    REGRESSION
    Verify Compare Column Value After Filtering With First Row Value        User Name

Validate Get Users Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Users Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Users Grid Column
    [Tags]    REGRESSION
    Verify Drag Users Grid Column     User Name       Profile

Validate Set Users Grid Settings After Altering
    [Tags]    REGRESSION
    Verify Set Users Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Select System Tab After Altering
    [Tags]    REGRESSION
    Click on System Tab

Validate Select User Tab After Altering
    [Tags]    REGRESSION
    Click on Users Tab

Validate Get Users Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Users Grid Column Names By Order

Validate Users Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      User Name       Profile       @{COLUMN NAME LIST}

Validate Set Users Grid Settings After Altering To Reset
    [Tags]    REGRESSION
    Verify Set Users Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Set Users Grid Settings After Altering To Save
    [Tags]    REGRESSION
    Verify Set Users Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Select System Tab After Altering And Resetting
    [Tags]    REGRESSION
    Click on System Tab

Validate Select User Tab After Altering And Resetting
    [Tags]    REGRESSION
    Click on Users Tab

Validate Get Users Grid Column Name List After Altering And Resetting
    [Tags]    REGRESSION
    Verify Get Users Grid Column Names By Order

Validate Users Grid Column Position After Altering And Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      User Name       User Name       @{COLUMN NAME LIST}

Validate Set Users Grid Settings After Altering To Export
    [Tags]    REGRESSION
    Verify Set Users Grid Settings        ${EXPORT TO EXCEL GRID SETTINGS}