*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Customer Profile View

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Grid Filter Details For Customer Profile View
    [Tags]    REGRESSION
    Verify Grid Filter Details For Customer Profile View

Validate Get Customer Grid Row Details
    [Tags]    REGRESSION
    Verify Get Customer Grid Row Details

Validate Click Customer Grid Information Button
    [Tags]    REGRESSION
    Verify Click Customer Grid Information Button

Validate Customer Details In Information Page
    [Tags]    REGRESSION
    Verify Customer Details In Information Page

Validate Close Customer Details Pop Up
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Pop Up     Customer Details
