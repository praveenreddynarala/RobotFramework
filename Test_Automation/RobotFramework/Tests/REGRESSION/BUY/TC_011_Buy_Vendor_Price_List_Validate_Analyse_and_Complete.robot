*** Settings ***
Documentation     A Test Suite With Set Of Tests For Buy Vendor Price List Validate Analyse and Complete

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validate Navigate to Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Vendor Price Lists
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set Vendor Price List Status
    [Tags]    REGRESSION
    Verify Set Vendor Price List Status         @{STATUS ITEM LIST}

Validate Set 'From Date'
    [Tags]    REGRESSION
    Verify Set From Date        ${FROM DATE FOR BUY VENDOR PRICE LIST}

Validate Set 'To Date'
    [Tags]    REGRESSION
    Verify Set To Date

Validate Click On Vendor Price Lists Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Click On View Price List Detail Inline Action Button
    [Tags]    REGRESSION
    Verify Click View Price List Detail First Row Inline Action Button

Validate Analyze and Complete Is Present
    [Tags]    REGRESSION
    Verify Analyze and Complete Is Present

Validate Click On Analyze And Complete Inline Action
    [Tags]    REGRESSION
    Verify Click On Analyze And Complete Inline Action