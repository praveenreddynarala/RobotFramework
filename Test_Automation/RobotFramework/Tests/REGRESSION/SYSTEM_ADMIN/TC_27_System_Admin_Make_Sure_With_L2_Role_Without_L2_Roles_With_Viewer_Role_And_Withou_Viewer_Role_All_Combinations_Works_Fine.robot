*** Settings ***
Documentation    A Test Suite With Set Of Tests To Make Sure With L2 Role Without L2 Roles With Viewer Role And Without Viewer Role All Combinations Works Fine

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

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
    Verify Set Value In Current Value Column        0

Validate Sign Out From System Admin
    [Tags]    REGRESSION
    Validate Log Out Functionality

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
    Verify Assign Roles To Profile      @{USER ROLE LIST FOR CARRIER USER ONLY}

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
    Validate Log Out Functionality

Validate Login With Valid Credential After Reset Password
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click On Carrier Dashboard Tab
    [Tags]    REGRESSION
    Verify Click On Carrier Dashboard Tab

Validate The Network Codes Link Is Available
    [Tags]    REGRESSION
    Verify The Network Codes Link Is Available

Validate Click On Network Codes Link
    [Tags]    REGRESSION
    Verify Click On Network Codes Link

Validate Click Add Network Destination Button
    [Tags]    REGRESSION
    Verify Click Add Network Destination Button

Validate Set Network Destination
    [Tags]    REGRESSION
    Verify Set Network Destination              ${TEST DATA PREFIX}

Validate Set Destination Abbreviation
    [Tags]    REGRESSION
    Verify Set Destination Abbreviation         ${DESTINATION ABBREVIATION}

Validate Set Network Destination Country
    [Tags]    REGRESSION
    Verify Set Network Destination Country      ${NETWORK DESTINATION COUNTRY}

Validate Set Call Char
    [Tags]    REGRESSION
    Verify Set Call Char        ${CALL CHAR}

Validate Set Network Destination Begin Date
    [Tags]    REGRESSION
    Verify Set Network Destination Begin Date

Validate Set Network Destination End Date
    [Tags]    REGRESSION
    Verify Set Network Destination End Date

Validate Set Internal Code
    [Tags]    REGRESSION
    Verify Set Internal Code        ${INTERNAL CODE}

Validate Set External Code
    [Tags]    REGRESSION
    Verify Set External Code        ${EXTERNAL CODE}

Validate Click Add Network Destination Save Button
    [Tags]    REGRESSION
    Verify Click Add Network Destination Save Button

Validate Set Country For Search
    [Tags]    REGRESSION
    Verify Set Country For Search       ${NETWORK DESTINATION COUNTRY}

Validate Set Created Network Destination For Search
    [Tags]    REGRESSION
    Verify Set Created Network Destination For Search

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Network Codes Search Button

Validate Click Network Destinations Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Network Destinations Grid First Row Inline Action Button

Validate Select View Edit Network Code Inline Item
    [Tags]    REGRESSION
    Verify Select Country Group Grid Inline Action Item         ${VIEW EDIT NETWORK CODES INLINE ITEM}

Validate The Network Code Save Changes Button Present
    [Tags]    REGRESSION
    Verify The Network Code Save Changes Button Present

Validate The Network Code Cancel Changes Button Present
    [Tags]    REGRESSION
    Verify The Network Code Cancel Changes Button Present

Validate Click Add Network Code Button
    [Tags]    REGRESSION
    Verify Click Add Network Code Button

Validate Set Network Code
    [Tags]    REGRESSION
    Verify Set Network Code                 ${TEST DATA PREFIX}

Validate Set Network Code Begin Date
    [Tags]    REGRESSION
    Verify Set Network Code Begin Date

Validate Set Network Code End Date
    [Tags]    REGRESSION
    Verify Set Network Code End Date

Validate Click Network Code Save Changes Button
    [Tags]    REGRESSION
    Verify Click Network Code Save Changes Button

Validate Click Network Codes Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Network Codes Grid Inline Action Button

Validate Select View Edit CDR Match Inline Item
    [Tags]    REGRESSION
    Verify Select Country Group Grid Inline Action Item         ${VIEW EDIT CDR MATCHES INLINE ITEM}

Validate The CDR Match Save Changes Button Present
    [Tags]    REGRESSION
    Verify The CDR Match Save Changes Button Present

Validate The CDR Match Cancel Changes Button Present
    [Tags]    REGRESSION
    Verify The CDR Match Cancel Changes Button Present

Validate Click Add Cdr Match Button
    [Tags]    REGRESSION
    Verify Click Add Cdr Match Button

Validate Set Cdr Match
    [Tags]    REGRESSION
    Verify Set Cdr Match                ${CDR MATCH}

Validate Set Cdr Match Begin Date
    [Tags]    REGRESSION
    Verify Set Cdr Match Begin Date

