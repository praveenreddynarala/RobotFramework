*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation to Cost Forecast Report Parameters Screen Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Click Cost Forecast Elements Reports Button
    [Tags]    REGRESSION
    Verify Click Cost Forecast Elements Reports Button

Validate Click Cost Forecast Report Submit Button
    [Tags]    REGRESSION
    Verify Click Cost Forecast Report Submit Button

Validate Page Header of Cost Forecast Report Page
    [Tags]    REGRESSION
    Verify Page Header of Cost Forecast Report Page