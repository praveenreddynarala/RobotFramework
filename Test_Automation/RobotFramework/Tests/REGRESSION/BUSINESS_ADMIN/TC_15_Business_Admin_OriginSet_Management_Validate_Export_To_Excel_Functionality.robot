*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Origin Set Management To Validate Export To Excel Functionality

Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Origin Set Submenu
    [Tags]    REGRESSION
    Verify Click Origin Set Submenu

Validate Click Origin Set Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Origin Set Export To Excel Button