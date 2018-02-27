*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify Modified Date Column Changes When User Just Login And Logout

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW USER NAME}                        ${EMPTY}
${MODIFIED DATE BEFORE LOGOUT}          ${EMPTY}
${MODIFIED DATE AFTER EDITING}          ${EMPTY}
${LASTACTIVITYDATE VALUE FOR FIRST LOGIN}           ${EMPTY}
${LASTACTIVITYDATE VALUE FOR SECOND LOGIN}          ${EMPTY}

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

Validate Close Create New User Pop Up
    [Tags]    REGRESSION
    Verify Close Create New User Pop Up

Validate Select Users Tab After Creation
    [Tags]    REGRESSION
    Click on Users Tab

Validate Filter Users Grid With Created New User
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Filter Users Grid        ${USER NAME COLUMN NAME}        ${NEW USER NAME}

Validate Click Users Grid Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Users Grid Row Inline Action Button      ${NEW USER NAME}

Validate Select View Edit Profile Inline Action Item
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item        ${VIEW EDIT PROFILE INLINE ITEM}

Validate Get User Profile Modified Date Before Logout
    [Tags]    REGRESSION
    ${MODIFIED DATE BEFORE LOGOUT} =      Verify Get User Profile Modified Date       Modified
    set suite variable      ${MODIFIED DATE BEFORE LOGOUT}

Validate Close Current View Edit User Profile Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up     ${VIEW EDIT USER PROFILE POP UP NAME}

Validate Sign Out From Current Page
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With New Credential To Compare Modified Date
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to System Admin module To Compare Modified Date
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab To Compare Modified Date
    [Tags]    REGRESSION
    Click on Users Tab

Validate Filter Users Grid With Created New User To Compare Modified Date
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Filter Users Grid        ${USER NAME COLUMN NAME}        ${NEW USER NAME}

Validate Click Users Grid Row Inline Action Button To Compare Modified Date
    [Tags]    REGRESSION
    Verify Click Users Grid Row Inline Action Button      ${NEW USER NAME}

Validate Select View Edit Profile Inline Action Item To Compare Modified Date
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item        ${VIEW EDIT PROFILE INLINE ITEM}

Validate Verify Compare User Profile Modified Date After 2nd Login
    [Tags]    REGRESSION
    Verify Compare User Profile Modified Date After Login        ${MODIFIED DATE BEFORE LOGOUT}     Modified

Validate Set Security Profile To Edit
    [Tags]    REGRESSION
    Verify Set Security Profile     ${NEW USER SECURITY PROFILE}

Verify Click Edit User Ok Button After Editing
    [Tags]    REGRESSION
    Verify Click Edit User Ok Button

Validate Click Users Grid Row Inline Action Button After Editing
    [Tags]    REGRESSION
    Verify Click Users Grid Row Inline Action Button      ${NEW USER NAME}

Validate Select View Edit Profile Inline Action Item After Editing
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item        ${VIEW EDIT PROFILE INLINE ITEM}

Validate Get User Profile Modified Date After Editing
    [Tags]    REGRESSION
    ${MODIFIED DATE AFTER EDITING} =      Verify Get User Profile Modified Date       Modified
    set suite variable      ${MODIFIED DATE AFTER EDITING}

Validate Verify Compare User Profile Modified Date After Editing
    [Tags]    REGRESSION
    Verify Compare User Profile Modified Date After Editing       ${MODIFIED DATE BEFORE LOGOUT}     ${MODIFIED DATE AFTER EDITING}

Validate Close Current View Edit User Profile Pop Up After 2nd Logout
    [Tags]    REGRESSION
    Verify Close Current Pop Up     ${VIEW EDIT USER PROFILE POP UP NAME}

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

Validate Get Lastactivitydate For Created New User
    [Tags]    REGRESSION
    ${LASTACTIVITYDATE VALUE FOR FIRST LOGIN} =   Verify Get Lastactivitydate For Newly Created User    ${NEW USER NAME}      ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log     ${LASTACTIVITYDATE VALUE FOR FIRST LOGIN}
    set suite variable      ${LASTACTIVITYDATE VALUE FOR FIRST LOGIN}

Validate Sign Out From Current New Users Page
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With New Credential To Compare Lastactivitydate
    [Tags]    REGRESSION
    Verify Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET}

Validate Get Lastactivitydate For Created New User To Compare Lastactivitydate
    [Tags]    REGRESSION
    ${LASTACTIVITYDATE VALUE FOR SECOND LOGIN} =   Verify Get Lastactivitydate For Newly Created User    ${NEW USER NAME}      ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log     ${LASTACTIVITYDATE VALUE FOR SECOND LOGIN}
    set suite variable      ${LASTACTIVITYDATE VALUE FOR SECOND LOGIN}

Validate Verify Compare Lastactivitydate
    [Tags]    REGRESSION
    Verify Compare Lastactivitydate       ${LASTACTIVITYDATE VALUE FOR FIRST LOGIN}     ${LASTACTIVITYDATE VALUE FOR SECOND LOGIN}