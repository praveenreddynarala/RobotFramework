*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Legacy Link In New Cpe Management Screen

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

Validate Click Legacy Ui Link
    [Tags]    REGRESSION
    Verify Click Legacy Ui Link

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button