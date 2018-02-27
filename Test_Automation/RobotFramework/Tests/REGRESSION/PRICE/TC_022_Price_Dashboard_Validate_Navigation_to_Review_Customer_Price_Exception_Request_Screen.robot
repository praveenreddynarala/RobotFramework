*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation to Review Customer Price Exception Request Screen.

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Review Customer Price Exception Requests Link
    [Tags]    REGRESSION
    Verify Click Review Customer Price Exception Requests Link

Validate Review Customer Price Exception Requests Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify Review Customer Price Exception Requests Page Is Loaded Properly