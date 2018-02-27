*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To Route Page.

Resource        ../../../Resources/common_resource.robot
Resource        ../../../Resources/Pages/route_page_resource.robot

Library     Screenshot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

Test Teardown   run keyword if test failed      take screenshot

*** Test Cases ***
Validate Navigate to Route module
    [Tags]  BVT
    Click on Home Icon and Select 'Route' From Main Menu

Validate Commercial Dashboard Tab Is Available
    [Tags]  BVT
    Verify The Commercial Dashboard Tab Is Available

Validate Commercial Routing Tab Is Available
    [Tags]  BVT
    Verify The Commercial Routing Tab Is Available

Validate Technical Routing Tab Is Available
    [Tags]  BVT
    Verify The Technical Routing Tab Is Available

Validate Manage Reasons link is Available
    [Tags]  BVT
    Verify Manage Reasons link is Available

Validate Transition Automation link is Available
    [Tags]  BVT
    Verify Transition Automation link is Available

Validate Navigate To Commercial Routing Tab
    [Tags]  BVT
    Verify Select Commercial Routing Tab

Validate Commercial Routing Tab Header
    [Tags]  BVT
    Verify Commercial Routing Tab Header

Validate Navigate to Technical Routing Tab
    [Tags]  BVT
    Verify Select Technical Routing Tab

Validate Technical Routing Tab Header
    [Tags]  BVT
    Verify Technical Routing Tab Header
