*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate The Number Plan Network Codes Screen Is Loading

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    BVT
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Number Plan Menu
    [Tags]    BVT
    Verify Expand Number Plan Menu

Validate Click Network Codes Link
    [Tags]    BVT
    Verify Click Network Codes Submenu

Validate Network Codes Screen Is Loaded Properly
    [Tags]    BVT
    Verify Is Network Codes Screen Loaded


