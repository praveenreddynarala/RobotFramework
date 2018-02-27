*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify The Cpe Management Screen In Legacy

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to IXContract Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Customer Pricing exception management Submenu
    [Tags]    REGRESSION
    Verify Click Customer Pricing exception management Submenu

Validate Click Customer Pricing Exception Management Search Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Search Button

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button