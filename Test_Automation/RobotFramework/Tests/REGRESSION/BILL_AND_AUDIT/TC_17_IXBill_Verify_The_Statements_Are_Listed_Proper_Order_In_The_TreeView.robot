*** Settings ***
Documentation     [TAENOSIS-895] Verify the Statements are listed proper order in the TreeView

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED BILL ACCOUNT NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Go To IXBill Screen With Specific Url
    [Tags]    REGRESSION
    Go To IXBill Screen With Specific Url

Validate Click Statements Submenu
    [Tags]    REGRESSION
    Verify Click Statements Submenu

Validate Set Ixtools Account Letter
    [Tags]    REGRESSION
    Verify Set Ixtools Account Letter       ${TEST DATA PREFIX}

Validate Set Billing Account Letter
    [Tags]    REGRESSION
    ${CREATED BILL ACCOUNT NAME} =       Verify Get Created Bill Account Name
    set suite variable          ${CREATED BILL ACCOUNT NAME}
    Verify Set Billing Account Letter       ${CREATED BILL ACCOUNT NAME}

Validate Click Ixbill Statements Button
    [Tags]    REGRESSION
    Verify Click Ixbill Statements Button

Validate Click First Company Plus Button
    [Tags]    REGRESSION
    Verify Click First Company Plus Button

Validate Click First Inner Carrier Plus Button
    [Tags]    REGRESSION
    Verify Click First Inner Carrier Plus Button

Validate The Specific Bill Account Is Available
    [Tags]    REGRESSION
    Verify The Specific Bill Account Is Available       ${CREATED BILL ACCOUNT NAME}

Validate Click Inner Bill Account Plus Button
    [Tags]    REGRESSION
    Verify Click Inner Bill Account Plus Button

Validate The First Statement Number Is Available
    [Tags]    REGRESSION
    Verify The First Statement Number Is Available

Validate The Second Statement Number Is Available
    [Tags]    REGRESSION
    Verify The Second Statement Number Is Available

Validate Click Exit Button
    [Tags]    REGRESSION
    ixbill_page_resource.Verify Click Exit Button