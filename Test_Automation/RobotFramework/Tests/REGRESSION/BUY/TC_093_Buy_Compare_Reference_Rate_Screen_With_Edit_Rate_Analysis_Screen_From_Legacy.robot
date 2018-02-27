*** Settings ***
Documentation     A Test Suite With Set Of Tests For Buy Compare Reference Rates Screen With Edit Rate Analysis Screen From Legacy

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/report_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Report' From Main Menu

Validate Navigate to IXTrade Screen
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Vendor Offers Submenu
    [Tags]    REGRESSION
    Verify Click Vendor Offers Submenu

Validate Set Vendor Offer From Date For Search
    [Tags]    REGRESSION
    Verify Set Vendor Offer From Date For Search    1/1/2017

Validate Click Vendor Offers Go Button
    [Tags]    REGRESSION
    Verify Click Vendor Offers Go Button

Validate Click Vendor Offer First Plus Button
    [Tags]    REGRESSION
    Verify Click Vendor Offer First Plus Button

Validate Click First Vendor Offer Link
    [Tags]    REGRESSION
    Verify Click First Vendor Offer Link

Validate Click Edit Analyzed Rate Button
    [Tags]    REGRESSION
    Verify Click Edit Analyzed Rates Button

Validate Switch To Rate Analysis Frame
    [Tags]    REGRESSION
    Verify Switch To Rate Analysis Frame

Validate Rate Analysis View Filter Is Present
    [Tags]    REGRESSION
    Verify Rate Analysis View Filter Is Present

Validate Rate Analysis Status Filter Is Present
    [Tags]    REGRESSION
    Verify Rate Analysis Status Filter Is Present

Validate Rate Analysis Discrepancy Filter Is Present
    [Tags]    REGRESSION
    Verify Rate Analysis Discrepancy Filter Is Present

Validate Rate Analysis In Routing Flag Filter Is Present
    [Tags]    REGRESSION
    Verify Rate Analysis In Routing Flag Filter Is Present

Validate Rate Analysis Rate Filter Is Present
    [Tags]    REGRESSION
    Verify Rate Analysis Rate Filter Is Present

Validate Rate Analysis Destination Filter Is Present
    [Tags]    REGRESSION
    Verify Rate Analysis Destination Filter Is Present

Validate Close Rate Analysis Window
    [Tags]    REGRESSION
    Verify Close iXTrade Window

Validate Close iXTrade Window
    [Tags]    REGRESSION
    Verify Close iXTrade Window