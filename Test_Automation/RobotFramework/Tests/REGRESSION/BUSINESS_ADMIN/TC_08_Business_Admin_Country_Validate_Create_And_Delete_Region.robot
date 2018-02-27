*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create and Delete Region

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${REGION NAME}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Country Submenu
    [Tags]    REGRESSION
    Verify Click Country Submenu

Validate Click Regions Button
    [Tags]    REGRESSION
    Verify Click Regions Button

Validate Click New Region Button
    [Tags]    REGRESSION
    Verify Click New Region Button

Validate Set Region In Regions Grid First Row Column
    [Tags]    REGRESSION
    Verify Set Value In Regions Grid First Row Column       ${REGION COLUMN NAME}       ${TEST DATA PREFIX}

Validate Set Region Abbreviation In Regions Grid First Row Column
    [Tags]    REGRESSION
    Verify Set Value In Regions Grid First Row Column       ${REGION ABBREVIATION COLUMN NAME}       ${REGION ABBREVIATION}

Validate Get Region Name
    [Tags]    REGRESSION
    ${REGION NAME} =     Verify Get Region Name
    set suite variable      ${REGION NAME}

Validate Select Regions Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Regions Grid Row Checkbox     ${REGION NAME}

Validate Click Regions Save Changes Button
    [Tags]    REGRESSION
    Verify Click Regions Save Changes Button

Validate Close Region Tab
    [Tags]    REGRESSION
    Verify Close Current Tab    ${REGION TAB NAME}

Validate Click Regions Button After Creation
    [Tags]    REGRESSION
    Verify Click Regions Button

Validate Set Region
    [Tags]    REGRESSION
    Verify Set Region       ${REGION NAME}

Validate Click Generic Search Button
    [Tags]    REGRESSION
    Verify Click Generic Search Button

Valdiate Get Regions Grid Row Details
    [Tags]    REGRESSION
    Verify Get Regions Grid Row Details

Valdiate Regions Grid Row Data
    [Tags]    REGRESSION
    Verify Regions Grid Row Data    ${REGION NAME}

Validate Select Regions Grid Row Checkbox After Creation
    [Tags]    REGRESSION
    Verify Select Regions Grid Row Checkbox     ${REGION NAME}

Validate Click Delete Region Button
    [Tags]    REGRESSION
    Verify Click Delete Region Button

Validate Close Region Tab For New Region Creation
    [Tags]    REGRESSION
    Verify Close Current Tab    ${REGION TAB NAME}

Validate Click Regions Button For New Region Creation
    [Tags]    REGRESSION
    Verify Click Regions Button

Validate Click New Region Button For New Region Creation
    [Tags]    REGRESSION
    Verify Click New Region Button

Validate Set Region In Regions Grid First Row Column For New Region Creation
    [Tags]    REGRESSION
    Verify Set Value In Regions Grid First Row Column       ${REGION COLUMN NAME}       ${TEST DATA PREFIX}

Validate Set Region Abbreviation In Regions Grid First Row Column For New Region Creation
    [Tags]    REGRESSION
    Verify Set Value In Regions Grid First Row Column       ${REGION ABBREVIATION COLUMN NAME}       ${REGION ABBREVIATION}

Validate Get Region Name For New Region Creation
    [Tags]    REGRESSION
    ${REGION NAME} =     Verify Get Region Name
    set suite variable      ${REGION NAME}

Validate Select Regions Grid Row Checkbox For New Region Creation
    [Tags]    REGRESSION
    Verify Select Regions Grid Row Checkbox     ${REGION NAME}

Validate Click Regions Save Changes Button For New Region Creation
    [Tags]    REGRESSION
    Verify Click Regions Save Changes Button
