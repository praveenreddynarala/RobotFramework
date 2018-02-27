*** Settings ***
Documentation     A Test Suite With Set Of Tests For Price Validate Upload Costs Screen Preselects The Cost Policy

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Select Cost Policies Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Cost Policies Grid First Row Checkbox

Validate Click Costs Button
    [Tags]    REGRESSION
    Verify Click Costs Button

Validate Cost Policy Is Preselected
    [Tags]    REGRESSION
    Verify Cost Policy Is Preselected

Validate Click Upload Costs Button
    [Tags]    REGRESSION
    Verify Click Upload Costs Button

Validate Cost Policy Is Preselected In Upload Costs
    [Tags]    REGRESSION
    Verify Cost Policy Is Preselected In Upload Costs

