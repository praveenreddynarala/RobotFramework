*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To Carrier Page

Resource        ../../../Resources/common_resource.robot
Resource        ../../../Resources/Pages/carrier_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]  BVT
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Carrier Dashboard Tab Is Available
    [Tags]  BVT
    Verify The Carrier Dashboard Tab Is Available

Validate Carriers Tab Is Available
    [Tags]  BVT
    Verify The Carriers Tab Is Available

Validate Navigate To Carriers Tab
    [Tags]  BVT
    Click On Carriers Tab

Validate Carriers Tab Header
    [Tags]  BVT
    Verify Carriers Tab Header

Validate Navigate To Credit Management Tab
    [Tags]  BVT
    Click On Credit Management Tab

Validate Credit Management Tab Header
    [Tags]  BVT
    Verify Credit Management Tab Header
