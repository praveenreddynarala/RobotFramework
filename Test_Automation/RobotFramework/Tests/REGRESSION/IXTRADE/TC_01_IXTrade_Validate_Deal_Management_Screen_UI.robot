*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate Deal Management Screen UI

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

Validate Click Buy Sell Deal Management Submenu
    [Tags]    REGRESSION
    Verify Click Buy Sell Deal Management Submenu

Validate Buy And Sell Deal Dropdown Is Present
    [Tags]    REGRESSION
    Verify Buy And Sell Deal Dropdown Is Present

Validate Status Dropdown Is Present
    [Tags]    REGRESSION
    Verify Status Dropdown Is Present

Validate Start Date Datepicker Is Present
    [Tags]    REGRESSION
    Verify Start Date Datepicker Is Present

Validate End Date datepicker Is Present
    [Tags]    REGRESSION
    Verify End Date datepicker Is Present

Validate Save Changes Button Is Present
    [Tags]    REGRESSION
    Verify Save Changes Button Is Present

Validate Cancel Changes Button Is Present
    [Tags]    REGRESSION
    Verify Cancel Changes Button Is Present

Validate Request New Buy And Sell Deal Button Is Present
    [Tags]    REGRESSION
    Verify Request New Buy And Sell Deal Button Is Present

Validate Deal Bulk Edit Button Is Present
    [Tags]    REGRESSION
    Verify Deal Bulk Edit Button Is Present

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Click Exit Button
