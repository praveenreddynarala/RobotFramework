*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Threshold Bulk Edit Functionality in Credit Management.

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

Validate Select Credit Management Tab
    [Tags]    REGRESSION
    Click On Credit Management Tab

Validate Click Threshold Button
    [Tags]    REGRESSION
    Verify Click Threshold Button

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}

Validate Filter Credit Threshold Grid
    [Tags]    REGRESSION
    Verify Filter Threshold Grid        ${CARRIER COLUMN NAME}     ${CARRIER NAME}

Validate Select Threshold Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Threshold Grid Row Checkbox       ${CARRIER NAME}

Validate Click Threshold Grid Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Threshold Grid Bulk Edit Button

Validate Set Threshold Type For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Threshold Type For Bulk Edit     ${THRESHOLD TYPE FOR BULK EDIT}

Validate Set Warning Level 1 For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Warning Levels For Bulk Edit     ${LEVEL 1 TEXT}     ${WARNING LEVEL 1}

Validate Set Warning Level 2 For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Warning Levels For Bulk Edit     ${LEVEL 2 TEXT}     ${WARNING LEVEL 2}

Validate Set Warning Level 3 For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Warning Levels For Bulk Edit     ${LEVEL 3 TEXT}     ${WARNING LEVEL 3}

Validate Set Shutoff Recommended For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Warning Levels For Bulk Edit     ${SHUTOFF RECOMMENDED TEXT}     ${SHUTOFF RECOMMENDED}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Click Threshold Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Threshold Grid Save Changes Button

Validate Get Threshold Grid Row Details
    [Tags]    REGRESSION
    Verify Get Threshold Grid Row Details

Validate Threshold Type After Bulk Edit
    [Tags]    REGRESSION
    Verify Threshold Type After Bulk Edit       ${THRESHOLD TYPE FOR BULK EDIT}

Validate Level 1 Warning After Bulk Edit
    [Tags]    REGRESSION
    Verify Level 1 Warning After Bulk Edit      ${WARNING LEVEL 1}

Validate Level 2 Warning After Bulk Edit
    [Tags]    REGRESSION
    Verify Level 2 Warning After Bulk Edit      ${WARNING LEVEL 2}

Validate Level 3 Warning After Bulk Edit
    [Tags]    REGRESSION
    Verify Level 3 Warning After Bulk Edit      ${WARNING LEVEL 3}

Validate Shutoff Recommended After Bulk Edit
    [Tags]    REGRESSION
    Verify Shutoff Recommended After Bulk Edit      ${SHUTOFF RECOMMENDED}