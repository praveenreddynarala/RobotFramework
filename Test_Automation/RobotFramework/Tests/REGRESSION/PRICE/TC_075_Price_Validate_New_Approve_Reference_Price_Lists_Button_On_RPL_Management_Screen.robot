*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate New Approvae Reference Price Lists Button On RPL Management Screen

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

Validate Click Click Reference Price List management Submenu
    [Tags]    REGRESSION
    Verify Click Reference Price List management Submenu

Validate The Approval Reject Wizard Button Is Present
    [Tags]    REGRESSION
    Verify The Approval Reject Wizard Button Is Present

Validate Click Approval Reject Wizard Button
    [Tags]    REGRESSION
    Verify Click Approval Reject Wizard Button

Validate The RPLM Approval Reject Wizard Page Loaded Properly
    [Tags]    REGRESSION
    Verify The RPLM Approval Reject Wizard Page Is Present

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Click Exit Button