*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Price Exception Creation

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

Validate Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Customers Field Editable Status
    [Tags]    REGRESSION
    Verify Customers Field Editable Status

Validate Set Number Plan For Price Exceptions
    [Tags]    REGRESSION
    ${NUMBER PLAN} =     Verify Get CSNP Number Plan
    Verify Set Number Plan For Price Exceptions         ${NUMBER PLAN}

Validate Set Status
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status           @{STATUS ITEM LIST FOR PRICE EXCEPTIONS CREATION}

Validate Set Customers
    [Tags]    REGRESSION
    Verify Set Customers

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Validate Select Pricing Exception Grid First Row
    [Tags]    REGRESSION
    Verify Select Price Exception Grid First Row

Validate Set First Row Requested Price
    [Tags]    REGRESSION
    Verify Set First Row Requested Price        ${REQUESTED PRICE}

Validate Set First Row Begin Date
    [Tags]    REGRESSION
    Verify Set First Row Begin Date             ${BEGIN DATE}

Validate Set First Row Approval Type
    [Tags]    REGRESSION
    Verify Set First Row Approval Type          ${APPROVAL TYPE}

Validate Get Price Exceptions Grid First Row Data
    [Tags]    REGRESSION
    Verify Get Price Exceptions Grid First Row Data

Validate Price Exceptions Status Entered
    [Tags]    REGRESSION
    Verify Price Exceptions Status Entered

Validate Click Save Changes Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Deselect Status Multiselect Kendo Dropdown
    [Tags]    REGRESSION
    Verify Clear Multiselection Kendo Dropdown      ${STATUS DROPDOWN LABEL}
