*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create New Charge Categories From Legacy iXBill Screen Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CHARGE CATEGORY}      ${EMPTY}

*** Test Cases ***
Validate Navigate to IXConnect module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXBill module
    [Tags]    REGRESSION
    Go To IXBill Screen With Specific Url

Validate Click Charge Categories Submenu
    [Tags]    REGRESSION
    Verify Click Charge Categories Submenu

Validate Click Charge Categories New Button
    [Tags]    REGRESSION
    Verify Click New Button

Validate Set Charge Category Name
    [Tags]    REGRESSION
    Verify Set Charge Categories Name       ${TEST DATA PREFIX}

Validate Set Charge Categories Abbreviation
    [Tags]    REGRESSION
    Verify Set Charge Categories Abbreviation        ${TEST DATA PREFIX}

Validate Click Charge Category Save Button
    [Tags]    REGRESSION
    Verify Click Detail Frame Save Button

Validate Get Charge Categories
    [Tags]    REGRESSION
    ${CHARGE CATEGORY} =     Verify Get Charge Categories Name
    log     ${CHARGE CATEGORY}

Validate Close iXBill Window
    [Tags]    REGRESSION
    Verify Click Exit Button
