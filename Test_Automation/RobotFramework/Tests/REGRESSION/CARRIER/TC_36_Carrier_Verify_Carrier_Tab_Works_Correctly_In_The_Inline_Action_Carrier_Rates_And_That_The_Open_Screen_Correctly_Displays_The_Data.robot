*** Settings ***
Documentation     A Test Suite With Set Of Tests For Carrier To Verify Carrier Tab Works Correctly In The Inline Action Carrier Rates And That The Open Screen Correctly Displays The Data

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click Carriers Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action       Carrier Rates

Validate Rates Tab Loaded Properly
    [Tags]    REGRESSION
    Verify Rates Tab Loaded Properly