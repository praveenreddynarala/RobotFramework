*** Settings ***
Documentation     [TAENOSIS-979] A Test Suite With Set Of Tests To Validate Pricing Exception Upload Template Will Be Enhanced To Support Settlement Origin

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
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
    Verify Set Variable Name    EnableSettlementOriginRating

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Click Upload Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Upload Price Exceptions Button

Validate Click Price Exception Excel Template Download Button
    [Tags]    REGRESSION
    Verify Click Price Exception Excel Template Download Button

Validate Close Upload Price Exceptions Pop Up
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Pop Up     Upload Price Exceptions