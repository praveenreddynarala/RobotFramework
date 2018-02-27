*** Settings ***
Documentation    [TAENOSIS-791] A Test Suite With Set Of Tests To Verify Number Plan Field In Customer Profile Screen When Profile With Sell Viewer Role

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW USER NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
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

Validate Assign Roles To Profile
    [Tags]    REGRESSION
    Verify Assign Roles To Profile      @{USER ROLE LIST FOR SELL}

Validate Click View Edit Profile Save Button
    [Tags]    REGRESSION
    Verify Click View Edit Profile Save Button

Validate Close Profile Management Tab
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab     ${PROFILE MANAGEMENT TAB NAME}

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
    ${NEW USER NAME} =    Verify Get User Name
    log   ${NEW USER NAME}
    set suite variable      ${NEW USER NAME}

Validate Close Create New User Pop Up
    [Tags]    REGRESSION
    Verify Close Create New User Pop Up

Validate Select Users Tab After Create User
    [Tags]    REGRESSION
    Click on Users Tab

Validate Set Profile Active Status For Search
    [Tags]    REGRESSION
    Verify Set Profile Status For Search      ${ACTIVE PROFILE STATUS}

Validate Click User Page Search Button
    [Tags]    REGRESSION
    Verify Click User Page Search Button

Validate Filter Users Grid To Assign Created Profile
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Filter Users Grid        ${USER NAME COLUMN NAME}        ${NEW USER NAME}

Validate Click Users Grid Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Users Grid Row Inline Action Button        ${NEW USER NAME}

Validate Select Users Grid Inline Action Item
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item       ${CARRIER SECURITY INLINE ITEM}

Validate Click All Companies Radio Button
    [Tags]    REGRESSION
    Verify Click All Companies Radio Button

Validate Select Account Security Tab
    [Tags]    REGRESSION
    Verify Select Account Security Tab

Validate Click All Accounts Radio Button
    [Tags]    REGRESSION
    Verify Click All Accounts Radio Button

Validate Click Edit User Ok Button
    [Tags]    REGRESSION
    Verify Click Edit User Ok Button

Validate Sign Out From System Admin Page
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

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button

Validate IXTools Account Is Available In Sell Module
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item     Customer Profile

Validate Value Of Number Plan Field
    [Tags]    REGRESSION
    Verify Value Of Number Plan Field