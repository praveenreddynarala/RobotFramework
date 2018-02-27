*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation to View Price Exception Details Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

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

Validate Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Set Number Plan For Price Exceptions Search
    [Tags]    REGRESSION
    ${NUMBER PLAN} =     Verify Get CSNP Number Plan
    Verify Set Number Plan For Price Exceptions      ${NUMBER PLAN}

Validate Set Customer For Search
    [Tags]    REGRESSION
    Verify Set Customers

Validate Set Status
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status           @{PRICE EXCEPTIONS STATUS ITEM LIST}

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Verify Get Price Exceptions First Grid First Row Details
    [Tags]    REGRESSION
    Verify Get Price Exceptions First Grid First Row Details

Verify Click Pricing Exception Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Pricing Exception Grid First Row Inline Action Button

Verify Select Inline Action Item
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${VIEW PRICE EXCEPTIONS DETAILS INLINE ITEM}

Verify Details of Price Exceptions
    [Tags]    REGRESSION
    Verify Details of Price Exceptions

Validate Close Current Price Exceptions Pop Up
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Pop Up         ${PRICE EXCEPTIONS DETAILS POP UP NAME}
