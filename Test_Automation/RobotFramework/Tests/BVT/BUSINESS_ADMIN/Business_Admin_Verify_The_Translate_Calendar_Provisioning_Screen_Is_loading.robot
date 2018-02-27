*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate The Translate Calendar Provisioning Screen Is Loading

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    BVT
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Translate Menu
    [Tags]    BVT
    Verify Expand Translate Menu

Validate Click Calendar Provisioning Submenu
    [Tags]    BVT
    Verify Click Calendar Provisioning Submenu

Validate Calendar Provisioning Management Screen Is Loaded Properly
    [Tags]    BVT
    Verify Is Calendar Provisioning Management Screen Loaded


