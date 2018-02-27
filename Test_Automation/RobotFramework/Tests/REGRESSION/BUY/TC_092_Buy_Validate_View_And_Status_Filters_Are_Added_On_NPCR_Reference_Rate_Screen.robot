*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate View And Status Filters Are Added On NPCR Reference Rate Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Click Re Analysis Link
    [Tags]    REGRESSION
    Verify Click Re Analysis Link

Validate Status Filter Has All Status Item
    [Tags]    REGRESSION
    Verify Status Filter Has All Status Item        @{RE ANALYSIS STATUS LIST}

Validate Set Re Analysis Status
    [Tags]    REGRESSION
    Verify Set Re Analysis Status           @{RE ANALYSIS STATUS FOR SEARCH}

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Buy Module Search Button