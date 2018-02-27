*** Settings ***
Documentation     A Test Suite With Set Of Tests For System Admin Regression Suite To Validate Bulk Edit Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${FIRST USER}       ${EMPTY}
${SECOND USER}      ${EMPTY}
*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab
    [Tags]    REGRESSION
    Click on Users Tab

Validate Get First User
    [Tags]    REGRESSION
    ${FIRST USER} =     Verify Get User Name
    set suite variable      ${FIRST USER}
    log     ${FIRST USER}

Validate Click New User Button
    [Tags]    REGRESSION
    Verify Click New User Button

Validate Set User Name
    [Tags]    REGRESSION
    Verify Set User Name       ${TEST DATA PREFIX}

Validate Set First Name
    [Tags]    REGRESSION
    Verify Set First Name       ${TEST DATA PREFIX}

Validate Set Last Name
    [Tags]    REGRESSION
    Verify Set Last Name       ${TEST DATA PREFIX}

Validate Set Security Profile
    [Tags]    REGRESSION
    Verify Set Security Profile     ${NEW USER SECURITY PROFILE}

Validate Set User Status
    [Tags]    REGRESSION
    Verify Set User Status      ${NEW USER ACTIVE STATUS}

Validate Set Reports To
    [Tags]    REGRESSION
    Verify Set Reports To       ${NEW USER REPORTS TO}

Validate Set Password
    [Tags]    REGRESSION
    Verify Set Password     ${NEW USER PASSWORD}

Validate Set Confirm Password
    [Tags]    REGRESSION
    Verify Set Confirm Password     ${NEW USER PASSWORD}

Validate Set Primary Email
    [Tags]    REGRESSION
    Verify Set Primary Email        ${NEW USER PRIMARY EMAIL}

Validate Click Save And Create New Button
    [Tags]    REGRESSION
    Verify Click Save And Create New Button

Validate Close Create New User Pop Up
    [Tags]    REGRESSION
    Verify Close Create New User Pop Up

Validate Select Users Tab After User Creation
    [Tags]    REGRESSION
    Click on Users Tab

Validate Get Second User
    [Tags]    REGRESSION
    ${SECOND USER} =     Verify Get User Name
    set suite variable      ${SECOND USER}
    log     ${SECOND USER}

Validate Set User Name For Search
    [Tags]    REGRESSION
    Verify Set User Name For Search         ${FIRST USER}

Validate Click Users Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Select Users Grid Multiple Row Checkbox
    [Tags]    REGRESSION
    Verify Select Users Grid Multiple Row Checkbox      ${NUMBER OF ROWS FOR BULK EDIT}

Validate Click Users Grid Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Users Grid Bulk Edit Button

Validate Set Bulk Edit Profile
    [Tags]    REGRESSION
    Verify Set Bulk Edit Profile        ${PROFILE FOR BULK EDIT}

Validate Set Bulk Edit Inactive Status For Undo Reset
    [Tags]    REGRESSION
    Verify Set Bulk Edit Status     ${INACTIVE STATUS FOR BULK EDIT}

Validate Set Bulk Edit Reports To Value For Undo Reset
    [Tags]    REGRESSION
    Verify Set Bulk Edit Reports To Value       ${REPORTS TO VALUE FOR BULK EDIT}

Validate Set Bulk Edit Sales Level For Undo Reset
    [Tags]    REGRESSION
    Verify Set Bulk Edit Sales Level        ${SALES LEVEL FOR BULK EDIT}

Validate Set Bulk Edit Sales Reports To Value For Undo Reset
    [Tags]    REGRESSION
    Verify Set Bulk Edit Sales Reports To Value     ${SALES REPORTS TO VALUE FOR BULK EDIT}

Validate Click Bulk Edit Undo Reset Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Undo Reset Button

Validate Profile Input Field Is Reset
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${PROFILE LABEL TEXT}

Validate Status Input Field Is Reset
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${STATUS LABEL TEXT}

Validate Reports To Input Field Is Reset
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${REPORTS TO LABEL TEXT}

