*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Price Reference Price Search

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    SMOKE TESTING
    click on home icon and select 'price' from main menu

Validate Select Price Policies Tab
    [Tags]    SMOKE TESTING
    Verify Select Price Policies Tab

Validate Click Reference Prices Button
    [Tags]    SMOKE TESTING
    Verify Click Reference Prices Button

Validate Reference Prices Page Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Reference Prices Page Loaded Properly

Validate Select Status For Reference Prices Search
    [Tags]    SMOKE TESTING
    Verify Select Status For Reference Prices Search        Requested

Validate Click Reference Prices Search Button
    [Tags]    SMOKE TESTING
    Verify Click Reference Prices Search Button

Validate Reference Prices Total Number Of Records Returned
    [Tags]    SMOKE TESTING
    Verify Reference Prices Total Number Of Records Returned