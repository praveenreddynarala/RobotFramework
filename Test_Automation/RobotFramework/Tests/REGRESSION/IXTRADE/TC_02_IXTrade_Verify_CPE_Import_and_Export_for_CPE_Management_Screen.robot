*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify CPE Import and Export for CPE Management Screen

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

Validate Click Customer Pricing Exception Management Search Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Search Button

Validate Click Price Exception Management Screen Export Button and Check the Warning Message
    [Tags]    REGRESSION
    [Documentation]  IE doesn't allow to access any downloaded file, hence exporting the file has been skipped
    Verify Click Price Exception Management Screen Export Button

Validate Click Price Exception Management Screen Import Button and Check the Upload Pop up
    [Tags]    REGRESSION
    Verify Click Price Exception Management Screen Import Button

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Click Exit Button
