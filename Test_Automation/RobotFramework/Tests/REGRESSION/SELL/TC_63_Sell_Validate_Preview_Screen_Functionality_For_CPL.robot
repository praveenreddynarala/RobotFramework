*** Settings ***
Documentation       [TAENOSIS-841] A Test Suite to Validate Preview Screen functionality for CPL, [TAENOSIS-840] A Test Suite to Validate Search on CPL Preview Screen

Resource        ../../../Resources/common_resource.robot
Resource        ../../../Resources/Pages/sell_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Create Customer Price Lists Screen Displayed
    [Tags]    REGRESSION
    Verify Create Customer Price Lists Screen Loaded

Validate Set Offer Content
    [Tags]    REGRESSION
    Verify Set Offer Content

Validate Set Apply Increase Notice Period
    [Tags]    REGRESSION
    Verify Set Apply Increase Notice Period

Validate Set Apply Digit Change Notice Period
    [Tags]    REGRESSION
    Verify Set Apply Digit Change Notice Period

Validate Set Apply Decrease Notice Period
    [Tags]    REGRESSION
    Verify Set Apply Decrease Notice Period

Validate Set Reference Price List
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Reference Price List

Validate Set Offer Date
    [Tags]    REGRESSION
    Verify Set Offer Date

Validate Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Select Customers For Price Lists
    [Tags]    REGRESSION
    Verify Select Customers For Price Lists

Validate Select Countries For Price Lists
    [Tags]    REGRESSION
    Verify Select All Countries For Price Lists

Validate Click Preview Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Preview Button

Validate Preview Page Displayed
    [Tags]    REGRESSION
    sell_page_resource.Verify Preview Page Displayed

Validate Expand Search Rates
    [Tags]    REGRESSION
    Verify Click Show Search Form Link

Validate Set Destination
    [Tags]    REGRESSION
    Verify Set Value into Destination Input Box         'test'

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate No Record Found Message Displayed in Customer Offer Preview Grid
    [Tags]    REGRESSION
    Verify is No Record Found Message Displayed in Customer Offer Preview Grid

Validate Close Preview Page
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Preview Page


