*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Summarization Screen Is Loading

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

Validate Expand Bill And Audit Menu
    [Tags]    BVT
    Verify Expand Bill And Audit Menu

Validate Click Summarization Level Submenu
    [Tags]    BVT
    Verify Click Summarization Level Submenu

Validate Summarization Level Page Loaded Properly
    [Tags]    BVT
    Verify Summarization Level Page Loaded Properly