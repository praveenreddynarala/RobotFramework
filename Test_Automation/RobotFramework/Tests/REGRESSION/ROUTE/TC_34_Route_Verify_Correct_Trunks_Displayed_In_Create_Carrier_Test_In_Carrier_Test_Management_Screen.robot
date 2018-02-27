*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Correct Trunks Displayed In Create Carrier Test In Carrier Test Management Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Click Carrier Test Management Button
    [Tags]    REGRESSION
    Verify Click Carrier Test Management Button

Validate Click New Test Button
    [Tags]    REGRESSION
    Verify Click New Test Button

Validate Set Carrier New Test Account
    [Tags]    REGRESSION
    ${ACCOUNT} =       Verify Get Created Carrier Name
    Verify Set Carrier New Test Account     ${ACCOUNT}

Validate Set Carrier New Test Trunk
    [Tags]    REGRESSION
    ${TRUNK NAME} =       Verify Get Trunk Name
    Verify Set Carrier New Test Trunk     ${TRUNK NAME}

Validate Set Carrier New Test Routing Product
    [Tags]    REGRESSION
    Verify Set Carrier New Test Routing Product     ${ROUTING PRODUCT}

Validate Set Carrier New Test Route Class
    [Tags]    REGRESSION
    Verify Set Carrier New Test Route Class     ${ROUTE CLASS}

Validate Click Create Test Button
    [Tags]    REGRESSION
    Verify Click Create Test Button