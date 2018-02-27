*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation To Alert Page.

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/alert_page_resource.robot

Library           Screenshot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

Test Teardown     run keyword if test failed    take screenshot

*** Test Cases ***
Validate Navigate To Alert Module
    [Tags]    BVT
    Click on Home Icon and Select 'Alert' From Main Menu

Validate Close Alert
    [Tags]    BVT
    Close Alert Page Window
