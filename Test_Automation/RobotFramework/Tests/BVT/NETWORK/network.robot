*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To Network Page.

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/network_page_resource.robot

Library     Screenshot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

Test Teardown   run keyword if test failed      take screenshot

*** Test Cases ***
Validate Navigate to Network module
    [Tags]  BVT
    Click on Home Icon and Select 'Network' From Main Menu

Validate Network Dashboard Tab Is Available
    [Tags]  BVT
    Verify The Network Dashboard Tab Is Available

Validate Technical Trunks Tab Is Available
    [Tags]  BVT
    Verify The Technical Trunks Tab Is Available

Validate Commercial Trunks Tab Is Available
    [Tags]  BVT
    Verify The Commercial Trunks Tab Is Available

Validate Navigate to Technical Trunks Tab
    [Tags]  BVT
    Click On Technical Trunks Tab
    Verify Technical Trunks Tab Header

Validate Navigation to Commercial Trunks Tab
    [Tags]  BVT
    Click On Commercial Trunks Tab
    Verify Commercial Trunks Tab Header
