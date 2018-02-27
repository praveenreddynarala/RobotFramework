*** Settings ***
Documentation     [TAENOSIS-695] A Test Suite With Set Of Tests To Validate Documents And Route Guide With Sell Rating Report Has Been Added On View Pricing Exception Details screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate To Price Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Review Customer Price Exception Requests Link
    [Tags]    REGRESSION
    Verify Click Review Customer Price Exception Requests Link

Validate Set Status For Requested
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status    @{ALL STATUS ITEM LIST}

Validate Verify Set Select Date For Search
    [Tags]    REGRESSION
    Verify Set Pricing Exceptions Select Date

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Click Price Exceptions Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Pricing Exceptions First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        View Price Exceptions Details

Validate Documents Tab Is Present In View Pricing Exception Details Pop Up
    [Tags]    REGRESSION
    Verify Specific Tab Is Present In View Pricing Exception Details Pop Up     Documents

Validate Route Guide with Sell Rates Report Tab Is Present In View Pricing Exception Details Pop Up
    [Tags]    REGRESSION
    Verify Specific Tab Is Present In View Pricing Exception Details Pop Up     Route Guide with Sell Rates Report

Validate Close View Pricing Exception Details Pop Up
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Pop Up        View Pricing Exception Details
