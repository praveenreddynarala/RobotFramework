*** Settings ***
Documentation     [TAENOSIS-828] A Test Suite With Set Of Tests For Business Admin To Verify The My Price List

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click My Price List Submenu
    [Tags]    REGRESSION
    Verify Click My Price List Submenu

Validate My Price List Page Loaded Properly
    [Tags]    REGRESSION
    Verify My Price List Page Loaded Properly