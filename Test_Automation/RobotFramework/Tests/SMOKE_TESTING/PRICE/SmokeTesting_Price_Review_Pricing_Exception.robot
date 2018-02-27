*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Price Review Pricing Exception

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    SMOKE TESTING
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Review Customer Price Exception Requests Link
    [Tags]    SMOKE TESTING
    Verify Click Review Customer Price Exception Requests Link

Validate Review Customer Price Exception Requests Page Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Review Customer Price Exception Requests Page Is Loaded Properly

Validate Set Status
    [Tags]    SMOKE TESTING
    Verify Set Status       Approved

Validate Click Price Exceptions Search Button
    [Tags]    SMOKE TESTING
    Verify Click Price Exceptions Search Button

