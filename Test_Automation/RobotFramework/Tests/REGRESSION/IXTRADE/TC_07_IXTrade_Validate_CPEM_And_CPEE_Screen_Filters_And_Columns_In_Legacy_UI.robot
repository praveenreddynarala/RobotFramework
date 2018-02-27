*** Settings ***
Documentation    [TAENOSIS-982] Validate CPEM and CPEE Screen Filters And Columns In Legacy UI

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

Validate Click Customer Pricing exception management Submenu
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Submenu

Validate Refresh iXTrade Window
    [Tags]    REGRESSION
    Verify Refresh iXTrade Window

Validate Click Legacy Ui Link
    [Tags]    REGRESSION
    Verify Click Legacy Ui Link

Validate Click Customer Pricing Exception Management Go Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Go Button

Validate Click Select Order Column Button
    [Tags]    REGRESSION
    Verify Click Select Order Column Button

Validate Is Margin Percentage Checkbox Present
    [Tags]    REGRESSION
    Verify Is Margin Percentage Checkbox Present

Validate Check Margin Percentage Checkbox
    [Tags]    REGRESSION
    Verify Check Margin Percentage Checkbox

Validate Is Margin Percentage Column Present
    [Tags]    REGRESSION
    Verify Is Margin Percentage Column Present

Validate Click Customer Pricing exception Entry Submenu
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception entry Submenu

Validate Refresh iXTrade Window For CPEE
    [Tags]    REGRESSION
    Verify Refresh iXTrade Window

Validate Click Legacy Ui Link For CPEE
    [Tags]    REGRESSION
    Verify Click Legacy Ui Link

Validate Click Customer Pricing Exception Management Go Button With Validatation
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Go Button With Validatation

Validate Set CPEE Status For CPEE
    [Tags]    REGRESSION
    Verify Set CPEE Status      Entered

Validate Click Customer Pricing Exception Management Go Button For CPEE
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Go Button

Validate Click Select Order Column Button For CPEE
    [Tags]    REGRESSION
    Verify Click Select Order Column Button

Validate Is Margin Percentage Checkbox Present For CPEE
    [Tags]    REGRESSION
    Verify Is Margin Percentage Checkbox Present

Validate Check Margin Percentage Checkbox For CPEE
    [Tags]    REGRESSION
    Verify Check Margin Percentage Checkbox

Validate is margin percentage column present For CPEE
    [Tags]    REGRESSION
    Verify Is Margin Percentage Column Present

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Click Exit Button
