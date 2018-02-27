*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate Selected Country Does Not Get Deselected On Customer Offer Generation

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Select Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Create Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Set Reference Price List First Item
    [Tags]    REGRESSION
    Verify Set Reference Price List First Item

Validate Set Number Plan First Item
    [Tags]    REGRESSION
    Verify Set Number Plan First Item

Validate Select First Customer For Price Lists
    [Tags]     REGRESSION
    Verify Select First Customer For Price Lists

Validate Select Countries For Price Lists
    [Tags]     REGRESSION
    Verify Select All Countries For Price Lists

Validate Set Offer Date
    [Tags]     REGRESSION
    Verify Set Offer Date With Value    1/1/2017

Validate Countries Are Selected
    [Tags]     REGRESSION
    Verify Countries Are Selected

Validate Click On Generate Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click On Generate Customer Price Lists Button

Validate Customer Price Lists Generation Is Successful
    [Tags]     REGRESSION
    Verify Customer Price Lists Generation Is Successful

Validate Close Create Customer Price Lists Tab
    [Tags]     REGRESSION
    Verify Close Current Tab        Create Customer Price Lists