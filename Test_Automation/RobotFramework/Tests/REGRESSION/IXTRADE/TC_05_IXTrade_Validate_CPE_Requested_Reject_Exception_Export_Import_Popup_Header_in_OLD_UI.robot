*** Settings ***
Documentation    [TAENOSIS-851] Validate "CPE Requested/Rejected Exception Export Import" popup header in OLD UI

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

Validate Click Price Exception Management Screen Import Button and Check the Upload Pop up
    [Tags]    REGRESSION
    Verify Click Price Exception Management Screen Import Button

Validate Click Legacy Ui Link
    [Tags]    REGRESSION
    Verify Click Legacy Ui Link

Validate Click Customer Pricing Exception Management Go Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Go Button

Validate Click Customer Pricing Exception Management Export Import Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Export Import Button

Validate Export Import Requested Exception For Customer Pricing Exceptions Window is Opened
    [Tags]    REGRESSION
    Verify Is Export Import Requested Exception For Customer Pricing Exceptions Window Opened

Validate Close Export Import Requested Exception For Customer Pricing Exceptions Window
    [Tags]    REGRESSION
    Verify Close Export Import Requested Exception For Customer Pricing Exceptions Window

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Click Exit Button
