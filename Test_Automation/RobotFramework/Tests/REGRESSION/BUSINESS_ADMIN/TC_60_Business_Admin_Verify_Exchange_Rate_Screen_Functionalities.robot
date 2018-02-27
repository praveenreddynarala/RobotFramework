*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Exchange Rates Screen Common Functionalities

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}
${CURRENCY NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Currency And Exchange Rates Menu
    [Tags]    REGRESSION
    Verify Expand Currency And Exchange Rates Menu

Validate Click Currency And Exchange Rates Submenu
    [Tags]    REGRESSION
    Verify Click Currency And Exchange Rates Submenu

Validate Set Exchange Rates Reset All Grid Settings
    [Tags]    REGRESSION
    Verify Set Exchange Rates Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows of Category Column From Exchange Rates Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Exchange Rates Grid        Currency
    set suite variable      @{ALL ROW DATA}

Validate Sort Exchange Rates Grid Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Exchange Rates Grid Column In Descending Order      Currency

Validate Get All Rows of Category Column From Exchange Rates Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Exchange Rates Grid     Currency

Validate Descending Sorted Data For Exchange Rates Grid Column
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Exchange Rates Grid Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Exchange Rates Grid Column In Ascending Order      Currency

Validate Get All Rows of Category Column From Exchange Rates Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Exchange Rates Grid     Currency

Validate Ascending Sorted Data For Exchange Rates Grid Column
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Exchange Rates Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Exchange Rates Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Exchange Rates Grid Column
    [Tags]    REGRESSION
    Verify Drag Exchange Rates Grid Column     Currency       Exchange Rate

Validate Get Exchange Rates Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Exchange Rates Grid Column Names By Order

Validate Exchange Rates Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Currency       Exchange Rate       @{COLUMN NAME LIST}

Validate Set Exchange Rates Reset Column Order Grid Settings
    [Tags]    REGRESSION
    Verify Set Exchange Rates Grid Settings        ${RESET COLUMN ORDER GRID SETTINGS}

Validate Get Exchange Rates Grid Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Exchange Rates Grid Column Names By Order

Validate Exchange Rates Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      Currency       Currency       @{COLUMN NAME LIST}

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Exchange Rates Grid Export To Excel Button

Validate Get Currency Name
    [Tags]    REGRESSION
    ${CURRENCY NAME} =     Verify Get Currency Name
    log  ${CURRENCY NAME}
    set suite variable      ${CURRENCY NAME}

Validate Click New Exchange Rate Button
    [Tags]    REGRESSION
    Verify Click New Exchange Rate Button

Validate Set Exchange Rate Type
    [Tags]    REGRESSION
    Verify Set Exchange Rate Type       ${EXCHANGE RATE TYPE}

Validate Set Currency
    [Tags]    REGRESSION
    Verify Set Currency     ${CURRENCY NAME}

Validate Set Exchange Rate
    [Tags]    REGRESSION
    Verify Set Exchange Rate        ${EXCHANGE RATE}

Validate Set Exchange Rate Begin Date
    [Tags]    REGRESSION
    Verify Set Exchange Rate Begin Date     ${EXCHANGE RATE BEGIN DATE}

Validate Click Add Exchange Rate Save Button
    [Tags]    REGRESSION
    Verify Click Add Exchange Rate Save Button

Validate Set Exchange Rate Type For Search
    [Tags]    REGRESSION
    Verify Set Exchange Rate Types For Search       @{EXCHANGE RATE TYPE LIST}

Validate Set Currency For Search
    [Tags]    REGRESSION
    Verify Set Currency For Search     ${CURRENCY NAME}

Validate Set Exchange Rate Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Exchange Rate Begin Date For Search

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Get Exchange Rates Grid Row Details
    [Tags]    REGRESSION
    Verify Get Exchange Rates Grid Row Details

Validate Exchange Rates Grid Row Details
    [Tags]    REGRESSION
    Verify Exchange Rates Grid Row Details      ${EXCHANGE RATE TYPE}    ${CURRENCY NAME}

Validate Set Currency Grid First Row Currency Symbol
    [Tags]    REGRESSION
    Verify Set Exchange Rates Grid First Row Exchange Rate

Validate Click Save Changes Button
    [Tags]    REGRESSION
    Verify Click Save Changes Button

Validate Click Exchange Rates Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Exchange Rates Grid Inline Action Button       ${EXCHANGE RATE TYPE}

Validate Click Exchange Rate Delete Inline Item
    [Tags]    REGRESSION
    Verify Click Exchange Rate Delete Inline Item

Validate Log Out Functionality From Business Admin
    [Tags]    REGRESSION
    Validate Log Out Functionality

Validate Login With Valid Credential
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to Business Admin module To Perform Search Functionality
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available To Perform Search Functionality
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Currency And Exchange Rates Menu To Perform Search Functionality
    [Tags]    REGRESSION
    Verify Expand Currency And Exchange Rates Menu

Validate Click Currency And Exchange Rates Submenu To Perform Search Functionality
    [Tags]    REGRESSION
    Verify Click Currency And Exchange Rates Submenu

Validate Set Empty Value In Exchange Rate Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Exchange Rate Begin Date For Search      ${EMPTY}

Validate Click Search Button Without Search Criteria
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Error Message For Empty Search Criteria
    [Tags]    REGRESSION
    Verify Error Message For Empty Search Criteria

Validate Set 1/1/2015 In Exchange Rate Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Exchange Rate Begin Date For Search      1/1/2015

Validate Set 1/1/2018 In Exchange Rate End Date For Search
    [Tags]    REGRESSION
    Verify Set End Date     1/1/2018

Validate Click Search Button With Specific Begin And End Date
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Compare Begin Date With 1/1/2015
    [Tags]    REGRESSION
    Verify Compare Begin Date With Given Date       1/1/2015

Validate Compare End Date With 1/1/2018
    [Tags]    REGRESSION
    Verify Compare End Date With Given Date     1/1/2018

Validate Set In Exchange Rate End Date For Search
    [Tags]    REGRESSION
    Verify Set End Date     ${EMPTY}

Validate Click Search Button With Specific Begin Date
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Compare Begin Date With 1/1/2015 And Without End Date
    [Tags]    REGRESSION
    Verify Compare Begin Date With Given Date       1/1/2015

Validate Compare End Date
    [Tags]    REGRESSION
    Verify Compare End Date With Given Date