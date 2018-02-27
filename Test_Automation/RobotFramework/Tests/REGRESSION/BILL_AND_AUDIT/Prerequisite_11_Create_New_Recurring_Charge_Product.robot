*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create New Recurring Charge Product Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to IXConnect module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXBill module
    [Tags]    REGRESSION
    Go To IXBill Screen With Specific Url

Validate Click Recurring Charge Products Submenu
    [Tags]    REGRESSION
    Verify Click Recurring Charge Products Submenu

Validate Click Recurring Charge Products New Button
    [Tags]    REGRESSION
    Verify Click New Button

Validate Set Charge Product Name
    [Tags]    REGRESSION
    Verify Set Charge Product Name       ${TEST DATA PREFIX}

Validate Set Charge Product Abbreviation
    [Tags]    REGRESSION
    Verify Set Charge Product Abbreviation        ${TEST DATA PREFIX}

Validate Set Charge Product Category
    [Tags]    REGRESSION
    ${CHARGE CATEGORY} =     Verify Get Charge Categories Name
    Verify Set Charge Product Abbreviation        ${CHARGE CATEGORY}

Validate Set Recurrent Charge Pattern
    [Tags]    REGRESSION
    Verify Set Recurrent Charge Pattern

Validate Click Recurring Charge Product Save Button
    [Tags]    REGRESSION
    Verify Click Detail Frame Save Button

Validate Get Recurrening Charge Product
    [Tags]    REGRESSION
    ${CHARGE PRODCUT} =     Verify Get Charge Product Name
    log     ${CHARGE PRODCUT}

Validate Close iXBill Window
    [Tags]    REGRESSION
    Verify Click Exit Button
