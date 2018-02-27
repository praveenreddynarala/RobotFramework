*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create and Edit User Defined Parameter Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}        ${EMPTY}
${ROUTE CLASS}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Get Previously Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Previously Created Cost Policy Name

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Get Created Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    set suite variable      ${ROUTE CLASS}

Vlidate Click Create New Price Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Price Policy Name
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Price Policy Status
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${PRICE POLICY ACTIVE STATUS}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        ${CALL TYPE}

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create Price Policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Price Policy Grid With Created New Price Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${PRICE POLICY COLUMN NAME}

Validate Click Price Policy Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Action Button

Validate Click Price Policy Grid Inline Item
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Item       ${USER DEFINED PARAMETERS INLINE ITEM}

Validate Click Create New User Defined Parameter Button
    [Tags]    REGRESSION
    Verify Click Create New User Defined Parameter Button

Validate Set Parameter For Create User Defined Parameter
    [Tags]    REGRESSION
    Verify Set Parameter For Create User Defined Parameter    ${PARAMETER COLUMN NAME}    ${TEST DATA PREFIX}

Validate Set Value For Create User Defined Parameter
    [Tags]    REGRESSION
    Verify Set Value For Create User Defined Parameter    ${VALUE COLUMN NAME}    ${VALUE FOR CREATE USER DEFINED PARAMETER}

Validate Set Description For Create User Defined Parameter
    [Tags]    REGRESSION
    Verify Set Description For Create User Defined Parameter    ${DESCRIPTION COLUMN NAME}    ${TEST DATA PREFIX}

Validate Set Start Date For Create User Defined Parameter
    [Tags]    REGRESSION
    Verify Set Start Date For Create User Defined Parameter    ${START DATE COLUMN NAME}

Validate Click Save Changes Button After Create
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

Validate Click Second Page Next Button
    [Tags]    REGRESSION
    Verify Click Second Page Next Button

Validate Click Copy Cost Formulas Save Button
    [Tags]    REGRESSION
    Verify Click Copy Cost Formulas Save Button

Validate Filter User Defined Parameters Grid
    [Tags]    REGRESSION
    Verify Filter User Defined Parameters Grid    ${DESCRIPTION COLUMN NAME}

Validate Edit Description For User Defined Parameter
    [Tags]    REGRESSION
    Verify Edit Description For User Defined Parameter    ${DESCRIPTION COLUMN NAME}    ${EDIT DESCRIPTION VALUE}

Validte Edit End Date For New User Defined Parameter
    [Tags]    REGRESSION
    Verify Edit End Date For New User Defined Parameter    ${END DATE COLUMN NAME}    ${END DATE VALUE}

Validate Click Save Changes Button After Edit
    [Tags]    REGRESSION
    price_page_resource.Verify Click Save Changes Button