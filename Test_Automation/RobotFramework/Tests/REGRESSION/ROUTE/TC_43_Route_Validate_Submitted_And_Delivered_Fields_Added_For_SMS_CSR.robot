*** Settings ***
Documentation     [TAENOSIS-961] A Test Suite With Set Of Tests To Validate Submitted And Delivered Fields Added For SMS CSR

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot

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

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        2

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

Validate The Successful Submitted Column Is Available In CSRM Grid
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In CSRM Grid        Successful Submitted

Validate The Successful Delivered Column Is Available In CSRM Grid
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In CSRM Grid        Successful Delivered

Validate Close Route Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window After Setting iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Route module After Setting iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab After Setting iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Click Customer Specific Routing Button After Setting iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Click Customer Specific Routing Button

Validate Filter Customer Specific Routing Grid Alerts Column
    [Tags]    REGRESSION
    Verify Filter Customer Specific Routing Grid Alerts Column      SMS Call Type

Validate Click CSRM Grid First Row Routing Product Link
    [Tags]    REGRESSION
    Verify Click CSRM Grid First Row Routing Product Link

Validate Successful Submitted Column Is Present In CSRRG Grid
    [Tags]    REGRESSION
    Verify Specific Column Is Present In CSRRG Grid     Successful Submitted

Validate Successful Delivered Column Is Present In CSRRG Grid
    [Tags]    REGRESSION
    Verify Specific Column Is Present In CSRRG Grid     Successful Delivered

Close CSR Route Guide Tab
    [Tags]    REGRESSIOn
    route_page_resource.Verify Close Current Tab        CSR RG

Validate Select Customer Specific Routing Management Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Customer Specific Routing Management Grid First Row Checkbox

Validate Click New CSR Button
    [Tags]    REGRESSION
    Verify Click New CSR Button

Validate The New Customer Specific Route Guide Pop Up Is Available
    [Tags]    REGRESSION
    Verify The New Customer Route Guide Pop Up Is Available

Validate Close New Customer Specific Route Guide Guide Pop Up
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Pop Up     New Customer Specific Route Guide