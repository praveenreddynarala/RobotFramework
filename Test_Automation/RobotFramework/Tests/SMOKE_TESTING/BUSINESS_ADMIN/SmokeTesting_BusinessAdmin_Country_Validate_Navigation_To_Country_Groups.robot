*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Business Admin Country To Validate Navigation To Country Groups

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    SMOKE TESTING
    click on home icon and select 'business admin' from main menu

Validate Expand Number Plan Menu
    [Tags]    SMOKE TESTING
    Verify Expand Number Plan Menu

Validate Click Country Submenu
    [Tags]    SMOKE TESTING
    Verify Click Country Submenu

Validate Click Country Groups Button
    [Tags]    SMOKE TESTING
    Verify Click Country Groups Button

Validate Click Country Group Search Button
    [Tags]    SMOKE TESTING
    Verify Click Country Group Search Button

Validate Country Groups Search Is Successful
    [Tags]    SMOKE TESTING
    Verify Country Groups Search Is Successful