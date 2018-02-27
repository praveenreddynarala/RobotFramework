*** Settings ***
Documentation     A Test Suite With Set Of Tests For System Admin Regression Suite TO Validate The Inline Actions Available

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${FIRST USER}       ${EMPTY}
*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab
    [Tags]    REGRESSION
    Click on Users Tab

Validate Get User Name
   [Tags]    REGRESSION
    ${FIRST USER} =    Verify Get User Name
    log   ${FIRST USER}
    set suite variable      ${FIRST USER}

Validate Set User Name For Search
    [Tags]    REGRESSION
    Verify Set User Name For Search     ${FIRST USER}

Validate Click Users Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Click Users Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Users Grid First Row Inline Action Button

Validate View Edit Profile Inline Action Item Is Present
    [Tags]    REGRESSION
    Verify View Edit Profile Inline Action Item Is Present

Validate Carrier Security Inline Action Item Is Present
    [Tags]    REGRESSION
    Verify Carrier Security Inline Action Item Is Present

Validate Select View Edit Profile Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${VIEW EDIT PROFILE INLINE ITEM}

Validate View Edit User Profile Pop Up Is Loaded Properly
    [Tags]    REGRESSION
    Verify View Edit User Profile Pop Up Is Loaded Properly

Validate Compare Selected User Name
    [Tags]    REGRESSION
    Verify Compare Selected User Name

Validate Close View Edit Profile Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up     ${VIEW EDIT USER PROFILE POP UP NAME}

Validate Click Users Grid First Row Inline Action Button After Close Pop Up
    [Tags]    REGRESSION
    Verify Click Users Grid First Row Inline Action Button

Validate Select Carrier Security Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${CARRIER SECURITY INLINE ITEM}

Validate Carrier Security Pop Up Is Loaded Properly
    [Tags]    REGRESSION
    Verify Carrier Security Pop Up Is Loaded Properly

Validate Close Carrier Security Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up     ${VIEW EDIT USER PROFILE POP UP NAME}