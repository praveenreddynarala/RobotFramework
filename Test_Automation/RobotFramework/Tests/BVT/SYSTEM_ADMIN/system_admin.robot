*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To System Admin Page.

Resource        ../../../Resources/common_resource.robot
Resource        ../../../Resources/Pages/system_admin_page_resource.robot

Library         Screenshot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

Test Teardown   run keyword if test failed      take screenshot

*** Test Cases ***
Validate navigation to System Admin module
    [Tags]    BVT
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate System Admin Dashboard Tab Is Available
    [Tags]    BVT
    Verify System Admin Dashboard Tab Is Available

Validate Users Tab Is Available
    [Tags]    BVT
    Verify Users Tab Is Available

Validate System Tab Is Available
    [Tags]    BVT
    Verify System Tab Is Available

Validate Users Tab Header
    [Tags]    BVT
    Click on Users Tab
    Verify User Tab Header

Validate System Tab Header
    [Tags]    BVT
    Click on System Tab
    Verify System Tab Header

Validate Category Link Is Available Under System Tab
    [Tags]    BVT
    Verify Category Link Is Available Under System Tab

Validate Configuration Variables Link Is Available Under System Tab
    [Tags]    BVT
    Verify Configuration Variables Link Is Available Under System Tab

Validate Field Alias Link Is Available Under System Tab
    [Tags]    BVT
    Verify Field Alias Link Is Available Under System Tab
