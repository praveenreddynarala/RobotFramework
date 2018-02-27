*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To Report Page.

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/report_page_resource.robot

Library     Screenshot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

Test Teardown   run keyword if test failed      take screenshot

*** Test Cases ***
Validate Navigate To Report Module
    [Tags]    BVT
    Click on Home Icon and Select 'Report' From Main Menu

Validate Close Report
    [Tags]    BVT
    Close Report Window