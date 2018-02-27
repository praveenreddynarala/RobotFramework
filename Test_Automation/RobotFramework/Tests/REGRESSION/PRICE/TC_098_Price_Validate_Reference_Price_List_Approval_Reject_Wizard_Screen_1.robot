*** Settings ***
Documentation     [TAENOSIS-848] A Test Suite With Set Of Tests To Validate Reference Price List Approval Reject Wizard Screen 1

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to IXConnect module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Go To IXTrade Screen With Specific Url
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Reference Price List Management Submenu
    [Tags]    REGRESSION
    Verify Click Reference Price List Management Submenu

Validate Click Approval Reject Wizard Button
    [Tags]    REGRESSION
    Verify Click Approval Reject Wizard Button

Validate The RPLM Approval Reject Wizard Page Loaded Properly
    [Tags]    REGRESSION
    Verify The RPLM Approval Reject Wizard Page Is Present

Validate Action Dropdown Is Displayed
    [Tags]    REGRESSION
    Verify Action Dropdown Is Displayed

Validate Future Action Dropdown Is Displayed
    [Tags]    REGRESSION
    Verify Future Action Dropdown Is Displayed

Validate Set Action to Approve
    [Tags]    REGRESSION
    Verify Set Action   Approve

Validate Future Action Dropdown Is Enable
    [Tags]    REGRESSION
    Verify Future Action Dropdown Is Enable

Validate Apply Custom Rules Is Enable
    [Tags]    REGRESSION
    Verify Apply Custom Rules Is Enable

Validate Set Action to Reject
    [Tags]    REGRESSION
    Verify Set Action   Reject

Validate Future Action Dropdown Is Disable
    [Tags]    REGRESSION
    Verify Future Action Dropdown Is Disable

Validate Apply Custom Rules Is Disable
    [Tags]    REGRESSION
    Verify Apply Custom Rules Is Disable

Validate Record Date Range Start Date Is Present
    [Tags]    REGRESSION
    Verify Record Date Range Start Date Is Present

Validate Record Date Range End Date Is Present
    [Tags]    REGRESSION
    Verify Record Date Range End Date Is Present

Validate Start Date And End Date Range Does Not Exceed 31 Days
    [Tags]    REGRESSION
    Verify Start Date And End Date Range Does Not Exceed 31 Days

Validate Move Available RPL To Destination
    [Tags]    REGRESSION
    Verify Move Available RPL To Destination

Validate Move Available RPLM Country To Destination
    [Tags]    REGRESSION
    Verify Move Available RPLM Country To Destination

Validate Click Approval Wizard Next Button
    [Tags]    REGRESSION
    Verify Click Approval Wizard Next Button

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Click Exit Button
