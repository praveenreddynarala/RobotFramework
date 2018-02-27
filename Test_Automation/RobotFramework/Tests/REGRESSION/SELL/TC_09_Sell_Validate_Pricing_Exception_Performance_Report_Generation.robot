*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Pricing Exception Performance Report Generation Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Filter Customer Grid Column
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column

Validate Click On Customer Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Customer Grid Inline Action Button

Validate Select Price Exception Performance Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${PRICE EXCEPTIONS PERFORMANCE INLINE ITEM}

Validate Set Price Exceptions Performance Begin Date
    [Tags]    REGRESSION
    Verify Set Price Exceptions Performance Begin Date      ${PERFORMANCE REPORT BEGIN DATE}

Validate Click Price Exceptions Performance Submit Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Performance Submit Button

Validate Price Exceptions Performance Begin Date In CPE Performance Report
    [Tags]    REGRESSION
    Verify Price Exceptions Performance Begin Date In CPE Performance Report

Validate Price Exceptions Performance Customer In CPE Performance Report
    [Tags]    REGRESSION
    Verify Price Exceptions Performance Customer In CPE Performance Report

Validate Close Current Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${CPE PERFORMANCE TAB NAME}

Validate Click Price Exceptions Performance Report Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Performance Report Button

Validate Set Price Exceptions Performance Begin Date From Button
    [Tags]    REGRESSION
    Verify Set Price Exceptions Performance Begin Date      ${PERFORMANCE REPORT BEGIN DATE}

Validate Click Price Exceptions Performance Submit Button From Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Performance Submit Button

Validate Price Exceptions Performance Begin Date In CPE Performance Report For All Customers
    [Tags]    REGRESSION
    Verify Price Exceptions Performance Begin Date In CPE Performance Report

Validate Price Exceptions Performance Customer In CPE Performance Report For All Customers
    [Tags]    REGRESSION
    Verify Price Exceptions Performance Customer In CPE Performance Report For All Customers
