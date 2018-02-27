*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation to Transaction Screen

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

Validate Expand Subscribers And Calling Plans Menu
    [Tags]    BVT
    Verify Expand Subscribers And Calling Plans Menu

Validate Click Submenu Of Subscribers And Calling Plans Menu
    [Tags]    BVT
    Verify Click Submenu Of Subscribers And Calling Plans Menu          Transaction

Validate Transaction Tab Header
    [Tags]    BVT
    Verify Business Admin Page Tab Header       Transaction