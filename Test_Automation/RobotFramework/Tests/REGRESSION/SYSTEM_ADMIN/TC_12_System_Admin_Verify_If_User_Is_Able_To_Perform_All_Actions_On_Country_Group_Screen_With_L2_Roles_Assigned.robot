*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify If User Is Able To Perform All Actions On Country Group Screen With L2 Roles Assigned

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW USER NAME}       ${EMPTY}
${PROFILE NAME}        ${EMPTY}

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
    Verify Set Variable Name    EnablesaasGranularroles

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${ENABLE SAAS GRANULAR ROLES VALUE}

Validate Sign Out From System Admin
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Valid Credential
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

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

Validate Assign Roles To Profile
    [Tags]    REGRESSION
    Verify Assign Roles To Profile      @{USER ROLE LIST FOR SELL AND BUY}

Validate Assign Level2 Roles To Profile
    [Tags]    REGRESSION
    Verify Assign Level2 Roles To Profile       @{USER LEVEL2 ROLE LIST FOR SELL AND BUY}

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

Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Select Buy Dashboard
    [Tags]    REGRESSION
    Verify Select Buy Dashboard

Validate Click Country Group Link
    [Tags]    REGRESSION
    Verify Click Country Group

Validate Click Create Country Groups Button
    [Tags]    REGRESSION
    Verify Click Create Country Group Button

Validate Set Country Group For Create
    [Tags]    REGRESSION
    Verify Set Country Group    ${TEST DATA PREFIX}

Validate Move Available Countries To Destination
    [Tags]    REGRESSION
    Verify Move Available Countries To Destination

Validate Click Save Country Groups Button
    [Tags]    REGRESSION
    Verify Click Save Country Group

Validate Select Country Group
    [Tags]    REGRESSION
    Verify Select Country Group

Validate Click Country Group Search Button
    [Tags]    REGRESSION
    Verify Click Country Group Search Button

Validate Get Country Group Grid Row Details
    [Tags]    REGRESSION
    Verify Get Country Group Grid Row Details

Validate Country Group
    [Tags]    REGRESSION
    Verify Country Group

Validate Click Country Group Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Country Group Grid Inline Action Button

Validate Select Country Group Grid Inline Action Item
    [Tags]    REGRESSION
    Verify Select Country Group Grid Inline Action Item     ${COUNTRY GROUP GRID INLINE ACTION ITEM}

Validate Click Save Country Groups Button After Edit
    [Tags]    REGRESSION
    Verify Click Save Country Group

Validate Close Country Group Tab After Edit
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Tab        ${COUNTRY GROUP TAB NAME}

Validate Click Country Groups Button After Edit
    [Tags]    REGRESSION
    Verify Click Country Group

Validate Select Country Group After Edit
    [Tags]    REGRESSION
    Verify Select Country Group

Validate Click Country Group Search Button After Edit
    [Tags]    REGRESSION
    Verify Click Country Group Search Button

Validate Get Country Group Grid Row Details After Edit
    [Tags]    REGRESSION
    Verify Get Country Group Grid Row Details

Validate Country Group After Edit
    [Tags]    REGRESSION
    Verify Country Group

Validate Select Created Country Group Checkbox
    [Tags]    REGRESSION
    Verify Select Created Country Group Checkbox

Validate Click Country Group Delete Button
    [Tags]    REGRESSION
    Verify Click Country Group Delete Button

Validate Close Buy Window
    [Tags]    REGRESSION
    Verify Close Buy Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Click On Sell Dashboard Tab
    [Tags]    REGRESSION
    Verify Click On Sell Dashboard Tab

Validate Click Country Group Link For Sell
    [Tags]    REGRESSION
    Verify Click Country Group

Validate Click Create Country Groups Button For Sell
    [Tags]    REGRESSION
    Verify Click Create Country Group Button

Validate Set Country Group For Create For Sell
    [Tags]    REGRESSION
    Verify Set Country Group    ${TEST DATA PREFIX}

Validate Set Country Group Scope For Create For Sell
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Country Group Scope   ${SELL COUNTRY GROUP SCOPE}

