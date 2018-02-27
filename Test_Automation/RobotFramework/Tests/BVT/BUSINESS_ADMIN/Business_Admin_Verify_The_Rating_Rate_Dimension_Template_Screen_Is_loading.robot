*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate The Rate Dimension Template Screen Is Loading

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

Validate Click Rate Dimension Template Submenu
    [Tags]    BVT
    Verify Click Rate Dimension Template Submenu

Validate Switch To Rate Dimension Template
    [Tags]  BVT
    Verify Switch To IXConnect

Validate Rate Dimension Template Screen Is Loaded Properly
    [Tags]    BVT
    Verify Select Destination Submenu

Validate Close Rate Dimension Template Screen
    [Tags]    BVT
    Verify Close IxConnect Window




