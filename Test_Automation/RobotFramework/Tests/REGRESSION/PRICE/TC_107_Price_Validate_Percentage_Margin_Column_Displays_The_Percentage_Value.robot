*** Settings ***
Documentation    [TAENOSIS-852] A Test Suite With Set Of Tests To Validate Percetnage Margin Column Displays The Percentage Value

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${MARGIN MINIMUM TEST}      ${EMPTY}
${APPROVED PRICE}           ${EMPTY}
${PERCENTAGE MARGIN}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Customer Pricing exception management Submenu
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Submenu

Validate Refresh iXTrade Window
    [Tags]    REGRESSION
    Verify Refresh iXTrade Window

Validate Click Customer Pricing Exception Management Search Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Search Button

Validate Percentage Margin Column Is Present
    [Tags]    REGRESSION
    Verify Percentage Margin Column Is Present

Validate Sort Percentage Margin Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Percentage Margin Column In Descending Order

Validate Get Margin Minimum test Column First Row Value From CPEM Right Grid
    [Tags]    REGRESSION
    ${MARGIN MINIMUM TEST} =    Verify Get Specific Column First Row Value From CPEM Right Grid     Margin Minimum test
    set suite variable      ${MARGIN MINIMUM TEST}

Validate Get Approved Price Column First Row Value From CPEM Right Grid
    [Tags]    REGRESSION
    ${APPROVED PRICE} =     Verify Get Specific Column First Row Value From CPEM Right Grid     Approved Price
    set suite variable      ${APPROVED PRICE}

Validate Get %Margin Column First Row Value From CPEM Right Grid
    [Tags]    REGRESSION
    ${PERCENTAGE MARGIN} =      Verify Get Specific Column First Row Value From CPEM Right Grid     %Margin
    set suite variable      ${PERCENTAGE MARGIN}

Validate Percentage Margin Column Value Is Displayed Correctly
    [Tags]    REGRESSION
    Verify Percentage Margin Column Value Is Displayed Correctly        ${MARGIN MINIMUM TEST}      ${APPROVED PRICE}       ${PERCENTAGE MARGIN}