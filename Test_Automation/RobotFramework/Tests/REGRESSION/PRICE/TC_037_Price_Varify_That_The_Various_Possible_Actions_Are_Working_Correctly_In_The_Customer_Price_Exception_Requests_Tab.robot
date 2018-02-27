*** Settings ***
Documentation     A Test Suite With Set Of Tests For Privce Varify That The Various Possible Actions Are Working Correctly In the Customer Price Exception Requests Tab Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}     ${EMPTY}
@{COLUMN NAME LIST}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Customer Price Exception Request Link
    [Tags]    REGRESSION
    Verify Click Customer Price Exception Request Link

Validate Set Customer Price Exception Request Grid Settings
    [Tags]    REGRESSION
    Verify Set Customer Price Exception Request Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Specific Column From Customer Price Exception Request Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Customer Price Exception Request Grid        ${DESTINATION COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Customer Price Exception Request Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Customer Price Exception Request Grid Column In Descending Order       ${DESTINATION COLUMN NAME}

Validate Get All Rows of Destination Column From Customer Price Exception Request Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Customer Price Exception Request Grid    ${DESTINATION COLUMN NAME}

Validate Descending Sorted Data For Customer Price Exception Request Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Customer Price Exception Request Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Customer Price Exception Request Grid Column In Ascending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Destination Column From Customer Price Exception Request Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Customer Price Exception Request Grid     ${DESTINATION COLUMN NAME}

Validate Ascending Sorted Data For Customer Price Exception Request Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Customer Price Exception Request Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Customer Price Exception Request Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Customer Price Exception Request Grid Column
    [Tags]    REGRESSION
    Verify Drag Customer Price Exception Request Grid Column     ${CUSTOMER COLUMN NAME}         ${DESTINATION COLUMN NAME}

Validate Get Customer Price Exception Request Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Customer Price Exception Request Grid Column Names By Order

Validate Customer Price Exception Request Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${CUSTOMER COLUMN NAME}       ${DESTINATION COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Customer Price Exception Request Grid Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Customer Price Exception Request Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Customer Price Exception Request Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Customer Price Exception Request Grid Column Names By Order

Validate Customer Price Exception Request Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${DESTINATION COLUMN NAME}       ${DESTINATION COLUMN NAME}       @{COLUMN NAME LIST}

Validate Select Multiple Rows From Customer Price Exception Request Grid
    [Tags]    REGRESSION
    Verify Select Multiple Rows From Customer Price Exception Request Grid

Validate Click Customer Price Exception Request Grid Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Customer Price Exception Request Grid Bulk Edit Button

Validate Set Customer Price Exception Request Grid Bulk Edit End Date
    [Tags]    REGRESSION
    Verify Set Price Overrides Bulk Edit End Date       ${PRICE OVERRIDES END DATE}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Save Changes Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Save Changes Button

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Customer Price Exception Request Grid Export To Excel Button