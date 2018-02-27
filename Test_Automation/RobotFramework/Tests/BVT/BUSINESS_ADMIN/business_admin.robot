*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To Business Admin Page.

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]  BVT
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Business Admin Dashboard Tab Is Available
    [Tags]  BVT
    Verify The Business Admin Dashboard Tab Is Available
