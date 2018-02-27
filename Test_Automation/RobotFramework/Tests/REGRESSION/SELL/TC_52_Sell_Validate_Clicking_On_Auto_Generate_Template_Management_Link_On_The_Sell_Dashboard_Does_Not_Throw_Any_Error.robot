*** Settings ***
Documentation     [TAENOSIS-370] A Test Suite With Set Of Tests To Validate Clicking On Auto Generate Template Management Link On The Sell Dashboard Does Not Throw Any Error

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot

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

Validate The Auto Generate Management Screen Is Available
    [Tags]    REGRESSION
    Verify The Auto Generate Management Screen Is Available

Validate Template Name Column Is Available In Auto Generate Management Screen
    [Tags]    REGRESSION
    Verify Specific Column Is Available In Auto Generate Management Screen      ${TEMPLATE NAME COLUMN NAME}

Validate Status Column Is Available In Auto Generate Management Screen
    [Tags]    REGRESSION
    Verify Specific Column Is Available In Auto Generate Management Screen      ${STATUS COLUMN NAME}

Validate Cycle Type Column Is Available In Auto Generate Management Screen
    [Tags]    REGRESSION
    Verify Specific Column Is Available In Auto Generate Management Screen      ${CYCLE TYPE COLUMN NAME}

Validate Begin Of Range Period Column Is Available In Auto Generate Management Screen
    [Tags]    REGRESSION
    Verify Specific Column Is Available In Auto Generate Management Screen      ${BEGIN OF RANGE PERIOD COLUMN NAME}

Validate End Of Range Period Column Is Available In Auto Generate Management Screen
    [Tags]    REGRESSION
    Verify Specific Column Is Available In Auto Generate Management Screen      ${END OF RANGE PERIOD COLUMN NAME}

Validate Auto New CPE Column Is Available In Auto Generate Management Screen
    [Tags]    REGRESSION
    Verify Specific Column Is Available In Auto Generate Management Screen      ${AUTO NEW CPE COLUMN NAME}

Validate Auto New RPL Column Is Available In Auto Generate Management Screen
    [Tags]    REGRESSION
    Verify Specific Column Is Available In Auto Generate Management Screen      ${AUTO NEW RPL COLUMN NAME}

Validate Check Non Auto Period Column Is Available In Auto Generate Management Screen
    [Tags]    REGRESSION
    Verify Specific Column Is Available In Auto Generate Management Screen      ${CHECK NON AUTO PERIOD COLUMN NAME}

Validate Auto If Pending RPL Column Is Available In Auto Generate Management Screen
    [Tags]    REGRESSION
    Verify Specific Column Is Available In Auto Generate Management Screen      ${AUTO IF PENDING RPL COLUMN NAME}

Validate Auto If Pending CPE Column Is Available In Auto Generate Management Screen
    [Tags]    REGRESSION
    Verify Specific Column Is Available In Auto Generate Management Screen      ${AUTO IF PENDING CPE COLUMN NAME}

Validate Click New Template Button
    [Tags]    REGRESSION
    Verify Click New Template Button

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