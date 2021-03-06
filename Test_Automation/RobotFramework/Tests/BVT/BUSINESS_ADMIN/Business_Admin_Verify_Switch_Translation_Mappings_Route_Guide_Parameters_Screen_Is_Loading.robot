*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Switch Translation Mappings Route Guide Parameters Screen Is Loading

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    BVT
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Switch Translation Mappings Menu
    [Tags]    BVT
    Verify Expand Switch Translation Mappings Menu

Validate Click Submenu Of Switch Translation Mappings Menu
    [Tags]    BVT
    Verify Click Submenu Of Switch Translation Mappings Menu        Route Guide Parameters

Validate Translate Page Title
    [Tags]  BVT
    Verify Title Of Translate Page      Route Guide Parameters

Valdiate Close Translate Page Window
    [Tags]  BVT
    Verify Close Business Admin Window
