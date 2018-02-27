*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Commercial Route Guide To Validate Navigation To Commercial Route Guide Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    SMOKE TESTING
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    SMOKE TESTING
    Verify Select Commercial Routing Tab

Validate Commercial Routing Page Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Commercial Routing Page Is Loaded Properly