Validate Move Available Countries To Destination For Sell
    [Tags]    REGRESSION
    Verify Move Available Countries To Destination

Validate Click Save Country Groups Button For Sell
    [Tags]    REGRESSION
    Verify Click Save Country Group

Validate Select Country Group For Sell
    [Tags]    REGRESSION
    Verify Select Country Group

Validate Click Country Group Search Button For Sell
    [Tags]    REGRESSION
    Verify Click Country Group Search Button

Validate Get Country Group Grid Row Details For Sell
    [Tags]    REGRESSION
    Verify Get Country Group Grid Row Details

Validate Country Group For Sell
    [Tags]    REGRESSION
    Verify Country Group

Validate Click Country Group Grid Inline Action Button For Sell
    [Tags]    REGRESSION
    Verify Click Country Group Grid Inline Action Button

Validate Select Country Group Grid Inline Action Item For Sell
    [Tags]    REGRESSION
    Verify Select Country Group Grid Inline Action Item     ${COUNTRY GROUP GRID INLINE ACTION ITEM}

Validate Click Save Country Groups Button After Edit For Sell
    [Tags]    REGRESSION
    Verify Click Save Country Group

Validate Close Country Group Tab After Edit For Sell
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Tab        ${COUNTRY GROUP TAB NAME}

Validate Click Country Groups Button After Edit For Sell
    [Tags]    REGRESSION
    Verify Click Country Group

Validate Select Country Group After Edit For Sell
    [Tags]    REGRESSION
    Verify Select Country Group

Validate Click Country Group Search Button After Edit For Sell
    [Tags]    REGRESSION
    Verify Click Country Group Search Button

Validate Get Country Group Grid Row Details After Edit For Sell
    [Tags]    REGRESSION
    Verify Get Country Group Grid Row Details

Validate Country Group After Edit For Sell
    [Tags]    REGRESSION
    Verify Country Group

Validate Select Created Country Group Checkbox For Sell
    [Tags]    REGRESSION
    Verify Select Created Country Group Checkbox

Validate Click Country Group Delete Button For Sell
    [Tags]    REGRESSION
    Verify Click Country Group Delete Button

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to System Admin module After Closing Sell Window
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab After Closing Sell Window
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click Security Profile Button After Closing Sell Window
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

Validate Unassign Level2 Roles To Profile
    [Tags]    REGRESSION
    Verify Unassign Level2 Roles To Profile       @{USER LEVEL2 ROLE LIST FOR SELL AND BUY}

Validate Click View Edit Profile Save Button To Unassign Level2
    [Tags]    REGRESSION
    Verify Click View Edit Profile Save Button

Validate Sign Out From Current New Profile
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Valid Same Credential
    [Tags]    REGRESSION
    Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET}

Validate Navigate to Buy module After Signing Out
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Select Buy Dashboard After Signing Out
    [Tags]    REGRESSION
    Verify Select Buy Dashboard

Validate Click Country Group Link After Signing Out
    [Tags]    REGRESSION
    Verify Click Country Group

Validate The Create Country Group Button Is Not Available
    [Tags]    REGRESSION
    Verify The Create Country Group Button Is Not Available

Validate The Delete Country Group Button Is Not Available
    [Tags]    REGRESSION
    Verify The Delete Country Group Button Is Not Available

Validate Close Buy Window To Navigate Sell
    [Tags]    REGRESSION
    Verify Close Buy Window

Validate Navigate to Sell Module To Verify Presence Of Elements
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Click On Sell Dashboard Tab To Verify Presence Of Elements
    [Tags]    REGRESSION
    Verify Click On Sell Dashboard Tab

Validate Click Country Group Link To Verify Presence Of Elements
    [Tags]    REGRESSION
    Verify Click Country Group

Validate The Create Country Group Button Is Not Available In Sell Module
    [Tags]    REGRESSION
    Verify The Create Country Group Button Is Not Available

Validate The Delete Country Group Button Is Not Available In Sell Module
    [Tags]    REGRESSION
    Verify The Delete Country Group Button Is Not Available

Validate Sign Out From Carrier Page
    [Tags]    REGRESSION
    Verify Log Out

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