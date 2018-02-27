*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate Password Encryption Validate Password Reset For Existing User

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

Validate Get User Name
   [Tags]    REGRESSION
    ${NEW USER NAME} =    Verify Get User Name
    log   ${NEW USER NAME}
    set suite variable      ${NEW USER NAME}

Validate Sign Out From System Admin Page
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Valid New Credential
    [Tags]    REGRESSION
    Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET}

Validate Get Password Version For Newly Created
    [Tags]    REGRESSION
    ${PASSWORD VERSION} =   Verify Get Password Version For Newly Created User    ${NEW USER NAME}      ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log     ${PASSWORD VERSION}
    set suite variable      ${PASSWORD VERSION}

Validate Password Version For Newly Created is 2
    [Tags]    REGRESSION
    Verify Password Version For Newly Created User      2       ${PASSWORD VERSION}

Validate Reset Password From Home
    [Tags]    REGRESSION
    Verify Reset Password From Home         ${NEW USER PASSWORD FOR RESET}      ${NEW USER PASSWORD FOR RESET FROM HOME}

Validate Get Password Version After Resetting Password
    [Tags]    REGRESSION
    ${PASSWORD VERSION} =   Verify Get Password Version For Newly Created User    ${NEW USER NAME}      ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log     ${PASSWORD VERSION}
    set suite variable      ${PASSWORD VERSION}

Validate Password Version For Newly Created is 2 After Resetting Password
    [Tags]    REGRESSION
    Verify Password Version For Newly Created User      2       ${PASSWORD VERSION}