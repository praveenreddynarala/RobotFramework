*** Settings ***
Documentation     A Test Suite With Set Of Tests For Buy Validate Reference Rate Screen For Buy Vendor Price List

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Navigate to Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Vendor Price Lists
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set 'From Date'
    [Tags]    REGRESSION
    Verify Set From Date        1/1/2017

Validate Click On Vendor Price Lists Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Click Vendor Price Lists Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Vendor Price List Grid First Row Inline Action Button

Validate Select View Price List Detail Inline Action Item
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VIEW PRICE LIST DETAIL INLINE ITEM}

Validate Select Vendor Price List Detail Reference Rates Tab
    [Tags]    REGRESSION
    Verify Select Vendor Price List Detail Reference Rates Tab

Validate Click Reference Rates Show Search Form Link
    [Tags]    REGRESSION
    Verify Click Reference Rates Show Search Form Link

Validate View Dropdown Is Visible
    [Tags]    REGRESSION
    Verify View Dropdown Is Visible

Validate Status Dropdown Is Visible
    [Tags]    REGRESSION
    Verify Status Dropdown Is Visible

Validate Discrepancy Dropdown Is Visible
    [Tags]    REGRESSION
    Verify Discrepancy Dropdown Is Visible

Validate In Routing Flags Dropdown Is Visible
    [Tags]    REGRESSION
    Verify In Routing Flags Dropdown Is Visible

Validate Rate Textbox Is Visible
    [Tags]    REGRESSION
    Verify Rate Textbox Is Visible

Validate Destination Textbox Is Visible
    [Tags]    REGRESSION
    Verify Destination Textbox Is Visible

Validate Reference Rates Grid Accept Column Is Checkbox
    [Tags]    REGRESSION
    Verify Reference Rates Grid Accept Column Is Checkbox


