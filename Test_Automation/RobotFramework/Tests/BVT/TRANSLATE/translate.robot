*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To Translate Page.

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/translate_page_resource.robot

Library     Screenshot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

Test Teardown   run keyword if test failed      take screenshot

*** Test Cases ***
Validate Navigate To Translate Module
    [Tags]    BVT
    Click on Home icon and select 'Translate' from main menu

Validate Translate Page Is Loaded Properly
    [Tags]    BVT
    Verify 'Translate' Page Is Loaded Without Any Errors

Validate Translate Page Is Closed Properly
    [Tags]    BVT
    Close Translate
