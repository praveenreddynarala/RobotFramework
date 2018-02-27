*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To Buy Page

Resource        ../../../Resources/common_resource.robot
Resource        ../../../Resources/Pages/buy_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate navigate to Buy module
    [Tags]  BVT
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Buy Dashboard Tab Is Available
    [Tags]  BVT
    Verify The Buy Dashboard Tab Is Available

Validate Vendors Tab Is Available
    [Tags]  BVT
    Verify The Vendors Tab Is Available

Validate Country Groups link is Available
    [Tags]  BVT
    Verify Country Groups link is Available

Validate Re-Analysis link is Available
    [Tags]  BVT
    Verify Re-Analysis link is Available

Validation navigate to Vendors Tab
    [Tags]  BVT
    verify click on vendors tab

Validate 'Create Vendor' Button Is Present Under Vendors Tab
    [Tags]  BVT
    Verify The 'Create Vendor' Button Is Present Under Vendors Tab

Validate 'Vendor Price Lists' Button Is Present Under Vendors Tab
    [Tags]  BVT
    Verify The 'Vendor Price Lists' Button Is Present Under Vendors Tab
