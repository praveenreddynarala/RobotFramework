*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate User Defined Parameter Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Get Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Cost Policy Grid With Created New Cost Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${COST POLICY COLUMN NAME}

Validate Click Cost Policy Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Action Button

Validate Click Cost Policy Grid Inline Item
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Item       ${USER DEFINED PARAMETERS INLINE ITEM}

Validate Click Create New User Defined Parameter Button
    [Tags]    REGRESSION
    Verify Click Create New User Defined Parameter Button

Validate Set Value In Parameter Column For Create User Defined Parameters
    [Tags]    REGRESSION
    Verify Set Value In Parameter Column      ${PARAMETER COLUMN NAME}    ${TEST DATA PREFIX}

Validate Set Value In Value Column For Create User Defined Parameters
    [Tags]    REGRESSION
    Verify Set Value In User Defined Parameters Grid Column        ${VALUE COLUMN NAME}       ${VALUE FOR VALUE COLUMN}

Validate Set Value In Description Column For Create User Defined Parameters
    [Tags]    REGRESSION
    Verify Set Value In Description Column    ${TEST DATA PREFIX}

Validate Set Value In Start Date Column For Create User Defined Parameters
    [Tags]    REGRESSION
    Verify Set Start Date For Create User Defined Parameter For Cost Policy     ${START DATE COLUMN NAME}

Validate Set Value In End Date Column For Create User Defined Parameters
    [Tags]    REGRESSION
    Verify Set End Date For Create User Defined Parameter For Cost Policy     ${END DATE COLUMN NAME}

Validate Click Save Changes Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Save Changes Button

Validate Edit Value In Value Column For Create User Defined Parameters
    [Tags]    REGRESSION
    Verify Set Value In User Defined Parameters Grid Column        ${VALUE COLUMN NAME}       ${VALUE FOR UPDATING VALUE COLUMN}

Validate Click Save Changes Button After Edit
    [Tags]    REGRESSION
    price_page_resource.Verify Click Save Changes Button