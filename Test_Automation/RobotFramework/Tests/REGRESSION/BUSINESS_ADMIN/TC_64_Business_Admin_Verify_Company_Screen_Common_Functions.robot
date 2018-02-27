*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Company Screen Common Functions

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}                 ${EMPTY}
@{COLUMN NAME LIST}             ${EMPTY}
${COMPANY NAME}                 ${EMPTY}
${DUPLICATE COMPANY NAME}       ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate Expand Company Menu
    [Tags]    REGRESSION
    Verify Expand Company Menu

Validate Click Company Submenu
    [Tags]    REGRESSION
    Verify Click Company Submenu

Validate Set Company Grid Reset All Grid Settings
    [Tags]    REGRESSION
    Verify Set Company Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Company Column From Company Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Company Grid        ${COMPANY COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Company Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Company Grid Column In Descending Order      ${COMPANY COLUMN NAME}

Validate Get All Rows of Company Column From Company Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Company Grid     ${COMPANY COLUMN NAME}

Validate Descending Sorted Data For Company Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Company Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Company Grid Column In Ascending Order      ${COMPANY COLUMN NAME}

Validate Get All Rows of Company Column From Company Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Company Grid     ${COMPANY COLUMN NAME}

Validate Ascending Sorted Data For Company Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Company Grid Reset All Grid Settings For Company Code Column
    [Tags]    REGRESSION
    Verify Set Company Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Company Code Column From Company Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Company Grid        ${COMPANY CODE COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Company Grid Column In Descending Order For Company Code Column
    [Tags]    REGRESSION
    Verify Sort Company Grid Column In Descending Order      ${COMPANY CODE COLUMN NAME}

Validate Get All Rows of Company Code Column From Company Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Company Grid     ${COMPANY CODE COLUMN NAME}

Validate Descending Sorted Data For Company Code Column Of Company Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Company Grid Column In Ascending Order For Company Code Column
    [Tags]    REGRESSION
    Verify Sort Company Grid Column In Ascending Order      ${COMPANY CODE COLUMN NAME}

Validate Get All Rows of Company Code Column From Company Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Company Grid     ${COMPANY CODE COLUMN NAME}

Validate Ascending Sorted Data For Company Code Column Of Company Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Company Grid Reset All Grid Settings For InterCompany Account Column
    [Tags]    REGRESSION
    Verify Set Company Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of InterCompany Account Column From Company Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Company Grid        ${INTERCOMPANY ACCOUNT COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Company Grid Column In Descending Order For InterCompany Account Column
    [Tags]    REGRESSION
    Verify Sort Company Grid Column In Descending Order      ${INTERCOMPANY ACCOUNT COLUMN NAME}

Validate Get All Rows of InterCompany Account Column From Company Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Company Grid     ${INTERCOMPANY ACCOUNT COLUMN NAME}

Validate Descending Sorted Data For InterCompany Account Column Of Company Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Company Grid Column In Ascending Order For InterCompany Account Column
    [Tags]    REGRESSION
    Verify Sort Company Grid Column In Ascending Order      ${INTERCOMPANY ACCOUNT COLUMN NAME}

Validate Get All Rows of InterCompany Account Column From Company Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Company Grid     ${INTERCOMPANY ACCOUNT COLUMN NAME}

Validate Ascending Sorted Data For InterCompany Account Column Of Company Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Company Grid Reset All Grid Settings For Country Column
    [Tags]    REGRESSION
    Verify Set Company Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Country Column From Company Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Company Grid        ${COUNTRY COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Company Grid Column In Descending Order For Country Column
    [Tags]    REGRESSION
    Verify Sort Company Grid Column In Descending Order      ${COUNTRY COLUMN NAME}

Validate Get All Rows of Country Column From Company Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Company Grid     ${COUNTRY COLUMN NAME}

Validate Descending Sorted Data For Country Column Of Company Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Company Grid Column In Ascending Order For Country Column
    [Tags]    REGRESSION
    Verify Sort Company Grid Column In Ascending Order      ${COUNTRY COLUMN NAME}

Validate Get All Rows of Country Column From Company Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Company Grid     ${COUNTRY COLUMN NAME}

Validate Ascending Sorted Data For Country Column Of Company Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Company Grid Reset All Grid Settings For Last Modified Column
    [Tags]    REGRESSION
    Verify Set Company Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Last Modified Column From Company Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Company Grid        ${LAST MODIFIED COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Company Grid Column In Descending Order For Last Modified Column
    [Tags]    REGRESSION
    Verify Sort Company Grid Column In Descending Order      ${LAST MODIFIED COLUMN NAME}

Validate Get All Rows of Last Modified Column From Company Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Company Grid     ${LAST MODIFIED COLUMN NAME}

Validate Descending Sorted Data For Last Modified Column Of Company Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Company Grid Column In Ascending Order For Last Modified Column
    [Tags]    REGRESSION
    Verify Sort Company Grid Column In Ascending Order      ${LAST MODIFIED COLUMN NAME}

Validate Get All Rows of Last Modified Column From Company Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Company Grid     ${LAST MODIFIED COLUMN NAME}

Validate Ascending Sorted Data For Last Modified Column Of Company Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Company Grid Reset All Grid Settings For Last Modified By Column
    [Tags]    REGRESSION
    Verify Set Company Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Last Modified By Column From Company Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Company Grid        ${LAST MODIFIED BY COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Company Grid Column In Descending Order For Last Modified By Column
    [Tags]    REGRESSION
    Verify Sort Company Grid Column In Descending Order      ${LAST MODIFIED BY COLUMN NAME}

Validate Get All Rows of Last Modified By Column From Company Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Company Grid     ${LAST MODIFIED BY COLUMN NAME}

Validate Descending Sorted Data For Last Modified By Column Of Company Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Company Grid Column In Ascending Order For Last Modified By Column
    [Tags]    REGRESSION
    Verify Sort Company Grid Column In Ascending Order      ${LAST MODIFIED BY COLUMN NAME}

Validate Get All Rows of Last Modified By Column From Company Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Company Grid     ${LAST MODIFIED BY COLUMN NAME}

Validate Ascending Sorted Data For Last Modified By Column Of Company Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Company Grid Reset Sort Grid Settings
    [Tags]    REGRESSION
    Verify Set Company Grid Settings        ${RESET SORT GRID SETTINGS}

Validate Set Company Grid Export To Excel Grid Settings
    [Tags]    REGRESSION
    Verify Set Company Grid Settings        ${EXPORT TO EXCEL GRID SETTINGS}

Validate Get Company Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Company Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Company Grid Column
    [Tags]    REGRESSION
    Verify Drag Company Grid Column     ${COMPANY COLUMN NAME}       ${COMPANY CODE COLUMN NAME}

Validate Set Company Grid Save Settings Grid Settings After Altering
    [Tags]    REGRESSION
    Verify Set Company Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Company Tab After Altering
   [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Tab        ${COMPANY TAB NAME}

Validate Click Company Submenu After Altering
    [Tags]    REGRESSION
    Verify Click Company Submenu

Validate Get Company Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Company Grid Column Names By Order

Validate Company Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${COMPANY COLUMN NAME}       ${COMPANY CODE COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Company Grid Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Company Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Company Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Company Grid Column Names By Order

Validate Company Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${COMPANY COLUMN NAME}       ${COMPANY COLUMN NAME}       @{COLUMN NAME LIST}

Validate Click New Company Button
    [Tags]    REGRESSION
    Verify Click New Company Button

Validate Set Business Admin Company Name
    [Tags]    REGRESSION
    Verify Set Business Admin Company Name     ${TEST DATA PREFIX}

Validate Click Company Save Button
    [Tags]    REGRESSION
    Verify Click Company Save Button

Validate Verify Get Business Admin Company Name
    [Tags]    REGRESSION
    ${COMPANY NAME} =       Verify Get Business Admin Company Name
    set suite variable          ${COMPANY NAME}

Validate Filter Company Grid
    [Tags]    REGRESSION
    Verify Filter Company Grid      ${COMPANY COLUMN NAME}     ${COMPANY NAME}

Validate Set Company Code
    [Tags]    REGRESSION
    Verify Set Company Code     ${TEST DATA PREFIX}

Validate Click Save Changes Button
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Save Changes Button

Validate Get Duplicate Company From Database
    [Tags]    REGRESSION
    ${DUPLICATE COMPANY NAME} =    Verify Get Duplicate Company From Database      ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log  ${DUPLICATE COMPANY NAME}
    set suite variable      ${DUPLICATE COMPANY NAME}

Validate Set Company For Search
    [Tags]    REGRESSION
    Verify Set Company For Search       ${DUPLICATE COMPANY NAME}

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Generic Search Button
