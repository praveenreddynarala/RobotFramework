*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create New CSNP Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${RATING METHOD}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin Module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate Get Rating Method
    [Tags]    REGRESSION
    ${RATING METHOD} =     Verify Get Rating Method
    log  ${RATING METHOD}
    set suite variable      ${RATING METHOD}

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Number Plan Submenu
    [Tags]    REGRESSION
    Verify Click Number Plan Submenu

Validate Click New CSNP Button
    [Tags]    REGRESSION
    Verify Click New CSNP Button

Validate Set CSNP Type
    [Tags]    REGRESSION
    Verify Set CSNP Type    ${CSNP TYPE}

Validate Set CSNP Number Plan
    [Tags]    REGRESSION
    Verify Set CSNP Number Plan         ${TEST DATA PREFIX}

Validate Set CSNP Number Plan Abbreviation
    [Tags]    REGRESSION
    Verify Set CSNP Number Plan Abbreviation        ${TEST DATA PREFIX}

Validate Set Services
    [Tags]    REGRESSION
    Verify Set Services         @{SERVICES LIST}

Validate Set Default Primary Blending Method
    [Tags]    REGRESSION
    Verify Set Default Primary Blending Method      ${PRIMARY BLENDING METHOD}

Validate Set Default Destination Type
    [Tags]    REGRESSION
    Verify Set Default Destination Type         ${DEFAULT DESTINATION TYPE}

Validate Set Call Char
    [Tags]    REGRESSION
    Verify Set Default Call Char        ${DEFAULT CALL CHAR}

Validate Set Default Rating Method
    [Tags]    REGRESSION
    Verify Set Default Rating Method        ${RATING METHOD}

Validate Set Enter Min
    [Tags]    REGRESSION
    Verify Set Enter Min        ${ENTER MIN}

Validate Set Enter Max
    [Tags]    REGRESSION
    Verify Set Enter Max        ${ENTER MAX}

Validate Set Define Fixed Blending Security
    [Tags]    REGRESSION
    Verify Set Define Fixed Blending Security       ${FIXED BLENDING SECURITY}

Validate Set Define Minmax Blending Security
    [Tags]    REGRESSION
    Verify Set Define Minmax Blending Security      ${MINMAX BLENDING SECURITY}

Validate Click New CSNP Save Button
    [Tags]    REGRESSION
    Verify Click New CSNP Save Button
