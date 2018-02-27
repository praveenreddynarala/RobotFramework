*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate Password Encryption Validate Password Expiry

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW USER NAME}       ${EMPTY}
${PASSWORD VERSION}    ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click New User Button
    [Tags]    REGRESSION
    Verify Click New User Button

Validate Set User Name
    [Tags]    REGRESSION
    Verify Set User Name        ${TEST DATA PREFIX}

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

Validate Get User Name
   [Tags]    REGRESSION
    ${NEW USER NAME} =    Verify Get User Name
    log   ${NEW USER NAME}
    set suite variable      ${NEW USER NAME}

Validate Verify Set Password Expiration Date For Newly Created User
    [Tags]    REGRESSION
    Verify Set Password Expiration Date For Newly Created User      ${NEW USER NAME}      ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}

Validate Close Create New User Pop Up
    [Tags]    REGRESSION
    Verify Close Create New User Pop Up

Validate Sign Out From System Admin Page
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With New Credential
    [Tags]    REGRESSION
    Verify Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD}

Validate Reset Password
    [Tags]    REGRESSION
    Verify Reset Password       ${NEW USER PASSWORD}     ${NEW USER PASSWORD FOR RESET}

Validate Login With Valid New Credential
    [Tags]    REGRESSION
    Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET}

Validate Get Password Version For Created New User
    [Tags]    REGRESSION
    ${PASSWORD VERSION} =   Verify Get Password Version For Newly Created User    ${NEW USER NAME}      ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log     ${PASSWORD VERSION}
    set suite variable      ${PASSWORD VERSION}

Validate Password Version For Newly Created is 2
    [Tags]    REGRESSION
    Verify Password Version For Newly Created User      2       ${PASSWORD VERSION}

Validate Sign Out From Current Page
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With New Credential To Inactivate User
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to System Admin module To Inactivate User
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab After Create Profile To Inactivate User
    [Tags]    REGRESSION
    Click on Users Tab

Validate Filter Users Grid After Checking To Inactivate User
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Filter Users Grid        ${USER NAME COLUMN NAME}        ${NEW USER NAME}

Validate Set User Status Inactive
    [Tags]    REGRESSION
    Verify Set User Status In Grid      ${NEW USER INACTIVE STATUS}

Validate Click Users Grid Save Changes Button To Inactivate User
    [Tags]    REGRESSION
    Verify Click Users Grid Save Changes Button