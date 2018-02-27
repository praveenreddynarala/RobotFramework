*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate Column Name Total RPL To Be Approved Is Updated To Total RPL Records To be Approved

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

Validate Click Approval Reject Wizard Button
    [Tags]    REGRESSION
    Verify Click Approval Reject Wizard Button

Validate The RPLM Approval Reject Wizard Page Loaded Properly
    [Tags]    REGRESSION
    Verify The RPLM Approval Reject Wizard Page Is Present

Validate Move Available RPL To Destination
    [Tags]    REGRESSION
    Verify Move Available RPL To Destination

Validate Move Available RPLM Country To Destination
    [Tags]    REGRESSION
    Verify Move Available RPLM Country To Destination

Validate Click Approval Wizard Next Button
    [Tags]    REGRESSION
    Verify Click Approval Wizard Next Button

Validate Total RPL Report Column Is Present
    [Tags]    REGRESSION
    Verify Total RPL Report Column Is Present

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Click Exit Button