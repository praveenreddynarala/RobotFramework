*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Credit Profile Edit Functionality In Credit Management

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

Validate Filter Credit Management Grid
    [Tags]    REGRESSION
    Verify Filter Credit Management Grid        ${CARRIER NAME COLUMN NAME}     ${CARRIER NAME}

Validate Click Credit Management Page Inline Action Button
    [Tags]    REGRESSION
    Verify Click Credit Management Page Inline Action Button        ${CARRIER NAME}

Validate Select Credit Profile inline Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${CREDIT PROFILE INLINE ITEM}

Validate Set Credit Management Status
    [Tags]    REGRESSION
    Verify Set Credit Management Status     ${CREDIT MANAGEMENT STATUS FOR EDIT}

Validate Set Prepaid Customer Status
    [Tags]    REGRESSION
    Verify Set Prepaid Customer Status      ${PRE PAID CUSTOMER STATUS FOR EDIT}

Validate Set Currency
    [Tags]    REGRESSION
    Verify Set Currency     ${CURRENCY FOR EDIT}

Validate Set Credit Limit
    [Tags]    REGRESSION
    Verify Set Credit Limit For Edit Credit Profile     ${CREDIT LIMIT FOR EDIT}

Validate Set Level 1 Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       ${THRESHOLD LEVEL 1 VALUE FOR EDIT}

Validate Set Level 2 Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       ${THRESHOLD LEVEL 2 VALUE FOR EDIT}

Validate Set Level 3 Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 3 TEXT}       ${THRESHOLD LEVEL 3 VALUE FOR EDIT}

Validate Set Shut-off Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD SHUTOFF TEXT}       ${THRESHOLD SHUTOFF VALUE FOR EDIT}

Validate Set User Activation Approval Required
    [Tags]    REGRESSION
    Verify Set User Activation Approval Required        ${USER ACTIVATION APPROVAL STATUS}

Validate Set User Shutoff Approval Required
    [Tags]    REGRESSION
    Verify Set User Shutoff Approval Required       ${USER SHUTOFF APPROVAL STATUS}

Validate Set Credit Limit Monitoring
    [Tags]    REGRESSION
    Verify Set Credit Limit Monitoring      ${CREDIT LIMIT MONITORING FOR EDIT}

Validate Set Tarrif Type Assignment
    [Tags]    REGRESSION
    Verify Set Tarrif Type Assignment       ${TARRIF TYPE ASSIGNMENT FOR EDIT}

Validate Click Save Credit Profile Button
    [Tags]    REGRESSION
    Verify Click Save Credit Profile Button

Validate Close Current Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${CREDIT PROFILE TAB NAME}

Validate Get Credit Management Grid Row Details
    [Tags]    REGRESSION
    Verify Get Credit Management Grid Row Details

Validate Carrier Name After Activate Credit Limit
    [Tags]    REGRESSION
    Verify Carrier Name After Activate Credit Limit

Validate Currency After Activate Credit Limit
    [Tags]    REGRESSION
    Verify Currency After Activate Credit Limit     ${CURRENCY FOR EDIT}

Validate Verify Credit Limit After Edit
    [Tags]    REGRESSION
    Verify Credit Limit After Edit