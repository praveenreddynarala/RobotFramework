*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate Account Level Security In Connect Trade And Report Modules

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/report_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW USER NAME}       ${EMPTY}
${ACCOUNT}             ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    ALSConfigFlag

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${ALS CONFIG FLAG VALUE}

Validate Close Configuration Variables Tab
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab        ${CONFIGURATION VARIABLE TAB NAME}

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
    Verify Assign Roles To Profile      @{REPORT AND CARRIER ROLES LIST}

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

Validate Select Users Tab After User Creation
    [Tags]    REGRESSION
    Click on Users Tab

Validate Set User Name For Search
    [Tags]    REGRESSION
    Verify Set User Name For Search         ${NEW USER NAME}

Validate Click User Page Search Button
    [Tags]    REGRESSION
    Verify Click User Page Search Button

Validate Click Users Grid Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Users Grid Row Inline Action Button      ${NEW USER NAME}

Validate Select Users Grid Inline Action Item
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item       ${CARRIER SECURITY INLINE ITEM}

Validate Click Select Companies Radio Button
    [Tags]    REGRESSION
    Verify Click Select Companies Radio Button

Validate Move Available Companies To Destination
    [Tags]    REGRESSION
    ${COMPANY NAME} =     Verify Get Company
    Verify Move Available Companies To Destination      ${COMPANY NAME}

Validate Select Account Security Tab
    [Tags]    REGRESSION
    Verify Select Account Security Tab

Validate Click Select Accounts Radio Button
    [Tags]    REGRESSION
    Verify Click Select Accounts Radio Button

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${ACCOUNT} =       Verify Get Created Carrier Name
    set suite variable      ${ACCOUNT}

Validate Move Available Accounts To Destination
    [Tags]    REGRESSION
    @{ACCOUNT LIST TO MOVE} =   create list     ${ACCOUNT}
    Verify Move Available Accounts To Destination       @{ACCOUNT LIST TO MOVE}

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

Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Compound Reference Price List Grid First Row
    [Tags]    REGRESSION
    Verify Compound Carrier Grid First Row     ${ACCOUNT}

Validate Navigate to Report module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Report' From Main Menu

Validate Click Administrative Reports Plus Button
    [Tags]    REGRESSION
    Verify Click Administrative Reports Plus Button

Valivate Click Account List Link
    [Tags]    REGRESSION
    Verify Click Account List Link

Validate Set Account Value
    [Tags]    REGRESSION
    report_page_resource.Verify Set Account Value    ${ACCOUNT}

Validate Click Submit Button
    [Tags]    REGRESSION
    report_page_resource.Verify Click Submit Button

Validate Compound Account Label
    [Tags]    REGRESSION
    Verify Compound Account Label       ${ACCOUNT}

Validate Close Current Reoprt Window
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close System Admin Window

Validate Click Exit Button
    [Tags]    REGRESSION
    report_page_resource.Verify Click Exit Button

Validate Login With Carrier Credential To Inactivate User
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
