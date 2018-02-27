*** Settings ***
Documentation     [TAENOSIS-796] A Test Suite With Set Of Tests To Validate Rate Effective Date And Account Columns In CSR RGworksheet

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot

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

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Set Variable Name For VOIPMOSEnabled
    [Tags]    REGRESSION
    Verify Set Variable Name    VOIPMOSEnabled

Validate Click Search Button For VOIPMOSEnabled
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column For VOIPMOSEnabled
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        yes

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Click Customer Specific Routing Button
    [Tags]    REGRESSION
    Verify Click Customer Specific Routing Button

Validate Click CSRM Grid First Row Routing Product Link
    [Tags]    REGRESSION
    Verify Click CSRM Grid First Row Routing Product Link

Validate Account Column IS Present In CSRRG Grid
    [Tags]    REGRESSION
    Verify Specific Column Is Present In CSRRG Grid        Account

Validate Rate Effective Date Column IS Present In CSRRG Grid
    [Tags]    REGRESSION
    Verify Specific Column Is Present In CSRRG Grid        Rate Effective Date