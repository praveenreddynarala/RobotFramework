*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate The Destination Screen Is Loading

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/business_admin_page_resource.robot
Resource    ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    BVT
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Number Plan Menu
    [Tags]    BVT
    Verify Expand Number Plan Menu

Validate Click Destination Link
    [Tags]    BVT
    Verify Click Destination Submenu

Validate Switch To Destination
    [Tags]  BVT
    Verify Switch To IXConnect

Validate Destination Screen Is Loaded Properly
    [Tags]    BVT
    Verify Select Destination Submenu

Validate Close Destination Screen
    [Tags]    BVT
    Verify Close IxConnect Window




