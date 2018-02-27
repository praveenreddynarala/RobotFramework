*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Active Credit Limit Functionality In Credit Management

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}           ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}

Validate Select Credit Management Tab
    [Tags]    REGRESSION
    Click On Credit Management Tab

Validate Click Activate Credit Limit Button
    [Tags]    REGRESSION
    Verify Click Activate Credit Limit Button

Validate Set Created Carrier Name For Activate Credit Limit
    [Tags]    REGRESSION
    Verify Set Carrier Name For Activate Credit Limit       ${CARRIER NAME}

Validate Set Credit Management Status
    [Tags]    REGRESSION
    Verify Set Credit Management Status     ${CREDIT MANAGEMENT STATUS}

Validate Set Prepaid Customer Status
    [Tags]    REGRESSION
    Verify Set Prepaid Customer Status      ${PRE PAID CUSTOMER STATUS}

Validate Set Currency
    [Tags]    REGRESSION
    Verify Set Currency     ${CURRENCY FOR ACTIVATE CREDIT LIMIT}

Validate Set Credit Limit
    [Tags]    REGRESSION
    Verify Set Credit Limit     ${CREDIT LIMIT FOR ACTIVATE CREDIT LIMIT}

Validate Set Level 1 Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       ${THRESHOLD LEVEL 1 VALUE}

Validate Set Level 2 Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       ${THRESHOLD LEVEL 2 VALUE}

Validate Set Level 3 Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 3 TEXT}       ${THRESHOLD LEVEL 3 VALUE}

Validate Set Shut-off Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD SHUTOFF TEXT}       ${THRESHOLD SHUTOFF VALUE}

Validate Set Credit Limit Monitoring
    [Tags]    REGRESSION
    Verify Set Credit Limit Monitoring      ${CREDIT LIMIT MONITORING}

Validate Set Tarrif Type Assignment
    [Tags]    REGRESSION
    Verify Set Tarrif Type Assignment       ${TARRIF TYPE ASSIGNMENT}

Validate Click Save Credit Profile Button
    [Tags]    REGRESSION
    Verify Click Save Credit Profile Button

Validate Close Current Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${CREDIT PROFILE TAB NAME}

Validate Filter Credit Management Grid
    [Tags]    REGRESSION
    Verify Filter Credit Management Grid After Activate Creadit Limit        ${CARRIER NAME COLUMN NAME}    ${CARRIER NAME}

Validate Get Credit Management Grid Row Details
    [Tags]    REGRESSION
    Verify Get Credit Management Grid Row Details

Validate Carrier Name After Activate Credit Limit
    [Tags]    REGRESSION
    Verify Carrier Name After Activate Credit Limit

Validate Currency After Activate Credit Limit
    [Tags]    REGRESSION
    Verify Currency After Activate Credit Limit     ${CURRENCY FOR ACTIVATE CREDIT LIMIT}

Validate Verify Credit Limit After Activate Credit Limit
    [Tags]    REGRESSION
    Verify Credit Limit After Activate Credit Limit     ${CREDIT LIMIT FOR ACTIVATE CREDIT LIMIT}
