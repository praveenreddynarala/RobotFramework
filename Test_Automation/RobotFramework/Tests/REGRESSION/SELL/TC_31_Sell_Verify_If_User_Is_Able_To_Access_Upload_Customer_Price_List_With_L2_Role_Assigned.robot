*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify If User Is Able To Access Upload Customer Price List With L2 Role Assigned

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
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
    Verify Set Variable Name    EnableSaaSGranularRoles

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
    Verify Assign Roles To Profile      @{USER ROLE LIST FOR SELL}

Validate Assign Level2 Roles To Profile
    [Tags]    REGRESSION
    Verify Assign Level2 Roles To Profile       @{USER LEVEL2 ROLE LIST SELL CUSTOMER PRICE UPLOAD}

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

Validate Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Click Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click On Customer Price Lists Button

Validate Click Upload Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click Upload Customer Price Lists Button

Validate Click Upload Customer Price Lists Browse Button
    [Tags]    REGRESSION
    Verify Click Upload Customer Price Lists Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    set suite variable      ${CALL TYPE}
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${CUSTOMER PRICE LIST TEMPLATE NAME}

Validate Set Customer Name For Price List
    [Tags]    REGRESSION
    Verify Set Customer Name For Price List Upload

Validate Click Price Exceptions Upload Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Upload Button

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
    Verify Unassign Level2 Roles To Profile       @{USER LEVEL2 ROLE LIST SELL CUSTOMER PRICE UPLOAD}

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

Validate Click Customer Price Lists Button After Unassigning Level2
    [Tags]    REGRESSION
    Verify Click On Customer Price Lists Button

Validate The Upload Customer Price List Button Is Not Available
    [Tags]    REGRESSION
    Verify The Upload Customer Price List Button Is Not Available