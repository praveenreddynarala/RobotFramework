*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Reset Config Value to Default Value

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

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

Validate Set Scope
    [Tags]    REGRESSION
    Verify Set Scope        General

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    InboundReferenceNumberPlanID

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Default Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        -1

Validate Set Outbound Reference Number Plan ID Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    OutboundReferenceNumberPlanID

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Outbound Reference Number Plan Default Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        -1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window