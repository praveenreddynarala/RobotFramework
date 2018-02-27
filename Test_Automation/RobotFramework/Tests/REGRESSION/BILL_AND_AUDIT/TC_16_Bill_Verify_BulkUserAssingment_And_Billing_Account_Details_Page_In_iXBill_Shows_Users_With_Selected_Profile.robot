*** Settings ***
Documentation     [TAENOSIS-943] Verify BulkUserAssingment and Billing Account Details page in iXBill shows Users with selected Profile

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${FIRST USER FIRST NAME}        ${EMPTY}
${CREATED BILL ACCOUNT NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Go To IXBill Screen With Specific Url
    [Tags]    REGRESSION
    Go To IXBill Screen With Specific Url

Validate Click Bulk User Assignments Submenu
    [Tags]    REGRESSION
    Verify Click Bulk User Assignments Submenu

Validate Get First User First Name
   [Tags]    REGRESSION
   ${FIRST USER FIRST NAME} =        Verify Get User First Name
   log      ${FIRST USER FIRST NAME}
   set suite variable       ${FIRST USER FIRST NAME}

Validate The User With Selected Profile Is Available
    [Tags]    REGRESSION
    Verify The User With Selected Profile Is Available      ${FIRST USER FIRST NAME}

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

Validate Click Exit Button
    [Tags]    REGRESSION
    ixbill_page_resource.Verify Click Exit Button