*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation To Audit Page.

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/audit_page_resource.robot

Library           Screenshot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

Test Teardown     run keyword if test failed    take screenshot

*** Test Cases ***
Validate Navigate To Audit Module
    [Tags]    BVT
    Click on Home Icon and Select 'Audit' From Main Menu

Validate Close Audit
    [Tags]    BVT
    Close Audit Page Window
