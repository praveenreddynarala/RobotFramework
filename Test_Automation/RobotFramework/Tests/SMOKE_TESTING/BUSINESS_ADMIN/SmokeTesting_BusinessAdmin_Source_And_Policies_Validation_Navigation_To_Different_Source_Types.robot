*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Business Admin Source And Policies to Validate Navigation To Different Source Types

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    SMOKE TESTING
    click on home icon and select 'business admin' from main menu

Validate Expand Trading Menu
    [Tags]    SMOKE TESTING
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu
    [Tags]    SMOKE TESTING
    Verify Click Source And Policies Submenu

Validate Set Customer Source Type
    [Tags]    SMOKE TESTING
    Verify Set Source Type For Search       Customer

Validate Click Sources Search Button For Customer Source Type
    [Tags]    SMOKE TESTING
    Verify Click Sources Search Button

Validate Source Policies Grid Total Number Of Records Returned For Customer Source Type
    [Tags]    SMOKE TESTING
    Verify Source Policies Grid Total Number Of Records Returned

Validate Set Vendor Source Type
    [Tags]    SMOKE TESTING
    Verify Set Source Type For Search       Vendor

Validate Click Sources Search Button For Vendor Source Type
    [Tags]    SMOKE TESTING
    Verify Click Sources Search Button

Validate Source Policies Grid Total Number Of Records Returned For Vendor Source Type
    [Tags]    SMOKE TESTING
    Verify Source Policies Grid Total Number Of Records Returned

Validate Set Origin Reference Price List Source Type
    [Tags]    SMOKE TESTING
    Verify Set Source Type For Search       Origin Reference Price List

Validate Click Sources Search Button For Origin Reference Price List Source Type
    [Tags]    SMOKE TESTING
    Verify Click Sources Search Button

Validate Source Policies Grid Total Number Of Records Returned For Origin Reference Price List Source Type
    [Tags]    SMOKE TESTING
    Verify Source Policies Grid Total Number Of Records Returned

Validate Set Reference Price List Source Type
    [Tags]    SMOKE TESTING
    Verify Set Source Type For Search       Reference Price List

Validate Click Sources Search Button For Reference Price List Source Type
    [Tags]    SMOKE TESTING
    Verify Click Sources Search Button

Validate Source Policies Grid Total Number Of Records Returned For Reference Price List Source Type
    [Tags]    SMOKE TESTING
    Verify Source Policies Grid Total Number Of Records Returned

Validate Set Switch Source Type
    [Tags]    SMOKE TESTING
    Verify Set Source Type For Search       Switch

Validate Click Sources Search Button For Switch Source Type
    [Tags]    SMOKE TESTING
    Verify Click Sources Search Button

Validate Source Policies Grid Total Number Of Records Returned For Switch Source Type
    [Tags]    SMOKE TESTING
    Verify Source Policies Grid Total Number Of Records Returned