*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Price Exception Search Functionality

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

Validate Set Number Plan For Price Exceptions
    [Tags]    REGRESSION
    ${NUMBER PLAN} =     Verify Get CSNP Number Plan
    Verify Set Number Plan For Price Exceptions         ${NUMBER PLAN}

Validate Set Status
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status           @{STATUS ITEM LIST}

Validate Set Customers
    [Tags]    REGRESSION
    Verify Set Customers

Validate Set Select Date
    [Tags]    REGRESSION
    Verify Set Select Date      ${SELECT DATE}

Validate Set Destination
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Destination      ${DESTINATION}

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Validate Search Results Displayed In The Grid
    [Tags]    REGRESSION
    sell_page_resource.Verify Search Results Displayed In The Grid
