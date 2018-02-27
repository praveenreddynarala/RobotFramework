*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Buy And Sell Deal Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Click Buy And Sell Deal Management Link
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Management Link

Validate Click Request New Deal Button
    [Tags]    REGRESSION
    Verify Click Request New Deal Button

Validate Set Buy And Sell Deal Name
    [Tags]    REGRESSION
    Verify Set Buy And Sell Deal Name       ${TEST DATA PREFIX}

Validate Set Buy Sell Deal Account
    [Tags]    REGRESSION
    ${ACCOUNT NAME} =       carrier_page_resource.Verify Get Created Carrier Name
    Verify Set Buy Sell Deal Account    ${ACCOUNT NAME}

Validate Set Vendor
    [Tags]    REGRESSION
    ${NEW VENDOR NAME} =       Verify Get Created Vendor Name
    Verify Set Vendor       ${NEW VENDOR NAME}

Validate Set Customer
    [Tags]    REGRESSION
    ${CUSTOMER NAME} =       Verify Get Created Customer Name
    Verify Set Customer     ${CUSTOMER NAME}

Validate Click Buy And Sell Deal Create Button
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Create Button

Validate Click New CSNP Save Button
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Save Button