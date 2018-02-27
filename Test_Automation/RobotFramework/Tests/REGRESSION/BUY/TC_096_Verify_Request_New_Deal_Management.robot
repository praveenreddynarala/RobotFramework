*** Settings ***
Documentation     [TAENOSIS-745]    A Test Suite With Set Of Tests To Verify Request New Deal Management

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Click Buy And Sell Deal Management Link
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Management Link

Validate Click Request New Buy And Sell Deal
    [Tags]    REGRESSION
    Verify Click Request New Buy And Sell Deal

Validate Buy and Sell Deal Details Screen Status Dropdown is Visible
    [Tags]    REGRESSION
    Verify Buy and Sell Deal Details Screen Status Dropdown is Visible

Validate End Date Text Box is Visible
    [Tags]    REGRESSION
    Verify End Date Text Box is Visible

Validate Auto Expire CheckBox is Visible
    [Tags]    REGRESSION
    Verify Auto Expire CheckBox is Visible

Validate Outbound Costs Column is Visible
    [Tags]    REGRESSION
    Verify Column Name Proposed Deal Summary Table       Outbound Costs

Validate Outbound Cost Savings Column is Visible
    [Tags]    REGRESSION
    Verify Column Name Proposed Deal Summary Table       Outbound Cost Savings

Validate Outbound Cost Savings % Column is Visible
    [Tags]    REGRESSION
   Verify Column Name Proposed Deal Summary Table      Outbound Cost Savings %

Validate Inbound Revenue Column is Visible
    [Tags]    REGRESSION
    Verify Column Name Proposed Deal Summary Table       Inbound Revenue

Validate Inbound Margin Column is Visible
    [Tags]    REGRESSION
    Verify Column Name Proposed Deal Summary Table       Inbound Margin

Validate Inbound Margin % Column is Visible
    [Tags]    REGRESSION
    Verify Column Name Proposed Deal Summary Table      Inbound Margin %

Validate Total Deal Impact Column is Visible
    [Tags]    REGRESSION
    Verify Column Name Proposed Deal Summary Table       Total Deal Impact

Validate Total Deal % Column is Visible
    [Tags]    REGRESSION
    Verify Column Name Proposed Deal Summary Table       Total Deal %

Validate Close Buy and Sell Deal Detail PopUp
    [Tags]    REGRESSION
    Verify Close Current Pop Up         Buy and Sell Deal Detail

Validate Close Buy Window
    [Tags]    REGRESSION
    Verify Close Buy Window