*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Technical Route Validate The View RG Button Functionality

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

Validate Click Route Guide Adjuster Button
    [Tags]    REGRESSION
    Verify Click Route Guide Adjuster Button

Validate The Trg Adjuster Tab Is Available
    [Tags]    REGRESSION
    Verify The Trg Adjuster Tab Is Available

Validate Get All Rows Value Of Trunks Column From Route Guide Adjuste Grid
    [Tags]    REGRESSION
    Verify Get All Rows Value Of Tuunks Column From Route Guide Adjuste Grid

Validate Click View Trags Button
    [Tags]    REGRESSION
    Verify Click View Trags Button

Validate All Rgs Are Available
    [Tags]    REGRESSION
    Verify Compare Rgs For Route Guide Adjuster

Validate Close View Route Guides Tab
    [Tags]    REGRESSION
    Verify Close Current Pop Up     View Route Guides to be Adjusted