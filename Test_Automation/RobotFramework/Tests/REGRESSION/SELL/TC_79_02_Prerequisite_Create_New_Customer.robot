*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Customer Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${PRICE POLICY NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Get Price Policy Name
    [Tags]    REGRESSION
    ${PRICE POLICY NAME} =     Verify Get Price Policy Name
    log  ${PRICE POLICY NAME}
    set suite variable      ${PRICE POLICY NAME}

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

Validate Set Reference Price List
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Reference Price List      ${PRICE POLICY NAME}

Validate Check Require CPL Approval Checkbox
    [Tags]    REGRESSION
    Verify Check Require CPL Approval Checkbox

Validate Click On Save Customer Profile For Create
    [Tags]    REGRESSION
    Verify Click On Save Customer Profile For Create

Validate Close Create Customer Tab
    [Tags]    REGRESSION
    Verify Close Create Customer Tab        ${CREATE CUSTOMER TAB NAME}