*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Vendor Price List Search

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validate navigate to Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Vendor Price Lists
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set 'From Date'
    [Tags]    REGRESSION
    Verify Set From Date        ${FROM DATE FOR VENDOR PRICE LIST SEARCH}

Validate Set 'To Date'
    [Tags]    REGRESSION
    Verify Set To Date

Validate Click On Vendor Price Lists Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Search Results Displayed In The Grid
    [Tags]    REGRESSION
    Verify Search Results Displayed In The Grid