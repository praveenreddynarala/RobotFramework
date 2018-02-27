*** Settings ***
Documentation     [TAENOSIS-968] A Test Suite With Set Of Tests For System Admin Regression Suite To Validate Create And Edit New User

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${FIRST USER}       ${EMPTY}

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

Validate Get User Name
   [Tags]    REGRESSION
    ${FIRST USER} =    Verify Get User Name
    log   ${FIRST USER}
    set suite variable      ${FIRST USER}

Validate Close Create New User Pop Up
    [Tags]    REGRESSION
    Verify Close Create New User Pop Up

Validate Select Users Tab After User Creation
    [Tags]    REGRESSION
    Click on Users Tab

Validate Set User Name For Search
    [Tags]    REGRESSION
    Verify Set User Name For Search         ${FIRST USER}

Verify Get Created New Profile Name
    [Tags]    REGRESSION
    ${NEW USER SECURITY PROFILE} =  Verify Get Created New Profile Name
    log   ${NEW USER SECURITY PROFILE}
    set suite variable      ${NEW USER SECURITY PROFILE}

Verify Set User Status For Search
    [Tags]    REGRESSION
    Verify Set User Status For Search       ${NEW USER ACTIVE STATUS}

Verify Get Created User First Name
    [Tags]    REGRESSION
    ${CREATED USER FIRST NAME} =  Verify Get User First Name
    log   ${CREATED USER FIRST NAME}
    set suite variable      ${CREATED USER FIRST NAME}

Verify Get User Last Name
    [Tags]    REGRESSION
    ${CREATED USER LAST NAME} =  Verify Get User Last Name
    log   ${CREATED USER LAST NAME}
    set suite variable      ${CREATED USER LAST NAME}

#Verify Set Name For Search
#    [Tags]    REGRESSION
#    Verify Set Name For Search    ${CREATED USER FIRST NAME}    ${CREATED USER LAST NAME}

Validate Click Users Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Get Users Grid Row Details
    [Tags]    REGRESSION
    Verify Get Users Grid Row Details

Validate Users Grid Row Details
    [Tags]    REGRESSION
    Verify Users Grid Row Details       ${NEW USER ACTIVE STATUS}       ${NEW USER REPORTS TO}      ${NEW USER PRIMARY EMAIL}
