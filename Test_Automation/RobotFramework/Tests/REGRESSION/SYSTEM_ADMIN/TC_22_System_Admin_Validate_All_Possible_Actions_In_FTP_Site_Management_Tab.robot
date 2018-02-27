*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate All Possible Actions In FTP Site Management Tab

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}         ${EMPTY}
@{COLUMN NAME LIST}     ${EMPTY}
${CREATED FTP SITE NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click FTP Site Managemnt Link
    [Tags]    REGRESSION
    Verify Click FTP Site Management Link

Validate Click New Ftp Site Button
    [Tags]    REGRESSION
    Verify Click New Ftp Site Button

Validate Set Value In Site Name Column
    [Tags]    REGRESSION
    Verify Set Value In Site Name Column    ${TEST DATA PREFIX}

Validate Set Value In Site Ip Address Column
    [Tags]    REGRESSION
    Verify Set Value In Site Ip Address Column    ${TEST DATA PREFIX}

Validate Set Value In Site User Name Column
    [Tags]    REGRESSION
    Verify Set Value In Site User Name Column    ${TEST DATA PREFIX}

Validate Set Value In Site Password Column
    [Tags]    REGRESSION
    Verify Set Value In Site Password Column    ${TEST DATA PREFIX}

Validate Set Value In Site Directory Column
    [Tags]    REGRESSION
    Verify Set Value In Site Directory Column    ${TEST DATA PREFIX}

Validate Set Value In Site Proxy Session Column
    [Tags]    REGRESSION
    Verify Set Value In Site Proxy Session Column       ${TEST DATA PREFIX}

Validate Click Save Changes Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Set Ftp Site Management Grid Settings
    [Tags]    REGRESSION
    Verify Set Ftp Site Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Server Name Column From Ftp Site Managemen Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Ftp Site Management Grid       ${SITE NAME COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Site Name Column Of FTP Site Management Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Ftp Site Management Grid Column In Descending Order      ${SITE NAME COLUMN NAME}

Validate Set Ftp Site Management Grid Settings To Save Setting
    [Tags]    REGRESSION
    Verify Set Ftp Site Management Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Current Ftp Site Management Tab To Verify Sorting
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab        ${FTP SITE MANAGEMENT TAB NAME}

Validate Click FTP Site Managemnt Link After Sorting
    [Tags]    REGRESSION
    Verify Click FTP Site Management Link

Validate Get All Rows Of Server Name Column From Ftp Site Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Ftp Site Management Grid    ${SITE NAME COLUMN NAME}

Validate Descending Sorted Data For Site Name Column Of Ftp Site Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Set Ftp Site Management Grid Settings To Reset All
    [Tags]    REGRESSION
    Verify Set Ftp Site Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get Ftp Site Management Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Ftp Site Management Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Ftp Site Management Grid Column
    [Tags]    REGRESSION
    Verify Drag Ftp Site Management Grid Column     ${SITE NAME COLUMN NAME}       ${SITE USER NAME COLUMN NAME}

Validate Set Ftp Site Management Grid Settings After Altering
    [Tags]    REGRESSION
    Verify Set Ftp Site Management Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Current Ftp Site Management Tab After Altering
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab        ${FTP SITE MANAGEMENT TAB NAME}

Validate Click FTP Site Managemnt Link After Altering
    [Tags]    REGRESSION
    Verify Click FTP Site Management Link

Validate Get Ftp Site Management Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Ftp Site Management Grid Column Names By Order

Validate FTP Site Management Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${SITE NAME COLUMN NAME}       ${SITE USER NAME COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Ftp Site Management Grid Settings After Altering To Reset
    [Tags]    REGRESSION
    Verify Set Ftp Site Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Set Ftp Site Management Grid Settings After Altering To Save
    [Tags]    REGRESSION
    Verify Set Ftp Site Management Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Set Ftp Site Management Grid Settings After Altering To Export
    [Tags]    REGRESSION
    Verify Set Ftp Site Management Grid Settings        ${EXPORT TO EXCEL GRID SETTINGS}

Validate Set Ftp Site For Search
    [Tags]    REGRESSION
    ${CREATED FTP SITE NAME} =      Verify Get Created New Ftp Site Name
    set suite variable          ${CREATED FTP SITE NAME}
    Verify Set Ftp Site For Search          ${CREATED FTP SITE NAME}

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Compare Ftp Site Management Grid First Row Value
    [Tags]    REGRESSION
    Verify Compare Ftp Site Management Grid First Row Value         ${SITE NAME COLUMN NAME}        ${CREATED FTP SITE NAME}

Validate Set Value In Site Name Column For Edit
    [Tags]    REGRESSION
    Verify Set Value In Site Name Column    ${TEST DATA PREFIX}     ${True}         ${SITE NAME COLUMN NAME}        ${CREATED FTP SITE NAME}

Validate Click Save Changes Button For Edit
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Set Ftp Site For Search After Edit
    [Tags]    REGRESSION
    ${CREATED FTP SITE NAME} =      Verify Get Created New Ftp Site Name
    set suite variable          ${CREATED FTP SITE NAME}
    Verify Set Ftp Site For Search          ${CREATED FTP SITE NAME}

Validate Click Search Button After Edit
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Compare Ftp Site Management Grid First Row Value After Edit
    [Tags]    REGRESSION
    Verify Compare Ftp Site Management Grid First Row Value         ${SITE NAME COLUMN NAME}        ${CREATED FTP SITE NAME}

Validate Click Ftp Management Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Click Ftp Management Grid Row Checkbox       ${CREATED FTP SITE NAME}

Validate Click Ftp Site Delete Button
    [Tags]    REGRESSION
    Verify Click Ftp Site Delete Button
