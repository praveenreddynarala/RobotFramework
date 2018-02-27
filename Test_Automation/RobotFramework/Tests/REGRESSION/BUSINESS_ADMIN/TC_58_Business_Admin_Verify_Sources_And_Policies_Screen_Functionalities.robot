*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Source And Policies Screen Functionalities

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Policies Grid Reset All Grid Settings
    [Tags]    REGRESSION
    Verify Set Source Policies Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Source Column From Source Policies Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Source Policies Grid        Source
    set suite variable      @{ALL ROW DATA}

Validate Sort Source Policies Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Source Policies Grid Column In Descending Order      Source

Validate Get All Rows of Source Column From Source Policies Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Source Policies Grid     Source

Validate Descending Sorted Data For Source Policies Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Source Policies Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Source Policies Grid Column In Ascending Order      Source

Validate Get All Rows of Source Column From Source Policies Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Source Policies Grid     Source

Validate Ascending Sorted Data For Source Policies Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Source Policies Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Source Policies Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Source Policies Grid Column
    [Tags]    REGRESSION
    Verify Drag Source Policies Grid Column     Source       Source Type

Validate Get Source Policies Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Source Policies Grid Column Names By Order

Validate Source Policies Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Source       Source Type       @{COLUMN NAME LIST}

Validate Set Source Policies Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Source Policies Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Source Policies Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Source Policies Grid Column Names By Order

Validate Source Policies Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Source       Source       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Source Policies Grid Export To Excel Button

Validate Click Source Policies Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Source Policies Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Route Class Inline Action Item        ${COPY SOURCE INLINE ACTION ITEM}

Validate Copy Source Pop Up Opened Properly
    [Tags]    REGRESSION
    Verify Copy Source Pop Up Opened Properly

Validate Click Copy Source Cancel Button
    [Tags]    REGRESSION
    Verify Click Copy Source Cancel Button