*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Route Class Screen Is Loading

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/business_admin_page_resource.robot

Library     Screenshot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

Test Teardown   run keyword if test failed      take screenshot

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    BVT
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Routing Menu
    [Tags]    BVT
    Verify Expand Routing Menu

Validate Click Route Class Submenu
    [Tags]    BVT
    Verify Click Route Class Submenu

Validate Route Class Page Loaded Properly
    [Tags]    BVT
    Verify Route Class Page Loaded Properly