*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create And Delete Category Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Groups And Categories Menu
    [Tags]    REGRESSION
    Verify Expand Groups And Categories Menu

Validate Click Categories Submenu
    [Tags]    REGRESSION
    Verify Click Categories Submenu

Validate Click New Category Button
    [Tags]    REGRESSION
    Verify Click New Category Button

Validate Set Category Scope For New Category
    [Tags]    REGRESSION
    Verify Set Category Scope For New Category      ${CATEGORY SCOPE}

Validate Set Category Type For New Category
    [Tags]    REGRESSION
    Verify Set Category Type For New Category      @{CATEGORY TYPE LIST}

Validate Set Category Name
    [Tags]    REGRESSION
    Verify Set Category Name      @{CATEGORY NAME LIST}

Validate Set Category Abbreviation
    [Tags]    REGRESSION
    Verify Set Category Abbreviation      ${CATEGORY ABBREVIATION}

Validate Click New Category Save Button
    [Tags]    REGRESSION
    Verify Click New Category Save Button

Validate Set Category Scope For Search
    [Tags]    REGRESSION
    Verify Set Category Scope      @{CATEGORY SCOPE LIST}

Validate Set Category Type For Search
    [Tags]    REGRESSION
    Verify Set Category Type      @{CATEGORY TYPE LIST}

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Grid Filter Details
    [Tags]    REGRESSION
    Verify Grid Filter Details      ${CATEGORY COLUMN NAME}     @{CATEGORY NAME LIST}

Validate Get Categories Grid Row Details
    [Tags]    REGRESSION
    Verify Get Categories Grid Row Details

Validate Categories Grid Row Data
    [Tags]    REGRESSION
    Verify Categories Grid Row Data     ${CATEGORY SCOPE}       @{CATEGORY TYPE LIST}        @{CATEGORY NAME LIST}        ${CATEGORY ABBREVIATION}

Validate Select Categories Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Categories Grid Row Checkbox      @{CATEGORY NAME LIST}

Validate Click Categories Grid Delete Button
    [Tags]    REGRESSION
    Verify Click Categories Grid Delete Button

Validate Click New Category Button For New Source
    [Tags]    REGRESSION
    Verify Click New Category Button

Validate Set Category Scope For New Category For New Source
    [Tags]    REGRESSION
    Verify Set Category Scope For New Category      ${CATEGORY SCOPE}

Validate Set Category Type For New Category For New Source
    [Tags]    REGRESSION
    Verify Set Category Type For New Category      @{CATEGORY TYPE LIST}

Validate Set Category Name For New Source
    [Tags]    REGRESSION
    Verify Set Category Name      @{CATEGORY NAME LIST}

Validate Set Category Abbreviation For New Source
    [Tags]    REGRESSION
    Verify Set Category Abbreviation      ${CATEGORY ABBREVIATION}

Validate Click New Category Save Button For New Source
    [Tags]    REGRESSION
    Verify Click New Category Save Button
