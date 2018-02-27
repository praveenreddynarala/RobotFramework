*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Customer Inline Actions

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate The Customer Tab Is Available
    [Tags]    REGRESSION
    Verify The Customer Tab Is Available

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Verify Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Filter Customer Grid Column
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column

Validate Click On Customer Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Customer Grid Inline Action Button

Validate Customer Profile Is Present
    [Tags]    REGRESSION
    Verify Customer Profile Is Present

Validate Customer Rates Is Present
    [Tags]    REGRESSION
    Verify Customer Rates Is Present

Validate Customer Digits Is Present
    [Tags]    REGRESSION
    Verify Customer Digits Is Present

Validate Price Exceptions Performance Is Present
    [Tags]    REGRESSION
    Verify Price Exceptions Performance Is Present

Validate Upload Price Exceptions Is Present
    [Tags]    REGRESSION
    Verify Upload Price Exceptions Is Present

Validate Customer Destination Is Present
    [Tags]    REGRESSION
    Verify Customer Destination Is Present