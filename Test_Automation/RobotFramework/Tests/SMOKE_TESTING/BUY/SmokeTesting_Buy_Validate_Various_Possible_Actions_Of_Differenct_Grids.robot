*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Buy To Validate Various Possible Actions of Different Grids

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{COLUMN NAME LIST}
@{ALL ROW DATA}

*** Test Cases ***
Validate navigate to Buy module
    [Tags]    SMOKE TESTING
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Navigate To Vendors Tab
    [Tags]    SMOKE TESTING
    Verify Click On Vendors Tab

Validate Set Vendors Grid Settings
    [Tags]    SMOKE TESTING
    Verify Set Vendors Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Vendor Column From Vendors Grid
    [Tags]    SMOKE TESTING
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Vendors Grid        ${VENDOR COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Vendors Grid Column In Descending Order
    [Tags]    SMOKE TESTING
    Verify Sort Vendors Grid Column In Descending Order      ${VENDOR COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendors Grid For Descending Sort
    [Tags]    SMOKE TESTING
    Verify Get All Rows of Specific Column From Vendors Grid        ${VENDOR COLUMN NAME}

Validate Descending Sorted Data For Vendors Column
    [Tags]    SMOKE TESTING
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Vendors Grid Column In Ascending Order
    [Tags]    SMOKE TESTING
    Verify Sort Vendors Grid Column In Ascending Order      ${VENDOR COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendors Grid For Ascending Sort
    [Tags]    SMOKE TESTING
    Verify Get All Rows of Specific Column From Vendors Grid        ${VENDOR COLUMN NAME}

Validate Ascending Sorted Data For Vendors Column
    [Tags]    SMOKE TESTING
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Vendors Grid Column Name List
    [Tags]    SMOKE TESTING
    @{COLUMN NAME LIST} =   Verify Get Vendors Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Vendors Grid Column
    [Tags]    SMOKE TESTING
    Verify Drag Vendors Grid Column     ${VENDOR COLUMN NAME}       ${STATUS COLUMN NAME}

Validate Get Vendors Grid Column Name List After Altering
    [Tags]    SMOKE TESTING
    Verify Get Vendors Grid Column Names By Order

Validate Grid Column Position After Altering
    [Tags]    SMOKE TESTING
    Verify Grid Column Position After Altering      ${VENDOR COLUMN NAME}       ${STATUS COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Vendors Grid Settings After Validation
    [Tags]    SMOKE TESTING
    Verify Set Vendors Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Click Vendor Price Lists Button
    [Tags]    SMOKE TESTING
    Verify Click On Vendor Price Lists

Validate Set From Date
    [Tags]    SMOKE TESTING
    Verify Set From Date        1/1/2017

Validate Click Vendor Price Lists Search Button
    [Tags]    SMOKE TESTING
    Verify Click On Vendor Price Lists Search Button

Validate Set Vendor Price Lists Grid Settings
    [Tags]    SMOKE TESTING
    Verify Set Vendor Price Lists Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Vendor Column From Vendor Price Lists Grid
    [Tags]    SMOKE TESTING
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Vendor Price Lists Grid        ${VENDOR COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Vendor Price Lists Grid Column In Ascending Order
    [Tags]    SMOKE TESTING
    Verify Sort Vendor Price Lists Grid Column In Ascending Order      ${VENDOR COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Ascending Sort
    [Tags]    SMOKE TESTING
    Verify Get All Rows of Specific Column From Vendor Price Lists Grid     ${VENDOR COLUMN NAME}

Validate Ascending Sorted Data For Vendor Price Lists Grid Column
    [Tags]    SMOKE TESTING
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Vendor Price Lists Grid Column In Descending Order
    [Tags]    SMOKE TESTING
    Verify Sort Vendor Price Lists Grid Column In Descending Order      ${VENDOR COLUMN NAME}

Validate Get All Rows of Vendor Column From Vendor Price List Grid For Descending Sort
    [Tags]    SMOKE TESTING
    Verify Get All Rows of Specific Column From Vendor Price Lists Grid     ${VENDOR COLUMN NAME}

Validate Descending Sorted Data For Vendor Price Lists Grid Column
    [Tags]    SMOKE TESTING
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Vendor Price Lists Grid Column Name List
    [Tags]    SMOKE TESTING
    @{COLUMN NAME LIST} =   Verify Get Vendor Price Lists Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Vendor Price Lists Grid Column
    [Tags]    SMOKE TESTING
    Verify Drag Vendor Price Lists Grid Column     ${VENDOR COLUMN NAME}       ${STATUS COLUMN NAME}

Validate Get Vendor Price Lists Grid Column Name List After Altering
    [Tags]    SMOKE TESTING
    Verify Get Vendor Price Lists Grid Column Names By Order

Validate Vendor Price Lists Grid Column Position After Altering
    [Tags]    SMOKE TESTING
    Verify Grid Column Position After Altering      ${VENDOR COLUMN NAME}       ${STATUS COLUMN NAME}       @{COLUMN NAME LIST}

Validate Close Vendor Price Lists Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${VENDOR PRICE LISTS TAB NAME}

Validate Click Vendors Grid First Row Inline Action Button For Rates
    [Tags]    SMOKE TESTING
    Verify Click Vendors Grid First Row Inline Action Button

Validate Select Vendor Rates Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Buy Page Inline Action Item       ${VENDOR RATES INLINE ITEM NAME}

Validate Get All Rows of Rating Product Column From Rates Grid
    [Tags]    SMOKE TESTING
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Rates Grid        ${RATING PRODUCT COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Rates Grid Column In Ascending Order
    [Tags]    SMOKE TESTING
    Verify Sort Rates Grid Column In Ascending Order      ${RATING PRODUCT COLUMN NAME}

Validate Get All Rows of Rating Product Column From Rates Grid For Ascending Sort
    [Tags]    SMOKE TESTING
    Verify Get All Rows of Specific Column From Rates Grid        ${RATING PRODUCT COLUMN NAME}

Validate Ascending Sorted Data For Rates Grid Column
    [Tags]    SMOKE TESTING
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Rates Grid Column In Descending Order
    [Tags]    SMOKE TESTING
    Verify Sort Rates Grid Column In Descending Order      ${RATING PRODUCT COLUMN NAME}

Validate Get All Rows of Rating Product Column From Rates Grid For Descending Sort
    [Tags]    SMOKE TESTING
    Verify Get All Rows of Specific Column From Rates Grid        ${RATING PRODUCT COLUMN NAME}

Validate Descending Sorted Data For Rates Grid Column
    [Tags]    SMOKE TESTING
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Rates Grid Column Name List
    [Tags]    SMOKE TESTING
    @{COLUMN NAME LIST} =   Verify Get Rates Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Rates Grid Column
    [Tags]    SMOKE TESTING
    Verify Drag Rates Grid Column     ${RATING PRODUCT COLUMN NAME}       ${RATE1 COLUMN NAME}

Validate Get Rates Grid Column Name List After Altering
    [Tags]    SMOKE TESTING
    Verify Get Rates Grid Column Names By Order

Validate Rates Grid Column Position After Altering
    [Tags]    SMOKE TESTING
    Verify Grid Column Position After Altering      ${RATING PRODUCT COLUMN NAME}       ${RATE1 COLUMN NAME}       @{COLUMN NAME LIST}

Validate Close Rates Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${VENDOR PROFILE TAB NAME}

Validate Click Vendors Grid First Row Inline Action Button For Destinations
    [Tags]    SMOKE TESTING
    Verify Click Vendors Grid First Row Inline Action Button

Validate Select Vendor Destinations Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Buy Page Inline Action Item       ${VENDOR DESTINATION INLINE ITEM NAME}

Validate Get All Rows of Destination Column From Destinations Grid
    [Tags]    SMOKE TESTING
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Destinations Grid        ${DESTINATION COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Destinations Grid Column In Ascending Order
    [Tags]    SMOKE TESTING
    Verify Sort Destinations Grid Column In Ascending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Destination Column From Destinations Grid For Ascending Sort
    [Tags]    SMOKE TESTING
    Verify Get All Rows of Specific Column From Destinations Grid        ${DESTINATION COLUMN NAME}

Validate Ascending Sorted Data For Destinations Grid Column
    [Tags]    SMOKE TESTING
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Destinations Grid Column In Descending Order
    [Tags]    SMOKE TESTING
    Verify Sort Destinations Grid Column In Descending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Destination Column From Destinations Grid For Descending Sort
    [Tags]    SMOKE TESTING
    Verify Get All Rows of Specific Column From Destinations Grid        ${DESTINATION COLUMN NAME}

Validate Descending Sorted Data For Destinations Grid Column
    [Tags]    SMOKE TESTING
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Destinations Grid Column Name List
    [Tags]    SMOKE TESTING
    @{COLUMN NAME LIST} =   Verify Get Destinations Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Destinations Grid Column
    [Tags]    SMOKE TESTING
    Verify Drag Destinations Grid Column     ${DESTINATION COLUMN NAME}       ${BEGIN DATE COLUMN NAME}

Validate Get Destinations Grid Column Name List After Altering
    [Tags]    SMOKE TESTING
    Verify Get Destinations Grid Column Names By Order

Validate Destinations Grid Column Position After Altering
    [Tags]    SMOKE TESTING
    Verify Grid Column Position After Altering      ${DESTINATION COLUMN NAME}       ${BEGIN DATE COLUMN NAME}       @{COLUMN NAME LIST}

Validate Close Destinations Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${VENDOR PROFILE TAB NAME}

Validate Click Vendors Grid First Row Inline Action Button For Dial Digits
    [Tags]    SMOKE TESTING
    Verify Click Vendors Grid First Row Inline Action Button

Validate Select Vendor Digits Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Buy Page Inline Action Item       ${VENDOR DIGITS INLINE ITEM NAME}

Validate Get All Rows of Vendor Column From Dial Digits Grid
    [Tags]    SMOKE TESTING
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Dial Digits Grid        ${DESTINATION COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Dial Digits Grid Column In Ascending Order
    [Tags]    SMOKE TESTING
    Verify Sort Dial Digits Grid Column In Ascending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Destination Column From Dial Digits Grid For Ascending Sort
    [Tags]    SMOKE TESTING
    Verify Get All Rows of Specific Column From Dial Digits Grid        ${DESTINATION COLUMN NAME}

Validate Ascending Sorted Data For Dial Digits Grid Column
    [Tags]    SMOKE TESTING
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Sort Dial Digits Grid Column In Descending Order
    [Tags]    SMOKE TESTING
    Verify Sort Dial Digits Grid Column In Descending Order      ${DESTINATION COLUMN NAME}

Validate Get All Rows of Destination Column From Dial Digits Grid For Descending Sort
    [Tags]    SMOKE TESTING
    Verify Get All Rows of Specific Column From Dial Digits Grid        ${DESTINATION COLUMN NAME}

Validate Descending Sorted Data For Dial Digits Grid Column
    [Tags]    SMOKE TESTING
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Get Dial Digits Grid Column Name List
    [Tags]    SMOKE TESTING
    @{COLUMN NAME LIST} =   Verify Get Dial Digits Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Dial Digits Grid Column
    [Tags]    SMOKE TESTING
    Verify Drag Dial Digits Grid Column     ${DESTINATION COLUMN NAME}       ${BEGIN DATE COLUMN NAME}

Validate Get Dial Digits Grid Column Name List After Altering
    [Tags]    SMOKE TESTING
    Verify Get Dial Digits Grid Column Names By Order

Validate Dial Digits Grid Column Position After Altering
    [Tags]    SMOKE TESTING
    Verify Grid Column Position After Altering      ${DESTINATION COLUMN NAME}       ${BEGIN DATE COLUMN NAME}       @{COLUMN NAME LIST}