Validate Sales Level Input Field Is Reset
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${SALES LEVEL LABEL TEXT}

Validate Sales Reports To Input Field Is Reset
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${SALES REPORTS TO LABEL TEXT}

Validate Set Bulk Edit Inactive Status For Cancel
    [Tags]    REGRESSION
    Verify Set Bulk Edit Status     ${INACTIVE STATUS FOR BULK EDIT}

Validate Click Bulk Edit Cancel Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Cancel Button

Validate Click Users Grid Bulk Edit Button After Cancel
    [Tags]    REGRESSION
    Verify Click Users Grid Bulk Edit Button

Validate Set Bulk Edit Inactive Status For Submit
    [Tags]    REGRESSION
    Verify Set Bulk Edit Status     ${INACTIVE STATUS FOR BULK EDIT}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Click Users Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Users Grid Save Changes Button

Validate Set User Name For Search Second User
    [Tags]    REGRESSION
    Verify Set User Name For Search         ${SECOND USER}

Validate Click Users Grid Search Button For Second User
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Select Users Grid Multiple Row Checkbox For Second User
    [Tags]    REGRESSION
    Verify Select Users Grid Multiple Row Checkbox      ${NUMBER OF ROWS FOR BULK EDIT}

Validate Click Users Grid Bulk Edit Button For Second User
    [Tags]    REGRESSION
    Verify Click Users Grid Bulk Edit Button

Validate Set Bulk Edit Profile For Second User
    [Tags]    REGRESSION
    Verify Set Bulk Edit Profile        ${PROFILE FOR BULK EDIT}

Validate Set Bulk Edit Inactive Status For Undo Reset For Second User
    [Tags]    REGRESSION
    Verify Set Bulk Edit Status     ${INACTIVE STATUS FOR BULK EDIT}

Validate Set Bulk Edit Reports To Value For Undo Reset For Second User
    [Tags]    REGRESSION
    Verify Set Bulk Edit Reports To Value       ${REPORTS TO VALUE FOR BULK EDIT}

Validate Set Bulk Edit Sales Level For Undo Reset For Second User
    [Tags]    REGRESSION
    Verify Set Bulk Edit Sales Level        ${SALES LEVEL FOR BULK EDIT}

Validate Set Bulk Edit Sales Reports To Value For Undo Reset For Second User
    [Tags]    REGRESSION
    Verify Set Bulk Edit Sales Reports To Value     ${SALES REPORTS TO VALUE FOR BULK EDIT}

Validate Click Bulk Edit Undo Reset Button For Second User
    [Tags]    REGRESSION
    Verify Click Bulk Edit Undo Reset Button

Validate Profile Input Field Is Reset For Second User
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${PROFILE LABEL TEXT}

Validate Status Input Field Is Reset For Second User
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${STATUS LABEL TEXT}

Validate Reports To Input Field Is Reset For Second User
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${REPORTS TO LABEL TEXT}

Validate Sales Level Input Field Is Reset For Second User
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${SALES LEVEL LABEL TEXT}

Validate Sales Reports To Input Field Is Reset For Second User
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${SALES REPORTS TO LABEL TEXT}

Validate Set Bulk Edit Inactive Status For Cancel For Second User
    [Tags]    REGRESSION
    Verify Set Bulk Edit Status     ${INACTIVE STATUS FOR BULK EDIT}

Validate Click Bulk Edit Cancel Button For Second User
    [Tags]    REGRESSION
    Verify Click Bulk Edit Cancel Button

Validate Click Users Grid Bulk Edit Button After Cancel For Second User
    [Tags]    REGRESSION
    Verify Click Users Grid Bulk Edit Button

Validate Set Bulk Edit Inactive Status For Submit For Second User
    [Tags]    REGRESSION
    Verify Set Bulk Edit Status     ${INACTIVE STATUS FOR BULK EDIT}

Validate Click Bulk Edit Submit Button For Second User
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Click Users Grid Save Changes Button For Second User
    [Tags]    REGRESSION
    Verify Click Users Grid Save Changes Button