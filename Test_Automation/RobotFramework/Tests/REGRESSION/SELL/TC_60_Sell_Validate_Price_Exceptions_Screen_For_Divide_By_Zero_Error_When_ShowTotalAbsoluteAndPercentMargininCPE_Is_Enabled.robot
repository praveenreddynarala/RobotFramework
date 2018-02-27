*** Settings ***
Documentation     [TAENOSIS-836] A Test Suite With Set Of Tests To Validate Price Exceptions Screen For Divide By Zero Error When ShowTotalAbsoluteAndPercentMargininCPE Is Enabled

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

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
    Verify Set Variable Name    ShowTotalAbsoluteAndPercentMargininCPE

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Review Customer Price Exception Requests Link
    [Tags]    REGRESSION
    Verify Click Review Customer Price Exception Requests Link

Validate Review Customer Price Exception Requests Search Grid Is Available
    [Tags]    REGRESSION
    Verify Review Customer Price Exception Requests Search Grid Is Available

Validate Close Price Window
    [Tags]    REGRESSIOn
    Verify Close Price Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Click On Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Review Customer Price Exception Requests Search Grid Is Available In Sell Module
    [Tags]    REGRESSION
    Verify Review Customer Price Exception Requests Search Grid Is Available