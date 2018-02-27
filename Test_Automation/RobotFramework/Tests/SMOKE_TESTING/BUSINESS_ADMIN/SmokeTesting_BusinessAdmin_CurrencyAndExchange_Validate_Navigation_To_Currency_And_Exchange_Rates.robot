*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Business Admin Currency And Exchange Validate Navigation To Currency And Exchange Rates

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    SMOKE TESTING
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    SMOKE TESTING
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Currency And Exchange Rates Menu
    [Tags]    SMOKE TESTING
    Verify Expand Currency And Exchange Rates Menu

Validate Click Currency And Exchange Rates Submenu
    [Tags]    SMOKE TESTING
    Verify Click Currency And Exchange Rates Submenu

Validate Click Generic Search Button
    [Tags]    SMOKE TESTING
    Verify Click Generic Search Button

Validate Exchange Rates Search Is Successful
    [Tags]    SMOKE TESTING
    Verify Exchange Rates Search Is Successful