Validate Set Cdr Match End Date
    [Tags]    REGRESSION
    Verify Set Cdr Match End Date

Validate Click Cdr Match Save Changes Button
    [Tags]    REGRESSION
    Verify Click Cdr Match Save Changes Button

Validate Close CDR Matches Pop Up
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Pop Up         ${CDR MATCHES POPUP NAME}

Validate Close Network Codes Pop Up
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Pop Up         ${NETWORK CODES POPUP NAME}

Validate Click Save Changes Button Without Confirmation
    [Tags]    REGRESSION
    Verify Click Save Changes Button Without Confirmation

Validate Sign Out From Carrier Module
    [Tags]    REGRESSION
    Validate Log Out Functionality

Validate Login With Valid Credential After Closing Carrier Window
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to System Admin module After Closing Carrier Window
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab After Closing Carrier Window
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click Security Profile Button After Closing Carrier Window
    [Tags]    REGRESSION
    Verify Click Security Profile Button

Validate Filter Profiles Grid With Created Profile
    [Tags]    REGRESSION
    Verify Filter Profiles Grid With Profile Name        ${PROFILE COLUMN NAME}

Validate Click Profile Grid Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Profile Grid Row Inline Action Button      ${PROFILE NAME}

Validate Select Inline Action Item
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item        ${VIEW EDIT PROFILE INLINE ITEM}

Validate Unassign Assigned Roles To Unassigned Role
    [Tags]    REGRESSION
    Verify Unassign Assigned Roles To Unassigned Role       Carrier User

Validate Click View Edit Profile Save Button To Unassign Level2
    [Tags]    REGRESSION
    Verify Click View Edit Profile Save Button

Validate Sign Out From System Admin Module After Updating Security Profile
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Carrier Credential
    [Tags]    REGRESSION
    Verify Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD}

Validate Reset Password
    [Tags]    REGRESSION
    Verify Reset Password       ${NEW USER PASSWORD}     ${NEW USER PASSWORD FOR RESET}

Validate Login With Valid Credential After Updating Security Profile
    [Tags]    REGRESSION
    Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET}

Validate Navigate to Carrier module After Updating Security Profile
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click On Carrier Dashboard Tab After Updating Security Profile
    [Tags]    REGRESSION
    Verify Click On Carrier Dashboard Tab

Validate The Network Codes Link Is Available After Updating Security Profile
    [Tags]    REGRESSION
    Verify The Network Codes Link Is Available

Validate Click On Network Codes Link After Updating Security Profile
    [Tags]    REGRESSION
    Verify Click On Network Codes Link

Validate The Add Network Destination Button Is Not Available
    [Tags]    REGRESSION
    Verify The Add Network Destination Button Is Not Available

Validate Set Country For Search After Updating Security Profile
    [Tags]    REGRESSION
    Verify Set Country For Search       ${NETWORK DESTINATION COUNTRY}

Validate Set Created Network Destination For Search After Updating Security Profile
    [Tags]    REGRESSION
    Verify Set Created Network Destination For Search

Validate Click Search Button After Updating Security Profile
    [Tags]    REGRESSION
    Verify Click Network Codes Search Button

Validate Click Network Destinations Grid First Row Inline Action Button After Updating Security Profile
    [Tags]    REGRESSION
    Verify Click Network Destinations Grid First Row Inline Action Button

Validate Select View Edit Network Code Inline Item After Updating Security Profile
    [Tags]    REGRESSION
    Verify Select Country Group Grid Inline Action Item         ${VIEW EDIT NETWORK CODES INLINE ITEM}

Validate The Network Code Save Changes Button Not Present
    [Tags]    REGRESSION
    Verify The Network Code Save Changes Button Not Present

Validate The Network Code Cancel Changes Button Not Present
    [Tags]    REGRESSION
    Verify The Network Code Cancel Changes Button Not Present

Validate Click Network Codes Grid Inline Action Button After Updating Security Profile
    [Tags]    REGRESSION
    Verify Click Network Codes Grid Inline Action Button

Validate Select View Edit CDR Match Inline Item After Updating Security Profile
    [Tags]    REGRESSION
    Verify Select Country Group Grid Inline Action Item         ${VIEW EDIT CDR MATCHES INLINE ITEM}

Validate The CDR Match Save Changes Button Not Present
    [Tags]    REGRESSION
    Verify The CDR Match Save Changes Button Not Present

Validate The CDR Match Cancel Changes Button Not Present
    [Tags]    REGRESSION
    Verify The CDR Match Cancel Changes Button Not Present

Validate Close CDR Matches Pop Up After Updating Security Profile
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Pop Up         ${CDR MATCHES POPUP NAME}

Validate Close Network Codes Pop Up After Updating Security Profile
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Pop Up         ${NETWORK CODES POPUP NAME}

Validate Sign Out From Carrier Module To Inactivate User
    [Tags]    REGRESSION
    Validate Log Out Functionality

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