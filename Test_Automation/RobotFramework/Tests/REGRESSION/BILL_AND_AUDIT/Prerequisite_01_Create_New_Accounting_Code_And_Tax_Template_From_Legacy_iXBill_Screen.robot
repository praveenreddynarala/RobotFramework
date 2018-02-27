*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create New Accounting Code And Tax Template From Legacy iXBill Screen Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNTING CODE}      ${EMPTY}

*** Test Cases ***
Validate Navigate to IXConnect module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXBill module
    [Tags]    REGRESSION
    Go To IXBill Screen With Specific Url

Validate Click Accounting Codes Submenu
    [Tags]    REGRESSION
    Verify Click Accounting Codes Submenu

Validate Click New Button
    [Tags]    REGRESSION
    ixbill_page_resource.Verify Click New Button

Validate Set Accounting Code
    [Tags]    REGRESSION
    Verify Set Accounting Code

Validate Click Detail Frame Save Button
    [Tags]    REGRESSION
    Verify Click Detail Frame Save Button

Validate Click Tax Templates Submenu
    [Tags]    REGRESSION
    Verify Click Tax Templates Submenu

Validate Click New Button For Tax Templates
    [Tags]    REGRESSION
    ixbill_page_resource.Verify Click New Button

Validate Set Tax Template Name
    [Tags]    REGRESSION
    Verify Set Tax Template Name        ${TEST DATA PREFIX}

Validate Set Tax Percentage
    [Tags]    REGRESSION
    Verify Set Tax Percentage       11

Validate Click Accounting Code Browse Button
    [Tags]    REGRESSION
    Verify Click Accounting Code Browse Button

Validate Set First Letter
    [Tags]    REGRESSION
    ${ACCOUNTING CODE} =        Verify Get Created Accounting Code
    set suite variable         ${ACCOUNTING CODE}
    ixbill_page_resource.Verify Set First Letter     ${ACCOUNTING CODE}

Validate Click Go Button
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table
    [Tags]    REGRESSION
    ixbill_page_resource.Verify Select Row From Look Up Table        ${ACCOUNTING CODE}

Validate Set Tax Template Begin Date
    [Tags]    REGRESSION
    Verify Set Tax Template Begin Date      6/1/2017

Validate Set Tax Template End Date
    [Tags]    REGRESSION
    Verify Set Tax Template End Date        6/30/2017

Validate Verify Click Save Button
    [Tags]    REGRESSION
    ixbill_page_resource.Verify Click Save Button

Validate Close IXBill Window
    [Tags]    FUNCTIONAL
    Verify Click Exit Button