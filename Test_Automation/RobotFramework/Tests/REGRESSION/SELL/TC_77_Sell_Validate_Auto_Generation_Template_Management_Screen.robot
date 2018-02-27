*** Settings ***
Documentation     [TAENOSIS-976] A Test Suite With Set Of Tests To Validate Auto Generation Template Management Screen

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

Validate Template Name Field Is Present
    [Tags]    REGRESSION
    Verify Field Is Present     Template Name

Validate Cycle Type Field Is Present
    [Tags]    REGRESSION
    Verify Field Is Present     Cycle Type

Validate Status Field Is Present
    [Tags]    REGRESSION
    Verify Field Is Present     Status

Validate Save Changes Button Is Present
    [Tags]    REGRESSION
    Verify Button Is Displayed      Save changes

Validate Cancel changes Button Is Present
    [Tags]    REGRESSION
    Verify Button Is Displayed      Cancel changes

Validate Bulk Edit Button Is Present
    [Tags]    REGRESSION
    Verify Button Is Displayed      Bulk Edit

Validate New Template Button Is Present
    [Tags]    REGRESSION
    Verify Button Is Displayed      New Template

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

Validate Click Auto Generate Template Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Auto Generate Template Grid First Row Inline Action Button

Validate Edit Inline Action Item Is Present
    [Tags]    REGRESSION
    Verify Inline Action Item Is Present    Edit