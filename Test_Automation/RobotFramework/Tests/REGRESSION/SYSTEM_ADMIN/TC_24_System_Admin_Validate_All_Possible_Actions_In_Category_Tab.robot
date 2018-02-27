*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate All Possible Actions In Category tab

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}         ${EMPTY}
@{COLUMN NAME LIST}     ${EMPTY}
${CREATED NEW CATEGORY}     ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Category Link
    [Tags]    REGRESSION
    Verify Click Category Link

Validate Click New Category Button For System Admin
    [Tags]    REGRESSION
    Verify Click New Category Button For System Admin

Validate Set New Category Application
    [Tags]    REGRESSION
    Verify Set New Category Application     ${APPLICATION NAME}

Validate Set New Category Object
    [Tags]    REGRESSION
    Verify Set New Category Object     ${OBJECT NAME}

Validate Set New Category Type
    [Tags]    REGRESSION
    Verify Set New Category Type     ${CATEGORY TYPE NAME}

Validate Set New Category For System Admin
    [Tags]    REGRESSION
    Verify Set New Category For System Admin    ${TEST DATA PREFIX}

Validate Set New Category Abbreviation For System Admin
    [Tags]    REGRESSION
    Verify Set New Category Abbreviation For System Admin    ${TEST DATA PREFIX}

Validate Set New Category Level
    [Tags]    REGRESSION
    Verify Set New Category Level     ${LEVEL NAME}

Validate Click New Category Save Button
    [Tags]    REGRESSION
    Verify Click New Category Save Button

Validate Set Categories Grid Settings
    [Tags]    REGRESSION
    Verify Set Categories Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Server Name Column From Categories Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Categories Grid       ${CATEGORY COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Category Column Of Categories Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Categories Grid Column In Descending Order      ${CATEGORY COLUMN NAME}

Validate Set Categories Grid Settings To Save Setting
    [Tags]    REGRESSION
    Verify Set Categories Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Current Category Tab To Verify Sorting
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab        ${CATEGORY TAB NAME}

Validate Click Category Link After Sorting
    [Tags]    REGRESSION
    Verify Click Category Link

Validate Get All Rows Of Category Column From Categories Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Categories Grid    ${CATEGORY COLUMN NAME}

Validate Descending Sorted Data For Category Column Of Categories Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Set Categories Grid Settings To Reset All
    [Tags]    REGRESSION
    Verify Set Categories Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get Categories Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Categories Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Categories Grid Column
    [Tags]    REGRESSION
    Verify Drag Categories Grid Column     ${CATEGORY TYPE COLUMN NAME}       ${CATEGORY COLUMN NAME}

Validate Set Categories Grid Settings After Altering
    [Tags]    REGRESSION
    Verify Set Categories Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Current Category Tab After Altering
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab        ${CATEGORY TAB NAME}

Validate Click Category Link After Altering
    [Tags]    REGRESSION
    Verify Click Category Link

Validate Get Categories Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Categories Grid Column Names By Order

Validate Categories Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${CATEGORY TYPE COLUMN NAME}       ${CATEGORY COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Categories Grid Settings After Altering To Reset
    [Tags]    REGRESSION
    Verify Set Categories Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Set Categories Grid Settings After Altering To Save
    [Tags]    REGRESSION
    Verify Set Categories Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Set Categories Grid Settings After Altering To Export
    [Tags]    REGRESSION
    Verify Set Categories Grid Settings        ${EXPORT TO EXCEL GRID SETTINGS}

Validate Filter Categories Grid Category Column
    [Tags]    REGRESSION
    ${CREATED NEW CATEGORY} =       Verify Get Created New Category From System Admin
    set suite variable          ${CREATED NEW CATEGORY}
    Verify Filter Categories Grid With Provided Value To Filter      ${CATEGORY COLUMN NAME}     ${CREATED NEW CATEGORY}

Validate Compare Categories Grid First Row Value
    [Tags]    REGRESSION
    Verify Compare Categories Grid First Row Value         ${CATEGORY COLUMN NAME}        ${CREATED NEW CATEGORY}

Validate Set Value In Category Column For Edit
    [Tags]    REGRESSION
    Verify Set Value In Category Column    ${TEST DATA PREFIX}      ${True}     ${CATEGORY COLUMN NAME}     ${CREATED NEW CATEGORY}

Validate Click Save Changes Button For Edit
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Clear Filter After Editing
    [Tags]    REGRESSION
    Verify Clear Filter For System Admin     ${CATEGORY COLUMN NAME}

Validate Filter Categories Grid Category Column After Editing
    [Tags]    REGRESSION
    ${CREATED NEW CATEGORY} =       Verify Get Created New Category From System Admin
    set suite variable          ${CREATED NEW CATEGORY}
    Verify Filter Categories Grid With Provided Value To Filter      ${CATEGORY COLUMN NAME}     ${CREATED NEW CATEGORY}

Validate Compare Categories Grid First Row Value After Editing
    [Tags]    REGRESSION
    Verify Compare Categories Grid First Row Value         ${CATEGORY COLUMN NAME}        ${CREATED NEW CATEGORY}

Validate Click Categories Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Click Categories Grid Row Checkbox       ${CREATED NEW CATEGORY}

Validate Click Categories Delete Button
    [Tags]    REGRESSION
    Verify Click Categories Delete Button
