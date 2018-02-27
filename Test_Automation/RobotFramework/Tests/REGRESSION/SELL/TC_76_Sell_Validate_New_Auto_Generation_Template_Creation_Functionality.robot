*** Settings ***
Documentation     [TAENOSIS-975] A Test Suite With Set Of Tests To Validate Auto Generation Template Creation Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED TEMPLATE NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Click Auto Generate Management Button
    [Tags]    REGRESSION
    Verify Click Auto Generate Management Button

Validate Click New Template Button
    [Tags]    REGRESSION
    Verify Click New Template Button

Validate Template Name Field Is Present
    [Tags]    REGRESSION
    Verify Field Is Present     Template Name

Validate Cycle Type Field Is Present
    [Tags]    REGRESSION
    Verify Field Is Present     Cycle Type

Validate Begin of Range Field Is Present
    [Tags]    REGRESSION
    Verify Field Is Present     Begin of Range Period

Validate End of Range Period Field Is Present
    [Tags]    REGRESSION
    Verify Field Is Present     End of Range Period

Validate Auto New CPE Field Is Present
    [Tags]    REGRESSION
    Verify Field Is Present     Auto New CPE

Validate Auto New RPL Field Is Present
    [Tags]    REGRESSION
    Verify Field Is Present     Auto New RPL

Validate Check Non-Auto Period Field Is Present
    [Tags]    REGRESSION
    Verify Field Is Present     Check Non-Auto Period

Validate Auto if Pending CPE Field Is Present
    [Tags]    REGRESSION
    Verify Field Is Present     Auto if Pending CPE

Validate Auto if Pending RPL Field Is Present
    [Tags]    REGRESSION
    Verify Field Is Present     Auto if Pending RPL

Validate Set New Template Name
    [Tags]    REGRESSION
    Verify Set New Template Name        ${TEST DATA PREFIX}

Validate Set Begin Of Range Period Date To Add
    [Tags]    REGRESSION
    Verify Set Begin Of Range Period Date To Add        1

Validate Set Begin Of Range Period Time
    [Tags]    REGRESSION
    Verify Set Begin Of Range Period Time       12:00 AM

Validate Set End Of Range Period Date To Add
    [Tags]    REGRESSION
    Verify Set End Of Range Period Date To Add        2

Validate Set End Of Range Period Time
    [Tags]    REGRESSION
    Verify Set End Of Range Period Time       12:30 AM

Validate Click Save Customer Profile Button
    [Tags]    REGRESSION
    Verify Click Save Customer Profile Button

Validate Get Created Template Name
    [Tags]    REGRESSION
    ${CREATED TEMPLATE NAME} =      Verify Get Created Template Name
    set suite variable          ${CREATED TEMPLATE NAME}

Validate Filter Auto Template Management Grid
    [Tags]    REGRESSION
    Verify Filter Auto Template Management Grid     ${TEMPLATE NAME COLUMN NAME}        ${CREATED TEMPLATE NAME}

Validate Get Auto Template Management Grid Row Details
    [Tags]    REGRESSION
    Verify Get Auto Template Management Grid Row Details

Validate Auto Template Management Grid New Template Name
    [Tags]    REGRESSION
    Verify Auto Template Management Grid New Template Name      ${CREATED TEMPLATE NAME}