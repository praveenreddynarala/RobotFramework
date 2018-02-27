*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate The Customer Rounding Rule Definition Screen Is Loading

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

Validate Click Customer Rounding Rule Definition Submenu
    [Tags]    BVT
    Verify Click Customer Rounding Rule Definition Submenu

Validate Is Customer Rounding Rule Definition Screen Loaded
    [Tags]  BVT
    Verify Is Customer Rounding Rule Definition Screen Loaded

Validate Close Customer Rounding Rule Definition Screen
    [Tags]    BVT
    Verify Close IxConnect Window




