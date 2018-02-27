*** Settings ***
Documentation    [TAENOSIS-835] A Test Suite To Validate Rates Tab Loads Correctly For CPL

Resource        ../../../Resources/common_resource.robot
Resource        ../../../Resources/Pages/sell_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to sell module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Sell Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Sell Dashboard Tab Is Available

Validate Customer Tab Is Available
    [Tags]    REGRESSION
    Verify The Customer Tab Is Available

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Inline Action Button
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button

Validate Click Customer Rates Inline Action Button
    [Tags]    REGRESSION
    Verify Select Inline Action Item        Customer Rates

Validate Rates Tab Is Loaded Properly
    [Tags]    REGRESSION
    Verify Rates Tab Is Loaded Properly