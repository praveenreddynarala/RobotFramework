*** Settings ***
Documentation     A Test Suite With Set Of Tests For System Admin Regression Suite Validate Inline Action Available In Security

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

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

Validate Filter Profiles Grid With Created Profile
    [Tags]    REGRESSION
    Verify Filter Profiles Grid With Profile Name       ${PROFILE COLUMN NAME}

Validate Click Profile Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Profile Grid First Row Inline Action Button

Validate View Edit Profile Inline Action Item Is Present
    [Tags]    REGRESSION
    Verify View Edit Profile Inline Action Item Is Present

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${VIEW EDIT PROFILE INLINE ITEM}

Validate View Edit Profile Pop Up Is Loaded Properly
    [Tags]    REGRESSION
    Verify View Edit Profile Pop Up Is Loaded Properly

Validate Close View Edit Profile Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up     ${VIEW EDIT PROFILE POP UP NAME}