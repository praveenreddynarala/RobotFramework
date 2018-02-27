*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To Sell Page

Resource        ../../../Resources/common_resource.robot
Resource        ../../../Resources/Pages/sell_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to sell module
    [Tags]    BVT
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Sell Dashboard Tab Is Available
    [Tags]    BVT
    Verify The Sell Dashboard Tab Is Available

Validate Customer Tab Is Available
    [Tags]    BVT
    Verify The Customer Tab Is Available

Validate Country Groups link is Available
    [Tags]    BVT
    Verify Country Groups link is Available

Validate Navigate to Customer Tab
    [Tags]    BVT
    Click On Customer Tab

Validate 'Create Customer' Button Is Present Under Customer Tab
    [Tags]    BVT
    Verify The 'Create Customer' Button Is Present Under Customer Tab

Validate 'Customer Price Lists' Button Is Present Under Customer Tab
    [Tags]    BVT
    Verify The 'Customer Price Lists' Button Is Present Under Customer Tab

Validate 'Create Customer Price Lists' Button Is Present Under Customer Tab
    [Tags]    BVT
    Verify The 'Create Customer Price Lists' Button Is Present Under Customer Tab

Validate 'Price Exceptions' Button Is Present Under Customer Tab
    [Tags]    BVT
    Verify The 'Price Exceptions' Button Is Present Under Customer Tab
