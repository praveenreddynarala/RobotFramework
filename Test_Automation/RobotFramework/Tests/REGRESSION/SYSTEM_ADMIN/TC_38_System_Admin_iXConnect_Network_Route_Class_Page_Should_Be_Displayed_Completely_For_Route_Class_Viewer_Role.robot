*** Settings ***
Documentation    [TAENOSIS-953] A Test Suite With Set Of Tests To Verify iXConnect Network Route Class Page Should Be Displayed Completely For Route Class Viewer Role

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW USER NAME}       ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module After Change Configuration
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click Security Profile Button
    [Tags]    REGRESSION
    Verify Click Security Profile Button

Validate Click New Profile Button
    [Tags]    REGRESSION
    Verify Click New Profile Button

Validate Set New Profile Name
    [Tags]    REGRESSION
    Verify Set New Profile Name     ${TEST DATA PREFIX}

Validate Set Profile Active Status
    [Tags]    REGRESSION
    Verify Set Profile Status       ${ACTIVE PROFILE STATUS}

Validate Assign All Level1 Roles To Profile
    [Tags]    REGRESSION
    Verify Assign All Level1 Roles To Profile

Validate Click View Edit Profile Save Button
    [Tags]    REGRESSION
    Verify Click View Edit Profile Save Button

Validate Close Profile Management Tab
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab     ${PROFILE MANAGEMENT TAB NAME}

Validate Select Users Tab After Create Profile
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
    ${PROFILE NAME} =       Verify Get Created New Profile Name
    Verify Set Security Profile     ${PROFILE NAME}

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
    ${NEW USER NAME} =    Verify Get User Name
    log   ${NEW USER NAME}
    set suite variable      ${NEW USER NAME}

Validate Close Create New User Pop Up
    [Tags]    REGRESSION
    Verify Close Create New User Pop Up

Validate Sign Out From System Admin Module
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Carrier Credential
    [Tags]    REGRESSION
    Verify Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD}

Validate Reset Password
    [Tags]    REGRESSION
    Verify Reset Password       ${NEW USER PASSWORD}     ${NEW USER PASSWORD FOR RESET}

Validate Login With Valid Carrier Credential
    [Tags]    REGRESSION
    Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET}

Validate Navigate to IXConnect module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate IXConnect Page Loaded Properly
    [Tags]    REGRESSION
    Is Contracts Page Loaded Properly

Validate Select Route Class Submenu
    [Tags]    REGRESSION
    Verify Select Route Class Submenu

Validate Click On First Route Class
    [Tags]    REGRESSION
    Verify Click On First Route Class

Validate Route Class Field On Route Class Page Is Available
    [Tags]    REGRESSION
    Verify Specific Mandatory Field On Route Class Page Is Available        Route Class

Validate Route Class Abbreviation Field On Route Class Page Is Available
    [Tags]    REGRESSION
    Verify Specific Mandatory Field On Route Class Page Is Available        Route Class Abbreviation

Validate Target Fulfillment Order Field On Route Class Page Is Available
    [Tags]    REGRESSION
    Verify Specific Mandatory Field On Route Class Page Is Available        Target Fulfillment Order

Validate Capacity Saturation Order Field On Route Class Page Is Available
    [Tags]    REGRESSION
    Verify Specific Mandatory Field On Route Class Page Is Available        Capacity Saturation Order

Validate Minimum Direct Percent Field On Route Class Page Is Available
    [Tags]    REGRESSION
    Verify Specific Mandatory Field On Route Class Page Is Available        Minimum Direct Percent

Validate Close IxConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}