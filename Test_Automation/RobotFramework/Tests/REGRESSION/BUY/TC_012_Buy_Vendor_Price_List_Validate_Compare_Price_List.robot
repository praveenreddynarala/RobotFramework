*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Compare Price List

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

Validate Get Previous Created Vendor Name
    [Tags]    REGRESSION
    Verify Get Previous Created Vendor Name

Validate Set Vendors
    [Tags]    REGRESSION
    Verify Set Vendors

Validate Set 'From Date'
    [Tags]    REGRESSION
    Verify Set From Date    ${FROM DATE FOR COMPARE PRICE LIST}

Validate Click Vendor Price Lists Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Select Vendor Price List Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Vendor Price List Grid Row Checkbox

Validate Click Compare Price Lists Button
    [Tags]    REGRESSION
    Verify Click Compare Price Lists Button

Validate Selected Price Lists Details Info
    [Tags]    REGRESSION
    Verify Selected Price Lists Details Info

Validate Rates Grid Columns Header
    [Tags]    REGRESSION
    Verify Rates Grid Columns Header

Validate Select Dial Digits Tab
    [Tags]    REGRESSION
    Verify Select Dial Digits Tab

Validate Dialed Digits Columns Header
    [Tags]    REGRESSION
    Verify Dialed Digits Columns Header

Validate Close Compare Price Lists Pop Up
    [Tags]    REGRESSION
    Verify Close Compare Price Lists Pop Up