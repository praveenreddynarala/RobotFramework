*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To Job Maintenance Page.

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/job_maintenance_page_resource.robot

Library     Screenshot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

Test Teardown   run keyword if test failed      take screenshot

*** Test Cases ***
Validate Navigate To Job Maintenance Module
    [Tags]  BVT
    Click on Home Icon and Select 'Job Maintenance' From Main Menu

Validate Close iXcontrol Page
    [Tags]    BVT
    Close iXControl Page
