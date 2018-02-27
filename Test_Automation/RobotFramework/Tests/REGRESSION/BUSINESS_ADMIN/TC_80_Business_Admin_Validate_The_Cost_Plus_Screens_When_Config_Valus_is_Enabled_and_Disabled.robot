*** Settings ***
Documentation     [TAENOSIS-746] A Test Suite With Set Of Tests To Validate The Cost Plus Screens When Config Valus is Enabled and Disabled

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set iXTools Scope
    [Tags]    REGRESSION
    Verify Set Scope    iXTools

Validate Set Variable Name For CostPlus
    [Tags]    REGRESSION
    Verify Set Variable Name    CostPlus

Validate Click Configuration Variables Grid Search Button For CostPlus
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Internal Cost Adjustment Submenu
    [Tags]    REGRESSION
    Verify Click Internal Cost Adjustment Submenu

Validate Close Business Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module to Revert Back The Config Value
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab to Revert Back The Config Value
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button to Revert Back The Config Value
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set iXTools Scope to Revert Back The Config Value
    [Tags]    REGRESSION
    Verify Set Scope    iXTools

Validate Set Variable Name For CostPlus to Revert Back The Config Value
    [Tags]    REGRESSION
    Verify Set Variable Name    CostPlus

Validate Click Configuration Variables Grid Search Button For CostPlus to Revert Back The Config Value
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column to Revert Back The Config Value
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        0

Validate Close System Admin Window to Verify The Internal Cost Plus Link is Not Present
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Business Admin module to Verify The Internal Cost Plus Link is Not Present
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate Expand Trading Menu to Verify The Internal Cost Plus Link is Not Present
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Internal Cost Adjustment Link is Not Present
    [Tags]    REGRESSION
    Verify Internal Cost Adjustment Link is Not Present