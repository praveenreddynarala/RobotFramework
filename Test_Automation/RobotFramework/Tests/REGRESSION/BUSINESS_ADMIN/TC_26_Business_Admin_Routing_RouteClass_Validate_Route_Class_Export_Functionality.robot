*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Route Class Validate Route Class Export functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Routing Menu
    [Tags]    REGRESSION
    Verify Expand Routing Menu

Validate Click Route Class Submenu
    [Tags]    REGRESSION
    Verify Click Route Class Submenu

Validate Click Route Class Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Route Class Export To Excel Button
