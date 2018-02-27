*** Settings ***
Documentation   [TAENOSIS-866] A Test Suite With Set Of Tests To Validate Technical Trunks Tab RG Adjuster Button

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
    [Tags]    REGRESSION
    Verify Technical Trunks Tab Is Loaded Properly

Validate Click RG Adjuster Button
    [Tags]    REGRESSION
    Verify Click RG Adjuster Button

Validate Technical Route Guide Adjuster Is Loaded Properly
    [Tags]    REGRESSION
    Verify Technical Route Guide Adjuster Is Loaded Properly