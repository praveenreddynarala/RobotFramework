*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate The Configuaration Settings To Enable Cost Plus Adjustment Feature

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/business_admin_page_resource.robot
Resource    ../../../Resources/Pages/system_admin_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    BVT
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    BVT
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    BVT
    Verify Click Configuration Variables Button

Validate Set Scope
    [Tags]    BVT
    Verify Set Scope        iXTools

Validate Set Variable Name
    [Tags]    BVT
    Verify Set Variable Name    CostPlus

Validate Click Configuration Variables Grid Search Button
    [Tags]    BVT
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    BVT
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    BVT
    Verify Close System Admin Window

Validate Navigate to Business Admin module
    [Tags]    BVT
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Trading Menu
    [Tags]    BVT
    Verify Expand Trading Menu

Validate Click Internal Cost Adjustment Submenu
    [Tags]    BVT
    Verify Click Internal Cost Adjustment Submenu