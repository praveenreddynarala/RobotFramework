*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify The Routing Product Filter

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Technical Routing Tab
    [Tags]    REGRESSION
    Verify Select Technical Routing Tab

Validate Set Route Class For Search
    [Tags]    REGRESSION
    Verify Set First Routing Product For Search

Validate Clear Routing Product Dropdown Selection
    [Tags]    REGRESSION
    Verify Clear Routing Product Dropdown Selection

Validate Set Route Class For Search After Clearing
    [Tags]    REGRESSION
    Verify Set First Routing Product For Search