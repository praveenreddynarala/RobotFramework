*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate All Possible Actions In Field Alias Tab

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}         ${EMPTY}
@{COLUMN NAME LIST}     ${EMPTY}
${FIELD ALIAS COLUMN VALUE}     ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Field Alias Link
    [Tags]    REGRESSION
    Verify Click Field Alias Link

Validate Set Field Alias Scope
    [Tags]    REGRESSION
    Verify Set Field Alias Scope        Account

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Get Field Alias Grid Field Alias Column Value
    [Tags]    REGRESSION
    ${FIELD ALIAS COLUMN VALUE} =       Verify Get Field Alias Grid Specific Column Value       ${FIELD ALIAS COLUMN NAME}
    set suite variable          ${FIELD ALIAS COLUMN VALUE}
    log         ${FIELD ALIAS COLUMN VALUE}

Validate Set Value In Field Alias Column
    [Tags]    REGRESSION
    Verify Set Value In Field Alias Column    ${TEST DATA PREFIX}

Validate Click Save Changes Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Compare Ftp Site Management Grid First Row Value After Edit
    [Tags]    REGRESSION
    ${CREATED FIELD ALIAS NAME} =      Verify Get Field Alias Name
    Verify Compare Field Alias Grid First Row Value         ${FIELD ALIAS COLUMN VALUE}        ${CREATED FIELD ALIAS NAME}

Validate Set Value In Field Alias Column To Set Default Value
    [Tags]    REGRESSION
    Verify Set Value In Field Alias Column    ${TEST DATA PREFIX}       ${True}

Validate Click Save Changes Button To Set Default Value
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Compare Ftp Site Management Grid First Row Value After Edit After Setting Default Value
    [Tags]    REGRESSION
    ${CREATED FIELD ALIAS NAME} =      Verify Get Field Alias Name
    Verify Compare Field Alias Grid First Row Value         ${FIELD ALIAS COLUMN NAME}        ${CREATED FIELD ALIAS NAME}

Validate Set Field Alias Scope For Grid Action
    [Tags]    REGRESSION
    Verify Set Field Alias Scope        ALL

Validate Click Search Button For Grid Action
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Field Alias Grid Settings
    [Tags]    REGRESSION
    Verify Set Field Alias Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Server Name Column From Field Alias Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Field Alias Grid       ${FIELD ALIAS COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Field Alias Column Of Field Alias Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Field Alias Grid Column In Descending Order      ${FIELD ALIAS COLUMN NAME}

Validate Set Field Alias Grid Settings To Save Setting
    [Tags]    REGRESSION
    Verify Set Field Alias Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Current Field Alias Tab To Verify Sorting
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab        ${FIELD ALIAS TAB NAME}

Validate Click Field Alias Link After Sorting
    [Tags]    REGRESSION
    Verify Click Field Alias Link

Validate Get All Rows Of Field Alias Column From Field Alias Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Field Alias Grid            ${FIELD ALIAS COLUMN NAME}

Validate Descending Sorted Data For Field Alias Column Of Field Alias Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Set Field Alias Grid Settings To Reset All
    [Tags]    REGRESSION
    Verify Set Field Alias Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get Field Alias Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Field Alias Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Field Alias Grid Column
    [Tags]    REGRESSION
    Verify Drag Field Alias Grid Column     ${FIELD NAME COLUMN NAME}       ${FIELD ALIAS COLUMN NAME}

Validate Set Field Alias Grid Settings After Altering
    [Tags]    REGRESSION
    Verify Set Field Alias Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Current Field Alias Tab After Altering
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab        ${FIELD ALIAS TAB NAME}

Validate Click Field Alias After Altering
    [Tags]    REGRESSION
    Verify Click Field Alias Link

Validate Get Field Alias Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Field Alias Grid Column Names By Order

Validate Field Alias Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${FIELD NAME COLUMN NAME}       ${FIELD ALIAS COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Field Alias Grid Settings After Altering To Reset
    [Tags]    REGRESSION
    Verify Set Field Alias Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Set Field Alias Grid Settings After Altering To Save
    [Tags]    REGRESSION
    Verify Set Field Alias Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Set Field Alias Grid Settings After Altering To Export
    [Tags]    REGRESSION
    Verify Set Field Alias Grid Settings        ${EXPORT TO EXCEL GRID SETTINGS}

