*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify If Legacy Roles Are Created When SaaS Roles For Contract Stimulator After Uassigning Contract Viewer

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW USER NAME}    ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Get User Name
    [Tags]    REGRESSION
    ${NEW USER NAME} =    Verify Get User Name
    log    ${NEW USER NAME}
    set suite variable    ${NEW USER NAME}

Validate Select Users Tab To Unassign Contract Viewer
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click Security Profile Button To Unassign Contract Viewer
    [Tags]    REGRESSION
    Verify Click Security Profile Button

Validate Filter Profiles Grid With Created Profile To Unassign Contract Viewer
    [Tags]    REGRESSION
    Verify Filter Profiles Grid With Profile Name        ${PROFILE COLUMN NAME}

Validate Click Profile Grid Row Inline Action Button To Unassign Contract Viewer
    [Tags]    REGRESSION
    ${PROFILE NAME} =       Verify Get Created New Profile Name
    Verify Click Profile Grid Row Inline Action Button      ${PROFILE NAME}

Validate Select Inline Action Item After Setting All Contract Roles To Unassign Contract Viewer
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item    ${VIEW EDIT PROFILE INLINE ITEM}

Validate Unassign Assigned Contract User Role To Unassigned Viewer
    [Tags]    REGRESSION
    Verify Unassign Assigned Roles To Unassigned Role    Contract Viewer

Validate Click View Edit Profile Save Button To Unassign Contract Viewer
    [Tags]    REGRESSION
    Verify Click View Edit Profile Save Button

Validate Sign Out From System Admin Module After Unassigning Contract Viewer
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Valid Credential After Unassigning Contract Viewer Role
    [Tags]    REGRESSION
    Submit Credentials    ${NEW USER NAME}    ${NEW USER PASSWORD FOR RESET}

Validate The Contract submenu Is Not Available
    [Tags]    REGRESSION
    Verify The Contract Submenu Is Not Available