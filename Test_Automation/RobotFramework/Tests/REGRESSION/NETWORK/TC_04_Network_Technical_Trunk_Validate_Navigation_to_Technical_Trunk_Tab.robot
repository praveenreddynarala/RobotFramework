*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To Technical Trunks Tab.

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/network_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Network module
    [Tags]  REGRESSION
    Click on Home Icon and Select 'Network' From Main Menu

Validate Technical Trunks Tab Is Available
    [Tags]  REGRESSION
    Verify The Technical Trunks Tab Is Available

Validate Navigate to Technical Trunks Tab
    [Tags]  REGRESSION
    Click On Technical Trunks Tab

Validate Technical Trunks Tab Is Loaded Properly
    [Tags]  REGRESSION
    Verify Technical Trunks Tab Is Loaded Properly