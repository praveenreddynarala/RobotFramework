*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Sell to Validate Price Exception Search Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    SMOKE TESTING
    click on home icon and select 'sell' from main menu

Validate Select Customer Tab
    [Tags]    SMOKE TESTING
    Click On Customer Tab

Validate Click Price Exceptions Button
    [Tags]    SMOKE TESTING
    Verify Click Price Exceptions Button

Validate Price Exceptions Page Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Price Exceptions Page Is Loaded Properly

Validate Set Status
    [Tags]    SMOKE TESTING
    Verify Set Status       Entered

Validate Click Price Exceptions Search Button
    [Tags]    SMOKE TESTING
    Verify Click Price Exceptions Search Button

Validate Price Exceptions Total Number Of Records Is Displayed
    [Tags]    SMOKE TESTING
    Verify Price Exceptions Total Number Of Records Is Displayed


