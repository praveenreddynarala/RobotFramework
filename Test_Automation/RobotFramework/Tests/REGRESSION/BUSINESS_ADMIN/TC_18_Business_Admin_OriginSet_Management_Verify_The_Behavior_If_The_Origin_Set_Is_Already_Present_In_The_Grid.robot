*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Origin Set Management To Verify The Behavior If The Origin Set Is Already Present In The Grid

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ORIGIN SET}           ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Origin Set Name
    [Tags]    REGRESSION
    ${ORIGIN SET} =     Verify Get Origin Set Name
    set suite variable      ${ORIGIN SET}

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Origin Set Submenu
    [Tags]    REGRESSION
    Verify Click Origin Set Submenu

Validate Click New Origin Set Button
    [Tags]    REGRESSION
    Verify Click New Origin Set Button

Validate Set Origin Set For Add New Origin Set
    [Tags]    REGRESSION
    Verify Set Origin Set        ${ORIGIN SET}

Validate Set Rule of Missing A
    [Tags]    REGRESSION
    Verify Set Rule of Missing A        ${RULE OF MISSING A FOR ADD ORIGIN SET}

Validate Set Rule of Invalid A
    [Tags]    REGRESSION
    Verify Set Rule of Invalid A        ${RULE OF MISSING A FOR ADD ORIGIN SET}

Validate Click Add Origin Set Ok Button For Duplicate
    [Tags]    REGRESSION
    Verify Click Add Origin Set Ok Button For Duplicate

Validate Click Add Origin Set Cancel Button
    [Tags]    REGRESSION
    Verify Click Add Origin Set Cancel Button