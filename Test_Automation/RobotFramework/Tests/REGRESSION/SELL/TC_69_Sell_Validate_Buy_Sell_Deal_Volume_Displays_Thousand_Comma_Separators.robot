*** Settings ***
Documentation     [TAENOSIS-948] A Test Suite With Set Of Tests To Validate Buy Sell Deal Volume Displays Thousand Comma Separators

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell Module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Click Buy And Sell Deal Management Link
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Management Link

Validate Click Buy And Sell Deal Management Search Button
    [Tags]    REGRESSION
    Verify Click Pricing Exception Upload Search Button

Validate Sell Deal Management Grid Outbound Volume Committed Column Diplays Thousand Separators
    [Tags]    REGRESSION
    sell_page_resource.Verify Buy And Sell Deal Management Grid Column Diplays Thousand Separators     Outbound Volume Committed

Validate Sell Deal Management Grid Outbound Volume Fulfilled Column Diplays Thousand Separators
    [Tags]    REGRESSION
    sell_page_resource.Verify Buy And Sell Deal Management Grid Column Diplays Thousand Separators     Outbound Volume Fulfilled

Validate Sell Deal Management Grid Inbound Volume Committed Column Diplays Thousand Separators
    [Tags]    REGRESSION
    sell_page_resource.Verify Buy And Sell Deal Management Grid Column Diplays Thousand Separators     Inbound Volume Committed

Validate Sell Deal Management Grid Inbound Volume Fulfilled Column Diplays Thousand Separators
    [Tags]    REGRESSION
    sell_page_resource.Verify Buy And Sell Deal Management Grid Column Diplays Thousand Separators     Inbound Volume Fulfilled

Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Contracts' From Main Menu

Validate Go To IXTrade Screen With Specific Url
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Buy Sell Deal Management Submenu
    [Tags]    REGRESSION
    Verify Click Buy Sell Deal Management Submenu

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Search Button

Validate Deal Management Grid Outbound Volume Committed Column Diplays Thousand Separators
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Buy And Sell Deal Management Grid Column Diplays Thousand Separators     Outbound Volume Committed

Validate Deal Management Grid Outbound Volume Fulfilled Column Diplays Thousand Separators
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Buy And Sell Deal Management Grid Column Diplays Thousand Separators     Outbound Volume Fulfilled

Validate Deal Management Grid Inbound Volume Committed Column Diplays Thousand Separators
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Buy And Sell Deal Management Grid Column Diplays Thousand Separators     Inbound Volume Committed

Validate Deal Management Grid Inbound Volume Fulfilled Column Diplays Thousand Separators
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Buy And Sell Deal Management Grid Column Diplays Thousand Separators     Inbound Volume Fulfilled

Validate Click iXTrade Window
    [Tags]    REGRESSION
    Verify Close iXTrade Window

