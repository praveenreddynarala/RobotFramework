*** Settings ***
Documentation     [TAENOSIS-959] Validate Target Buy List Ccreen "Calculate" Button References the Correct Job

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Target Buy List Submenu
    [Tags]    REGRESSION
    Verify Click Target Buy List Submenu

Validate Click Target Buy List Calculate Button
    [Tags]    REGRESSION
    Verify Click Target Buy List Calculate Button

Validate Cost Forecast Job Initialization Message is Shown
    [Tags]    REGRESSION
    Verify Cost Forecast Job Initialization Message is Shown

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button