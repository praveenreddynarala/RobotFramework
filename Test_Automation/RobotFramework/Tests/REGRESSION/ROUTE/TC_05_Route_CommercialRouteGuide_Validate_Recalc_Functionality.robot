*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Commercial Route Guide To Validate Recalc Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Click Commercial Routing Grid Search Button
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid Search Button

Validate Select Commercial Routing Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Commercial Routing Grid First Row Checkbox

Validate Click Recalc RGs Button
    [Tags]    REGRESSION
    Verify Click Recalc RGs Button

Validate Click Commercial Routing Grid Cancel Changes Button
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid Cancel Changes Button