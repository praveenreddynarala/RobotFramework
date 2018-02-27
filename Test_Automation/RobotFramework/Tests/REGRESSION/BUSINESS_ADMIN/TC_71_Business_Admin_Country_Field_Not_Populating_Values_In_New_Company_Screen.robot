*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Contry Field Not Populating Values In New Company Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}                 ${EMPTY}
@{COLUMN NAME LIST}             ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Country Groups Submenu
    [Tags]    REGRESSION
    Verify Click Country Group Submenu

Validate Set Country Group Management Grid Reset All Grid Settings
    [Tags]    REGRESSION
    Verify Set Country Group Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Country Group Scope Column From Country Group Management Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Country Group Management Grid        ${COUNTRY GROUP SCOPE COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Country Group Management Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Country Group Management Grid Column In Descending Order      ${COUNTRY GROUP SCOPE COLUMN NAME}

Validate Get All Rows of Country Group Management Column From Country Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Group Management Grid     ${COUNTRY GROUP SCOPE COLUMN NAME}

Validate Descending Sorted Data For Country Group Management Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Country Group Management Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Country Group Management Grid Column In Ascending Order      ${COUNTRY GROUP SCOPE COLUMN NAME}

Validate Get All Rows of Country Column From Country Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Group Management Grid     ${COUNTRY GROUP SCOPE COLUMN NAME}

Validate Ascending Sorted Data For Country Group Management Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Country Group Management Grid Reset All Grid Settings For Country Group Column
    [Tags]    REGRESSION
    Verify Set Country Group Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Country Group Column From Country Group Management Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Country Group Management Grid        ${COUNTRY GROUP COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Country Group Management Grid Column In Descending Order For Country Group Column
    [Tags]    REGRESSION
    Verify Sort Country Group Management Grid Column In Descending Order      ${COUNTRY GROUP COLUMN NAME}

Validate Get All Rows of Country Group Column From Country Group Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Group Management Grid     ${COUNTRY GROUP COLUMN NAME}

Validate Descending Sorted Data For Country Group Column Of Country Group Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Country Group Management Grid Column In Ascending Order For Country Group Column
    [Tags]    REGRESSION
    Verify Sort Country Group Management Grid Column In Ascending Order      ${COUNTRY GROUP COLUMN NAME}

Validate Get All Rows of Country Group Column From Country Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Group Management Grid     ${COUNTRY GROUP COLUMN NAME}

Validate Ascending Sorted Data For Country Group Column Of Country Group Management Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Country Group Management Grid Reset All Grid Settings For Countries Column
    [Tags]    REGRESSION
    Verify Set Country Group Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Countries Column From Country Group Management Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Country Group Management Grid        ${COUNTRIES COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Country Group Management Grid Column In Descending Order For Countries Column
    [Tags]    REGRESSION
    Verify Sort Country Group Management Grid Column In Descending Order      ${COUNTRIES COLUMN NAME}

Validate Get All Rows of Countries Column From Country Group Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Group Management Grid     ${COUNTRIES COLUMN NAME}

Validate Descending Sorted Data For Countries Column Of Country Group Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Country Group Management Grid Column In Ascending Order For Countries Column
    [Tags]    REGRESSION
    Verify Sort Country Group Management Grid Column In Ascending Order      ${COUNTRIES COLUMN NAME}

Validate Get All Rows of Countries Column From Country Group Management Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Group Management Grid     ${COUNTRIES COLUMN NAME}

Validate Ascending Sorted Data For Countries Column Of Country Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Country Grid Reset All Grid Settings For Last Modified Column
    [Tags]    REGRESSION
    Verify Set Country Group Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Last Modified Column From Country Group Management Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Country Group Management Grid        ${LAST MODIFIED COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Country Group Management Grid Column In Descending Order For Last Modified Column
    [Tags]    REGRESSION
    Verify Sort Country Group Management Grid Column In Descending Order      ${LAST MODIFIED COLUMN NAME}

Validate Get All Rows of Last Modified Column From Country Group Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Group Management Grid     ${LAST MODIFIED COLUMN NAME}

Validate Descending Sorted Data For Country Column Of Country Group Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Country Group Management Grid Column In Ascending Order For Last Modified Column
    [Tags]    REGRESSION
    Verify Sort Country Group Management Grid Column In Ascending Order      ${LAST MODIFIED COLUMN NAME}

Validate Get All Rows of Last Modified Column From Country Group Management Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Group Management Grid     ${LAST MODIFIED COLUMN NAME}

Validate Ascending Sorted Data For Last Modified Column Of Country Group Management Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Country Group Management Grid Reset All Grid Settings For Modified By Column
    [Tags]    REGRESSION
    Verify Set Country Group Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Modified By Column From Country Group Management Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Country Group Management Grid        ${MODIFIED BY COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Country Group Management Grid Column In Descending Order For Modified By Column
    [Tags]    REGRESSION
    Verify Sort Country Group Management Grid Column In Descending Order      ${MODIFIED BY COLUMN NAME}

Validate Get All Rows of Modified By Column From Country Group Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Group Management Grid     ${MODIFIED BY COLUMN NAME}

Validate Descending Sorted Data For Modified By Column Of Country Group Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Country Group Management Grid Column In Ascending Order For Modified By Column
    [Tags]    REGRESSION
    Verify Sort Country Group Management Grid Column In Ascending Order      ${MODIFIED BY COLUMN NAME}

Validate Get All Rows of Modified By Column From Country Group Management Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Group Management Grid     ${MODIFIED BY COLUMN NAME}

Validate Ascending Sorted Data For Modified By Column Of Country Group Management Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Company Grid Reset Sort Grid Settings
    [Tags]    REGRESSION
    Verify Set Country Group Management Grid Settings        ${RESET SORT GRID SETTINGS}

Validate Set Company Grid Export To Excel Grid Settings
    [Tags]    REGRESSION
    Verify Set Country Group Management Grid Settings        ${EXPORT TO EXCEL GRID SETTINGS}

Validate Get Country Group Management Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Country Group Management Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Country Group Management Grid Column
    [Tags]    REGRESSION
    Verify Drag Country Group Management Grid Column     ${COUNTRY GROUP SCOPE COLUMN NAME}       ${COUNTRY GROUP COLUMN NAME}

Validate Set Country Group Management Grid Save Settings Grid Settings After Altering
    [Tags]    REGRESSION
    Verify Set Country Group Management Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Country Groups Tab After Altering
   [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Tab        ${COUNTRY GROUPS TAB NAME}

Validate Click Country Groups Submenu After Altering
    [Tags]    REGRESSION
    Verify Click Country Group Submenu

Validate Get Country Group Management Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Country Group Management Grid Column Names By Order

Validate Country Group Management Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${COUNTRY GROUP SCOPE COLUMN NAME}       ${COUNTRY GROUP COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Country Group Management Grid Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Country Group Management Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Country Group Management Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Country Group Management Grid Column Names By Order

Validate Country Group Management Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${COUNTRY GROUP SCOPE COLUMN NAME}       ${COUNTRY GROUP SCOPE COLUMN NAME}       @{COLUMN NAME LIST}

Validate Close Country Groups Tab After Altering To Check Grid
   [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Tab        ${COUNTRY GROUPS TAB NAME}

Validate Click Country Submenu To Check Grid
    [Tags]    REGRESSION
    Verify Click Country Submenu

Validate Click Country Groups Button To Check Grid
    [Tags]    REGRESSION
    Verify Click Country Groups Button

Validate Click Create Country Groups Button To Check Grid
    [Tags]    REGRESSION
    Verify Click Create Country Group Button

Validate Set Country Group For Create To Check Grid
    [Tags]    REGRESSION
    Verify Set Country Group    ${TEST DATA PREFIX}

Validate Set Country Group Scope For Create To Check Grid
    [Tags]    REGRESSION
    Verify Set Country Group Scope   ${COUNTRY GROUP SCOPE}

Validate Move Available Countries To Destination To Check Grid
    [Tags]    REGRESSION
    Verify Move Available Countries To Destination

Validate Click Save Country Groups Button To Check Grid
    [Tags]    REGRESSION
    Verify Click Save Country Group

Validate Close Country Group Tab To Check Grid
    [Tags]    REGRESSION
    Verify Close Country Group Tab

Validate Click Country Groups Button After Closing Tab To Check Grid
    [Tags]    REGRESSION
    Verify Click Country Groups Button

Validate Select Country Group To Check Grid
    [Tags]    REGRESSION
    Verify Select Country Group

Validate Click Country Group Search Button To Check Grid
    [Tags]    REGRESSION
    Verify Click Country Group Search Button

Validate Get Country Group Grid Row Details To Check Grid
    [Tags]    REGRESSION
    Verify Get Country Group Grid Row Details

Validate Country Group To Check Grid
    [Tags]    REGRESSION
    Verify Country Group

Validate Country Group Scope To Check Grid
    [Tags]    REGRESSION
    Verify Country Group Scope      ${COUNTRY GROUP SCOPE}