*** Settings ***
Documentation     [TAENOSIS-964] Verify Account Category is Displayed in Carrier Screens

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CATEGORY1}        ${EMPTY}
${CATEGORY2}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin Module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Groups and Categories Menu
    [Tags]    REGRESSION
    Verify Expand Groups and Categories Menu

Validate Click Categories Submenu
    [Tags]    REGRESSION
    Verify Click Categories Submenu

Validate Set Category Scope for Category#1
    [Tags]    REGRESSION
    Verify Set Category Scope       ${CATEGORY SCOPE ACCOUNT}

Validate Click Categories Search Button
    [Tags]    REGRESSION
    Verify Click Categories Search Button

Validate Click New Category Button for Category#1
    [Tags]    REGRESSION
    Verify Click New Category Button

Validate Set Category Scope For New Category#1
    [Tags]    REGRESSION
    Verify Set Category Scope For New Category          ${CATEGORY SCOPE ACCOUNT}

Validate Set Category Type For New Category#1
    [Tags]    REGRESSION
    Verify Set Category Type For New Category       ${ACCOUNT CATEGORY TYPE#1}

Validate Set Category Name For New Category#1
    [Tags]    REGRESSION
    Verify Set Category Name       ${TEST DATA PREFIX}

Validate Set Category Abbreviation For New Category#1
    [Tags]    REGRESSION
    Verify Set Category Abbreviation    ${TEST DATA PREFIX}

Validate Click New Category Save Button For New Category#1
    [Tags]    REGRESSION
    Verify Click New Category Save Button

Validate Get Created Category#1
    [Tags]    REGRESSION
    ${CATEGORY1} =      Verify Get Created Category
    set suite variable      ${CATEGORY1}

Validate Click New Category Button for Category#2
    [Tags]    REGRESSION
    Verify Click New Category Button

Validate Set Category Scope For New Category#2
    [Tags]    REGRESSION
    Verify Set Category Scope For New Category          ${CATEGORY SCOPE ACCOUNT}

Validate Set Category Type For New Category#2
    [Tags]    REGRESSION
    Verify Set Category Type For New Category       ${ACCOUNT CATEGORY TYPE#2}

Validate Set Category Name For New Category#2
    [Tags]    REGRESSION
    Verify Set Category Name        ${TEST DATA PREFIX}

Validate Set Category Abbreviation For New Category#2
    [Tags]    REGRESSION
    Verify Set Category Abbreviation    ${TEST DATA PREFIX}

Validate Click New Category Save Button For New Category#2
    [Tags]    REGRESSION
    Verify Click New Category Save Button

Validate Get Created Category#2
    [Tags]  REGRESSION
    ${CATEGORY2} =      Verify Get Created Category
    set suite variable      ${CATEGORY2}

Validate Close Business Admin Module
    [Tags]  REGRESSION
    Verify Close Business Admin Window

Validate Navigate to Carrier Screen
    [Tags]  REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click Create Carrier Button
    [Tags]  REGRESSION
    Verify Click Create Carrier Button

Validate Create Carrier Window Carrier Category1
    [Tags]  REGRESSION
    Verify Set Create Carrier Window Carrier Category1      ${CATEGORY1}

Validate Create Carrier Window Carrier Category2
    [Tags]  REGRESSION
    Verify Set Create Carrier Window Carrier Category2      ${CATEGORY2}

Validate Close Create Carrier Window
    [Tags]  REGRESSION
    carrier_page_resource.Verify Close Current Pop Up         ${CREATE CARRIER POPUP NAME}