*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify CPE Functions

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixtrade_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Set Status
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status           @{PRICE EXCEPTIONS STATUS ITEM LIST}

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to IXContract Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Customer Pricing exception management Submenu
    [Tags]    REGRESSION
    Verify Click Customer Pricing exception management Submenu

Validate Click Customer Pricing Exception Management Search Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Search Button

Validate Get Pricing Exception Grid Left Table Details
    [Tags]    REGRESSION
    Verify Get Pricing Exception Grid Left Table Details

Validate Get Pricing Exception Grid Right Table Details
    [Tags]    REGRESSION
    Verify Get Pricing Exception Grid Right Table Details

Validate Click Pricing Exception Grid First Row Inline Action Button For Exception Details
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Pricing Exception Grid First Row Inline Action Button

Validate Select Exception Detaild Inline Action Item
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Select Inline Action Item        ${EXCEPTION DETAILS INLINE ITEM}

Validate Pricing Exception Grid Customer
    [Tags]    REGRESSION
    Verify Pricing Exception Grid Customer      Customer:

Validate Pricing Exception Grid Status
    [Tags]    REGRESSION
    Verify Pricing Exception Grid Status      Status:

Validate Pricing Exception Grid Selling Destination
    [Tags]    REGRESSION
    Verify Pricing Exception Grid Selling Destination      Selling Destination:

Validate Pricing Exception Grid Trade Destination Category
    [Tags]    REGRESSION
    Verify Pricing Exception Grid Trade Destination Category      Trade Destination Category:

Validate Pricing Exception Grid Reference Price List
    [Tags]    REGRESSION
    Verify Pricing Exception Grid Reference Price List      Reference Price List:

Validate Pricing Exception Grid Currency
    [Tags]    REGRESSION
    Verify Pricing Exception Grid Currency      Currency:

Validate Pricing Exception Grid Rate Type
    [Tags]    REGRESSION
    Verify Pricing Exception Grid Rate Type      Rate Type

Validate Pricing Exception Grid Approval Type
    [Tags]    REGRESSION
    Verify Pricing Exception Grid Approval Type     Approval Type

Validate Pricing Exception Grid Begin Date Test
    [Tags]    REGRESSION
    Verify Pricing Exception Grid Begin Date Test     Begin Date Test

Validate Pricing Exception Grid Requested Price
    [Tags]    REGRESSION
    Verify Pricing Exception Grid Requested Price     Requested Price

Validate Close Customer Pricing Exception Details Pop Up
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Close Current Pop Up       ${CUSTOMER PRICING EXCEPTION DETAILS POP UP NAME}

Validate Click Pricing Exception Grid First Row Inline Action Button For Exception History
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Pricing Exception Grid First Row Inline Action Button

Validate Select Exception History Inline Action Item
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Select Inline Action Item        ${EXCEPTION HISTORY INLINE ITEM}

Validate Exception History Pop Up Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify Exception History Pop Up Page Is Loaded Properly

Validate Close Pricing History Details Pop Up
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Close Current Pop Up       ${PRICING HISTORY DETAILS POP UP NAME}

Validate Click Pricing Exception Grid First Row Inline Action Button For Documents
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Pricing Exception Grid First Row Inline Action Button

Validate Select Documents Inline Action Item
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Select Inline Action Item        ${DOCUMENTS INLINE ITEM}

Validate Click Upload New Document Button
    [Tags]    REGRESSION
    Verify Click Upload New Document Button

Validate Click On File Browse Button
    [Tags]    REGRESSION
    Verify Click On File Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    ixtrade_page_resource.Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${PRICE EXCEPTION TEMPLATE NAME}

Validate Set File Name
    [Tags]    REGRESSION
    Verify Set File Name             ${TEST DATA PREFIX}

Validate Click On File Save Button
    [Tags]    REGRESSION
    Verify Click On File Save Button

Validate Compare File Name
    [Tags]    REGRESSION
    Verify Compare File Name

Validate Close Pricing Document Pop Up
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Close Current Pop Up       ${PRICING EXCEPTION DOCUMENT POP UP NAME}

Validate Set Status For Search
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Set Status           @{STATUS ITEM LIST}

Validate Click Customer Pricing Exception Management Search Button After Setting Status
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Search Button

Validate Click Pricing Exception Grid First Row Checkbox
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Pricing Exception Grid First Row Checkbox

Validate Click On Copy Button
    [Tags]    REGRESSION
    Verify Click On Copy Button

Validate Select Customers For Copy Price Exceptions
    [Tags]    REGRESSION
    ${CREATED CUSTOMER NAME} =      Verify Get Created Customer Name
    ixtrade_page_resource.Verify Select Customers For Copy Price Exceptions       ${CREATED CUSTOMER NAME}

Validate Click On Copy Cpe Save Button
    [Tags]    REGRESSIOn
    Verify Click On Copy Cpe Save Button

Validate Click Pricing Exception Grid First Row Inline Action Button For Route Guide with Sell Rates Report
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Pricing Exception Grid First Row Inline Action Button

Validate Select Route Guide With Sell Rates Report Inline Action Item
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Select Inline Action Item        ${ROUTE GUIDE WITH SELL RATES REPORT INLINE ITEM}

Validate switch To New Window
    [Tags]    REGRESSION
    Verify switch To New Window

Validate Route Guide with Sell Rates Report Pop Up Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify Route Guide With Sell Rates Page Is Loaded Properly

Validate Verify Close Current Window
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Close Current Window

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button