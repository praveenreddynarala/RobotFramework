*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate New Field For Total Deal Customer Volume In The Buy Sell Deal Wizard At The Customer Destination Level Grid

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade Module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Buy Sell Deal Management Submenu
    [Tags]    REGRESSION
    Verify Click Buy Sell Deal Management Submenu

Validate Set Start Date
    [Tags]    REGRESSION
    Verify Set Start Date   1/1/2010

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Search Button

Validate Click Buy And Sell Deal Management Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Management Grid First Row Inline Action Button

Validate Select IBuy And Sell Deal Management Inline Action Item
    [Tags]    REGRESSION
    Verify Select Buy And Sell Deal Management Inline Action Item       Deal Details

Validate Total Deal Customer Volume Column Is Present
    [Tags]    REGRESSION
    Verify Total Deal Customer Volume Column Is Present

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Close IXTrade Window And Switch To Default Window
