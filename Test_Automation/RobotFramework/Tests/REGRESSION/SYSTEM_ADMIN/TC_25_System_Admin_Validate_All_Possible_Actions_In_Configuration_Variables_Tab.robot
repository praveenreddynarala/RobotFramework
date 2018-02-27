*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate All Possible Actions In Configuration Variables Tab

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

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Compare Configuration Variables Grid First Row Value After Edit
    [Tags]    REGRESSION
    Verify Compare Configuration Variables Grid First Row Value         ${CURRENT VALUE COLUMN NAME}        3

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Export To Excel Button

Validate Set Variable Name For Grid Related Action
    [Tags]    REGRESSION
    Verify Set Variable Name    ${EMPTY}

Validate Click Configuration Variables Grid Search Button For Grid Related Action
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Configuration Variables Grid Settings
    [Tags]    REGRESSION
    Verify Set Configuration Variables Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Server Name Column From Configuration Variables Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Configuration Variables Grid       ${CURRENT VALUE COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Category Column Of Configuration Variables Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Configuration Variables Grid Column In Descending Order      ${CURRENT VALUE COLUMN NAME}

Validate Set Configuration Variables Grid Settings To Save Setting
    [Tags]    REGRESSION
    Verify Set Configuration Variables Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Current Configuration Variables Tab To Verify Sorting
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab        ${CONFIGURATION VARIABLE TAB NAME}

Validate Click Configuration Variables Link After Sorting
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Get All Rows Of Current Value Column From Configuration Variables Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Configuration Variables Grid    ${CURRENT VALUE COLUMN NAME}

Validate Descending Sorted Data For Current Value Column Of Configuration Variables Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Set Configuration Variables Grid Settings To Reset All
    [Tags]    REGRESSION
    Verify Set Configuration Variables Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get Configuration Variables Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Configuration Variables Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Configuration Variables Grid Column
    [Tags]    REGRESSION
    Verify Drag Configuration Variables Grid Column     ${ABBREVIATION COLUMN NAME}       ${CURRENT VALUE COLUMN NAME}

Validate Set Configuration Variables Grid Settings After Altering
    [Tags]    REGRESSION
    Verify Set Configuration Variables Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Current Configuration Variables Tab After Altering
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab        ${CONFIGURATION VARIABLE TAB NAME}

Validate Click Configuration Variables Link After Altering
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Get Configuration Variables Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Configuration Variables Grid Column Names By Order

Validate Configuration Variables Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${ABBREVIATION COLUMN NAME}       ${CURRENT VALUE COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Configuration Variables Grid Settings After Altering To Reset
    [Tags]    REGRESSION
    Verify Set Configuration Variables Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Set Configuration Variables Grid Settings After Altering To Save
    [Tags]    REGRESSION
    Verify Set Configuration Variables Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Set Configuration Variables Grid Settings After Altering To Export
    [Tags]    REGRESSION
    Verify Set Configuration Variables Grid Settings        ${EXPORT TO EXCEL GRID SETTINGS}

Validate Filter Configuration Variables Grid Scope Column
    [Tags]    REGRESSION
    Verify Filter Configuration Variables Grid With Provided Value To Filter      ${VARIABLE NAME COLUMN NAME}     iXToolsWholesaleSolutionType

Validate Compare Configuration Variables Grid Row Count
    [Tags]    REGRESSION
    Verify Compare Configuration Variables Grid Row Count       1