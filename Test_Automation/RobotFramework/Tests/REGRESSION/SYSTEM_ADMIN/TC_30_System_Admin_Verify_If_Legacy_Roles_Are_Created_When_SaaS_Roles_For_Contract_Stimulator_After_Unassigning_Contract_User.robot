*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify If Legacy Roles Are Created When SaaS Roles For Contract Stimulator After Uassigning Contract User

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW USER NAME}       ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Get User Name
   [Tags]    REGRESSION
    ${NEW USER NAME} =    Verify Get User Name
    log   ${NEW USER NAME}
    set suite variable      ${NEW USER NAME}

Validate Select Users Tab To Unassign Contract User
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click Security Profile Button To Unassign Contract User
    [Tags]    REGRESSION
    Verify Click Security Profile Button

Validate Filter Profiles Grid With Created Profile To Unassign Contract User
    [Tags]    REGRESSION
    Verify Filter Profiles Grid With Profile Name        ${PROFILE COLUMN NAME}

Validate Click Profile Grid Row Inline Action Button To Unassign Contract User
    [Tags]    REGRESSION
    ${PROFILE NAME} =       Verify Get Created New Profile Name
    Verify Click Profile Grid Row Inline Action Button      ${PROFILE NAME}

Validate Select Inline Action Item After Setting All Contract Roles To Unassign Contract User
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item        ${VIEW EDIT PROFILE INLINE ITEM}

Validate Unassign Assigned Contract User Role To Unassigned Role
    [Tags]    REGRESSION
    Verify Unassign Assigned Roles To Unassigned Role       Contract User

Validate Click View Edit Profile Save Button To Unassign Contract User
    [Tags]    REGRESSION
    Verify Click View Edit Profile Save Button

Validate Sign Out From System Admin Module After Unassigning Contract User Role
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Valid Credential After Unassigning Contract User Role
    [Tags]    REGRESSION
    Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET}

Validate Navigate to Contracts module After Unassigning Contract User Role
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Click Contract Simulator Button After Unassigning Contract User Role
    [Tags]    REGRESSION
    Verify Click Contract Simulator Button

Validate The Contract Simulator Search Button Is Available After Unassigning Contract User Role
    [Tags]    REGRESSION
    Verify The Contract Simulator Search Button Is Available

Validate The Contract Simulator Download Button Is Not Available After Setting All Contract Roles
    [Tags]    REGRESSION
    Verify The Contract Simulator Download Button Is Not Available

Validate The Contract Simulator Upload Button Is Not Available After Unassigning Contract User Role
    [Tags]    REGRESSION
    Verify The Contract Simulator Upload Button Is Not Available

Validate Close IXConnect Window After Unassigning Contract User Role
    [Tags]    REGRESSION
    Verify Close IxConnect Window