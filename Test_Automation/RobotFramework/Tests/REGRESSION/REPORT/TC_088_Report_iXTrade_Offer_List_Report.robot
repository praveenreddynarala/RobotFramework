*** Settings ***
Documentation     [TAENOSIS-736] A Test Suite With Set Of Tests For Verify iXTrade Vendor Specific Dialed Digits And Rates

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Network Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${OFFER LIST REPORT SUBMENU}

Validate Set Offer Type
    [Tags]    REGRESSION
    Verify Set Offer Type       Vendor Offer

Validate Set Date Value Into Specific Date Field
    [Tags]    REGRESSION
    Verify Set Date Value Into Specific Date Field      Offers From     1/1/2017

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Click Report Export To Pdf Button
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button

Validate Get Report Offer Details
    [Tags]    REGRESSION
    Verify Get Report Offer Details

Validate Get Offer Details From Database
    [Tags]    REGRESSION
    Verify Get Offer Details From Database      ${DATABASE SERVER}       ${DATABASE}     ${DATABASE USERNAME}        ${DATABASE PASSWORD}

Validate Compare Report And Database Offer Details
    [Tags]    REGRESSION
    Verify Compare Report And Database Offer Details

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Sub Report Item For Customer
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${OFFER LIST REPORT SUBMENU}

Validate Set Offer Type For Customer
    [Tags]    REGRESSION
    Verify Set Offer Type       Customer Offer

Validate Set Date Value Into Specific Date Field For Customer
    [Tags]    REGRESSION
    Verify Set Date Value Into Specific Date Field      Offers From     1/1/2017

Validate Click Submit Button For Customer
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Click Report Preview Button For Customer
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button For Customer
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button For Customer
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Click Report Export To Pdf Button For Customer
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button

Validate Get Report Offer Details For Customer
    [Tags]    REGRESSION
    Verify Get Report Offer Details

Validate Get Offer Details From Database For Customer
    [Tags]    REGRESSION
    Verify Get Offer Details From Database      ${DATABASE SERVER}       ${DATABASE}     ${DATABASE USERNAME}        ${DATABASE PASSWORD}       ${TRUE}

Validate Compare Report And Database Offer Details For Customer
    [Tags]    REGRESSION
    Verify Compare Report And Database Offer Details

Validate Close Detail Report Window For Customer
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window