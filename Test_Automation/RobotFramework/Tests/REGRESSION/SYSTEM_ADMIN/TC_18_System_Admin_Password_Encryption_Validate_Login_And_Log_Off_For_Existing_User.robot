*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate Password Encryption Validate Login And Log Off For Existing User

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW USER NAME}       ${EMPTY}
${PASSWORD VERSION}    ${EMPTY}
${PASSWORD VERSION AFTER LOGIN}     ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Get User Name
   [Tags]    REGRESSION
    ${NEW USER NAME} =    Verify Get User Name
    log   ${NEW USER NAME}
    set suite variable      ${NEW USER NAME}

Validate Get Password Version For Existing User
    [Tags]    REGRESSION
    ${PASSWORD VERSION} =   Verify Get Password Version For Newly Created User    ${NEW USER NAME}      ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log     ${PASSWORD VERSION}
    set suite variable      ${PASSWORD VERSION}

Validate Sign Out From System Admin Page
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Valid New Credential
    [Tags]    REGRESSION
    Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET FROM HOME}

Validate Get Password Version After Resetting Password
    [Tags]    REGRESSION
    ${PASSWORD VERSION AFTER LOGIN} =   Verify Get Password Version For Newly Created User    ${NEW USER NAME}      ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log     ${PASSWORD VERSION AFTER LOGIN}
    set suite variable      ${PASSWORD VERSION AFTER LOGIN}

Validate Password Version Remain Unchanged For Existing User
    [Tags]    REGRESSION
    Verify Password Version For Newly Created User        ${PASSWORD VERSION}      ${PASSWORD VERSION AFTER LOGIN}

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