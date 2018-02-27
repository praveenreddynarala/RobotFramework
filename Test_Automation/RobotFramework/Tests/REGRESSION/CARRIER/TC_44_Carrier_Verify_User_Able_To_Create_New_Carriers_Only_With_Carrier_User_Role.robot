*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify User Able To Create New Carriers Only With Carrier User Role

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW USER NAME}       ${EMPTY}
${COMPANY NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin Module
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

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module To Assign Created Profile
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab After Create Profile
    [Tags]    REGRESSION
    Click on Users Tab

Validate Get User Name
   [Tags]    REGRESSION
    ${NEW USER NAME} =    Verify Get User Name
    log   ${NEW USER NAME}
    set suite variable      ${NEW USER NAME}

Validate Filter Users Grid To Assign Created Profile
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Filter Users Grid        ${USER NAME COLUMN NAME}        ${NEW USER NAME}

Validate Click Users Grid Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Users Grid Row Inline Action Button        ${NEW USER NAME}

Validate Select View Edit Profile Inline Action Item
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item        ${VIEW EDIT PROFILE INLINE ITEM}

Validate Set Security Profile
    [Tags]    REGRESSION
    ${PROFILE NAME} =       Verify Get Created New Profile Name
    Verify Set Security Profile     ${PROFILE NAME}

Validate Click Edit User Ok Button
    [Tags]    REGRESSION
    Verify Click Edit User Ok Button

Validate Sign Out From System Admin Page
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Valid Carrier Credential
    [Tags]    REGRESSION
    Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET}

Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click Create Carrier Button
    [Tags]    REGRESSION
    Verify Click Create Carrier Button

Validate Set Carrier Name
    [Tags]    REGRESSION
    Verify Set Carrier Name             ${TEST DATA PREFIX}

Validate Set Carrier Abbreviation
    [Tags]    REGRESSION
    Verify Set Carrier Abbreviation     ${TEST DATA PREFIX}

Validate Set Carrier Legal Name
    [Tags]    REGRESSION
    Verify Set Carrier Legal Name       ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Status                   ${ACTIVE STATUS}

Validate Get Company Name
    [Tags]    REGRESSION
    ${COMPANY NAME} =     Verify Get Company
    log  ${COMPANY NAME}
    set suite variable      ${COMPANY NAME}

Validate Set Company
    [Tags]    REGRESSION
    Verify Set Company                  ${COMPANY NAME}

Validate Set Carrier Number
    [Tags]    REGRESSION
    Verify Set Carrier Number

Validate Click Create Carrier Save Button
    [Tags]    REGRESSION
    Verify Click Create Carrier Save Button