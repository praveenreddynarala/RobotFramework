*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Pricing Exception Status Updation

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

Validate Customers Field Editable Status
    [Tags]    REGRESSION
    Verify Customers Field Editable Status

Validate Set Number Plan For Price Exceptions
    [Tags]    REGRESSION
    ${NUMBER PLAN} =     Verify Get CSNP Number Plan
    Verify Set Number Plan For Price Exceptions         ${NUMBER PLAN}

Validate Set Status Before Status Updation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status           @{STATUS ITEM LIST BEFORE STATUS UPDATION}

Validate Set Customers
    [Tags]    REGRESSION
    Verify Set Customers

Validate Set Select Date
    [Tags]    REGRESSION
    Verify Set Select Date      ${SELECT DATE FOR STATUS UPDATION}

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Validate Select Pricing Exception Grid First Row
    [Tags]    REGRESSION
    Verify Select Price Exception Grid First Row

Validate Set Price Exceptions Grid First Row Status
    [Tags]    REGRESSION
    Verify Set Price Exceptions Grid First Row Status        ${PRICE EXCEPTION GRID STATUS}

Validate Set Begin Date For Status Updation
    [Tags]    REGRESSION
    Verify Set Begin Date For Status Updation

Validate Click Save Changes Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Clear Multiselection Kendo Dropdown
    [Tags]    REGRESSION
    Verify Clear Multiselection Kendo Dropdown          ${STATUS DROPDOWN LABEL FOR STATUS UPDATION}

Validate Set Status After Status Updation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status           @{STATUS ITEM LIST AFTER STATUS UPDATION}

Validate Set Select Date For Status Updation
    [Tags]    REGRESSION
    Verify Set Select Date For Status Updation

Validate Click Price Exceptions Search Button After Updation
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Validate Price Exceptions Grid Has Data
    [Tags]    REGRESSION
    Verify Price Exceptions Grid Has Data
