*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify if Reference Price Job Notifier is Added to Generate Reference Price Screen

Resource          ../../../Resources/Pages/price_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality


*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Generate Reference Prices Screen
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Link

Validate Job Notifires are Displayed at Generate Reference Pirces Screen
    [Tags]    REGRESSION
    Verify Job Notifires are Displayed at Generate Reference Pirces Screen