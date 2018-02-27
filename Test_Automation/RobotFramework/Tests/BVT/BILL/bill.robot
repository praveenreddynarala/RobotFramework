*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation To Bill Page.

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_page_resource.robot

Library           Screenshot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

Test Teardown     run keyword if test failed    take screenshot

*** Test Cases ***
Validate Navigate To Bill Module
    [Tags]    BVT
    Click on Home Icon and Select 'Bill' From Main Menu

Validate Close Bill
    [Tags]    BVT
    Close Bill Page Window
