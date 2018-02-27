*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify If User Is Able To Create And Update Customer With L2 Role Assigned

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot
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
    Verify Assign Level2 Roles To Profile       @{USER LEVEL2 ROLE LIST FOR CREATE UPDATE SELL}

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

Validate Get New Profile Name
    [Tags]    REGRESSION
    ${PROFILE NAME} =       Verify Get Created New Profile Name
    set suite variable          ${PROFILE NAME}

Validate Set Security Profile
    [Tags]    REGRESSION
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

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click On Create Customer Button
    [Tags]    REGRESSION
    Verify Click On Create Customer Button

Validate Set Customer Name
    [Tags]    REGRESSION
    Verify Set Customer Name        ${TEST DATA PREFIX}

Validate Set Customer Abbreviation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Customer Abbreviation        ${TEST DATA PREFIX}

Validate Set Customer Profile Status Active
    [Tags]    REGRESSION
    Verify Set Customer Profile Status Active For Create Customer

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Get Created Rate Plan Name
    [Tags]    REGRESSION
    Verify Get Created Rate Plan Name

Validate Set Ixtools Account As Created Carrier
    [Tags]    REGRESSION
    Verify Set Ixtools Account

Validate Set Rate Plan Ad Created Rate Plan
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Rate Plan

Validate Set Number Plan
    [Tags]    REGRESSION
    ${NUMBER PLAN} =     Verify Get CSNP Number Plan
    Verify Set Number Plan For Create Customer      ${NUMBER PLAN}

Validate Set Call Type
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Call Type        ${CALL TYPE DROPDOWN ITEM}

Validate Click On Save Customer Profile For Create
    [Tags]    REGRESSION
    Verify Click On Save Customer Profile For Create

Validate Close Create Customer Tab
    [Tags]    REGRESSION
    Verify Close Create Customer Tab        ${CREATE CUSTOMER TAB NAME}

Validate Get Create Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Filter Customer Grid Column With Created Customer Before Edit
    [Tags]    REGRESSION
    sell_page_resource.Verify Filter Customer Grid Column With Created Customer

Validate Click Customer Grid Inline Action Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Customer Grid Inline Action Button

Validate Select Customer Profile Inline Action Item
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${INLINE ACTION ITEM NAME}

Validate Click Save Customer Profile Button
    [Tags]    REGRESSION
    Verify Click Save Customer Profile Button

Validate Close Current Tab
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab    ${TAB NAME TO CLOSE}

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

Validate Click Profile Grid Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Profile Grid Row Inline Action Button      ${PROFILE NAME}

Validate Select Inline Action Item
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item        ${VIEW EDIT PROFILE INLINE ITEM}

Validate Unassign Level2 Roles To Profile
    [Tags]    REGRESSION
    Verify Unassign Level2 Roles To Profile       @{USER LEVEL2 ROLE LIST FOR CREATE UPDATE SELL}

Validate Click View Edit Profile Save Button To Unassign Level2
    [Tags]    REGRESSION
    Verify Click View Edit Profile Save Button

Validate Sign Out From Current New Profile
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Valid Same Credential
    [Tags]    REGRESSION
    Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET}

Validate Navigate to Sell module After Unassigning Level2
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab After Unassigning Level2
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click On Create Customer Button After Unassigning Level2
    [Tags]    REGRESSION
    Verify Click On Create Customer Button

Validate The Save Customer Profile Button Is Not Available
    [Tags]    REGRESSION
    Verify The Save Customer Profile Button Is Not Available