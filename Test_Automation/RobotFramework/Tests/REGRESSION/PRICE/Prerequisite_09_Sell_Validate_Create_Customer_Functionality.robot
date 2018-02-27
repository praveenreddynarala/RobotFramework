*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Customer Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click On Create Customer Button
    [Tags]    REGRESSION
    Verify Click On Create Customer Button

Validate Set Customer Name
    [Tags]    REGRESSION
    Verify Set Customer Name        ${TEST DATA PREFIX}

Validate Set Customer Abbreviation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Customer Abbreviation        ${TEST DATA PREFIX}

Validate Set Customer Profile Status Active
    [Tags]    REGRESSION
    Verify Set Customer Profile Status Active For Create Customer

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Get Created Rate Plan Name
    [Tags]    REGRESSION
    Verify Get Created Rate Plan Name

Validate Set Ixtools Account As Created Carrier
    [Tags]    REGRESSION
    Verify Set Ixtools Account

Validate Set Rate Plan Ad Created Rate Plan
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Rate Plan

Validate Set Number Plan
    [Tags]    REGRESSION
    Verify Set Number Plan For Create Customer      ${NUMBER PLAN FOR COPY PRICE EXCEPTIONS}

Validate Set Call Type
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Call Type        ${CALL TYPE DROPDOWN ITEM}

Validate Click On Save Customer Profile For Create
    [Tags]    REGRESSION
    Verify Click On Save Customer Profile For Create

Validate Close Create Customer Tab
    [Tags]    REGRESSION
    Verify Close Create Customer Tab        ${CREATE CUSTOMER TAB NAME}

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Set Number Plan For Price Exceptions
    [Tags]    REGRESSION
    Verify Set Number Plan For Price Exceptions       ${NUMBER PLAN FOR COPY PRICE EXCEPTIONS}

Validate Set Status Before Status Updation
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

Validate Set Price Exceptions Grid First Row Status
    [Tags]    REGRESSION
    Verify Set Price Exceptions Grid First Row Status        ${PRICE EXCEPTION GRID STATUS}

Validate Set First Row Requested Price
    [Tags]    REGRESSION
    Verify Set First Row Requested Price        ${REQUESTED PRICE}

Validate Set First Row Begin Date
    [Tags]    REGRESSION
    Verify Set First Row Begin Date             ${BEGIN DATE}

Validate Set First Row Approval Type
    [Tags]    REGRESSION
    Verify Set First Row Approval Type          Amount

Validate Click Save Changes Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button