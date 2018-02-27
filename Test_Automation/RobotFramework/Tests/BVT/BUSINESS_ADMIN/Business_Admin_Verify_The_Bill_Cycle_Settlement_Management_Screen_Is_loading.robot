*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate The Bill Cycle And Settlement Management Screen Is Loading

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/business_admin_page_resource.robot
Resource    ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    BVT
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Rating Menu
    [Tags]    BVT
    Verify Expand Rating Menu

Validate Click Bill Cycle And Settlement Management Submenu
    [Tags]    BVT
    Verify Click Bill Cycle And Settlement Management Submenu

Validate Is Cycle And Settlement Management Screen Loaded
    [Tags]  BVT
    Verify Is Cycle And Settlement Management Screen Loaded

Validate Close Bill Cycle And Settlement Management Screen
    [Tags]    BVT
    Verify Close IxConnect Window




