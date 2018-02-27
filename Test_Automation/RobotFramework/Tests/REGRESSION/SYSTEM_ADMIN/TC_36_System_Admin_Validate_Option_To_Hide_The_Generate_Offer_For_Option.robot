*** Settings ***
Documentation    [TAENOSIS-872] A Test Suite With Set Of Tests To Validate Option To Hide The Generate Offer For Option

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${PROFILE NAME}         ${EMPTY}
${NEW USER NAME}        ${EMPTY}

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
    Verify Set Variable Name        EnableSaaSGranularRoles

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Configuration Variables Current Value
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Sign Out From System Admin Page
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Carrier Credential
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to System Admin module For Users Tab
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

Validate L2 Roles Section Is Displayed
    [Tags]    REGRESSION
    Verify L2 Roles Section Is Displayed

Validate Set New Profile Name
    [Tags]    REGRESSION
    Verify Set New Profile Name     ${TEST DATA PREFIX}

Validate Set Profile Active Status
    [Tags]    REGRESSION
    Verify Set Profile Status       ${ACTIVE PROFILE STATUS}

Validate Assign Roles To Profile
    [Tags]    REGRESSION
    Verify Assign Roles To Profile      @{USER ROLE LIST FOR SELL}

Validate Assign All Level2 Roles To Profile
    [Tags]    REGRESSION
    Verify Assign All Level2 Roles To Profile

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

Validate Get New Profile Name
    [Tags]    REGRESSION
    ${PROFILE NAME} =       Verify Get Created New Profile Name
    set suite variable          ${PROFILE NAME}

Validate Set Security Profile
    [Tags]    REGRESSION
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

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Click On Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Create Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Generate Offers For Filter Option Is Present
    [Tags]    REGRESSION
    Verify Generate Offers For Filter Option Is Present

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to System Admin module To Unassign L2 Roles
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab To Unassign L2 Roles
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click Security Profile Button To Unassign L2 Roles
    [Tags]    REGRESSION
    Verify Click Security Profile Button

Validate Filter Profiles Grid With Created Profile
    [Tags]    REGRESSION
    Verify Filter Profiles Grid With Profile Name        ${PROFILE COLUMN NAME}

Validate Click Profile Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Profile Grid Row Inline Action Button      ${PROFILE NAME}

Validate Select Inline Action Item
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item        ${VIEW EDIT PROFILE INLINE ITEM}

Validate Unassign All Level2 Roles To Profile
    [Tags]    REGRESSION
    Verify Unassign All Level2 Roles To Profile

Validate Click View Edit Profile Save Button To Unassign All Level2
    [Tags]    REGRESSION
    Verify Click View Edit Profile Save Button

Validate Sign Out From Current New Profile After Unassigning All L2
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Valid Same Credential After Unassigning All L2
    [Tags]    REGRESSION
    Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET}

Validate Navigate to Sell module After Unassigning All L2
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Click On Customer Tab After Unassigning All L2
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Create Customer Price Lists Button After Unassigning All L2
    [Tags]    REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Generate Offers For Filter Option Is Not Present After Unassigning All L2
    [Tags]    REGRESSION
    Verify Generate Offers For Filter Option Is Not Present

Validate Sign Out From Current New Profile To Edit Profile Variable
    [Tags]    REGRESSION
    Verify Log Out

Validate Login Functionality With Valid Credential To Edit Profile Variable
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to System Admin module To Set EnableSaaSGranularRoles As 0
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set EnableSaaSGranularRoles As 0
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set EnableSaaSGranularRoles As 0
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set EnableSaaSGranularRoles As 0
    [Tags]    REGRESSION
    Verify Set Variable Name        EnableSaaSGranularRoles

Validate Click Search Button To Set EnableSaaSGranularRoles As 0
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Configuration Variables Current Value To Set EnableSaaSGranularRoles As 0
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        0

Validate Sign Out From System Admin Page After Setting EnableSaaSGranularRoles 0
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Carrier Credential After Setting EnableSaaSGranularRoles 0
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to System Admin module For Users Tab After Setting EnableSaaSGranularRoles 0
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab After Setting EnableSaaSGranularRoles 0
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click Security Profile Button After Setting EnableSaaSGranularRoles 0
    [Tags]    REGRESSION
    Verify Click Security Profile Button

Validate Click New Profile Button After Setting EnableSaaSGranularRoles 0
    [Tags]    REGRESSION
    Verify Click New Profile Button

Validate L2 Roles Section Is Not Displayed After Setting EnableSaaSGranularRoles 0
    [Tags]    REGRESSION
    Verify The L2 Role Section Is Not Displayed

Validate Close Current Pop Up
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Pop Up     View/Edit Profile