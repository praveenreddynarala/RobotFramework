*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Copy Parameter Functionality For Multiple User Defined Parameter

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}        ${EMPTY}
${ROUTE CLASS}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate The Cost Policies Tab Is Available
    [Tags]    REGRESSION
    Verify The Cost Policies Tab Is Available

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Get Created Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    set suite variable      ${ROUTE CLASS}

Vlidate Click Create New Cost Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Cost Policy Name
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Cost Policy Status
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${COST POLICY ACTIVE STATUS}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        ${CALL TYPE}

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Previously Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Previously Created Cost Policy Name

Vlidate Click Create New Cost Policy For Second Cost Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Cost Policy Name For Second Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation For Second Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Cost Policy Status For Second Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${COST POLICY ACTIVE STATUS}

Validate Set Call Type For Second Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        ${CALL TYPE}

Validate Set Route Class For Second Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create policy Save Button For Second Cost Policy
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

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

Validate Click Create New User Defined Parameter Button For Second Parameter
    [Tags]    REGRESSION
    Verify Click Create New User Defined Parameter Button

Validate Set Value In Parameter Column For Create Second User Defined Parameters
    [Tags]    REGRESSION
    Verify Set Value In Parameter Column      ${PARAMETER COLUMN NAME}    ${TEST DATA PREFIX}

Validate Set Value In Value Column For Create Second User Defined Parameters
    [Tags]    REGRESSION
    Verify Set Value In User Defined Parameters Grid Column        ${VALUE COLUMN NAME}       ${VALUE FOR VALUE COLUMN}

Validate Set Value In Description Column For Create Second User Defined Parameters
    [Tags]    REGRESSION
    Verify Set Value In Description Column    ${TEST DATA PREFIX}

Validate Set Value In Start Date Column For Create Second User Defined Parameters
    [Tags]    REGRESSION
    Verify Set Start Date For Create User Defined Parameter For Cost Policy     ${START DATE COLUMN NAME}

Validate Set Value In End Date Column For Create Second User Defined Parameters
    [Tags]    REGRESSION
    Verify Set End Date For Create User Defined Parameter For Cost Policy     ${END DATE COLUMN NAME}

Validate Click Save Changes Button For Second Parameter
    [Tags]    REGRESSION
    price_page_resource.Verify Click Save Changes Button

Validate Click Copy Parameter Button
    [Tags]    REGRESSION
    Verify Click Copy Parameter Button

Validate Check New Start And End Date Radio Button
    [Tags]    REGRESSION
    Verify Check New Start And End Date Radio Button

Validate Set New Start Date
    [Tags]    REGRESSION
    Verify Set New Start Date       ${START DATE FOR COPY UDP}

Validate Set New End Date
    [Tags]    REGRESSION
    Verify Set New End Date

Validate Move Available Policies To Destination
    [Tags]    REGRESSION
    Verify Move Available Policies To Destination

Validate Click Next Button
    [Tags]    REGRESSION
    Verify Click Next Button

Validate Click Copy Cost Formulas Save Button
    [Tags]    REGRESSION
    Verify Click Copy Cost Formulas Save Button