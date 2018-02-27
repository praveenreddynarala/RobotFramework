*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify that the Grid Related Actions are Working Properly in the Country Group screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${AVAILABLE COUNTRY}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click On Country Groups Link
    [Tags]    REGRESSION
    Verify Click On Country Groups Link

Validate Set Country Group Management Grid Settings
    [Tags]    REGRESSION
    Verify Set Country Group Management Grid Settings    ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Specific Column From Country Group Management Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Country Group Management Grid     ${COUNTRY GROUP COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Country Group Management Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Country Group Management Grid Column In Descending Order    ${COUNTRY GROUP COLUMN NAME}

Validate Get All Rows of Country Group Column From Country Group Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Group Management Grid   ${COUNTRY GROUP COLUMN NAME}

Validate Descending Sorted Data For Country Group Management Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Country Group Management Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Country Group Management Grid Column In Ascending Order    ${COUNTRY GROUP COLUMN NAME}

Validate Get All Rows of Country Group Column From Country Group Management Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Country Group Management Grid    ${COUNTRY GROUP COLUMN NAME}

Validate Ascending Sorted Data For Country Group Management Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Reset Country Group Management Grid Settings
    [Tags]    REGRESSION
    Verify Set Country Group Management Grid Settings    ${RESET COLUMN ORDER GRID SETTINGS}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Country Group Management Grid Export To Excel Button