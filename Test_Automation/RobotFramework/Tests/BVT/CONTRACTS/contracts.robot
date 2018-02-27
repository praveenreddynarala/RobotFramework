*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To Contracts Page.

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/contracts_page_resource.robot

Library     Screenshot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

Test Teardown   run keyword if test failed      take screenshot

*** Test Cases ***
Validate Navigate To Contracts Module
    [Tags]  BVT
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Contracts Page is Loaded Properly
    [Tags]  BVT
    Is Contracts Page Loaded Properly
    Close iXConnect Page

