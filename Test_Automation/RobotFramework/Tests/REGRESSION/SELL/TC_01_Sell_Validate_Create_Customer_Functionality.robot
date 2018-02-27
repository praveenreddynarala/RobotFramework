*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Customer Functionality

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
    ${NUMBER PLAN} =     Verify Get CSNP Number Plan
    Verify Set Number Plan For Create Customer      ${NUMBER PLAN}

Validate Set Call Type
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Call Type        ${CALL TYPE DROPDOWN ITEM}

Validate Click On Save Customer Profile For Create
    [Tags]    REGRESSION
    Verify Click On Save Customer Profile For Create

Validate Close Create Customer Tab
    [Tags]    REGRESSION
    Verify Close Create Customer Tab        ${CREATE CUSTOMER TAB NAME}

Validate Created Customer Details in Database
    [Tags]    REGRESSION
    Verify Created Customer Details in Database      ${DATABASE SERVER}       ${DATABASE}     ${DATABASE USERNAME}        ${DATABASE PASSWORD}

