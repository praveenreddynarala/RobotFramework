*** Settings ***
Documentation     A Test Suite With Set Of Tests For Djezzy Carrier Carrier Relationship To Validate Create A Bilateral Billing Account

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    FUNCTIONAL
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Filter Carrier Grid
    [Tags]    FUNCTIONAL
    Verify Grid Filter Details           ${CARRIER NAME COLUMN NAME}        @{BILATERAL CARRIER NAME LIST FOR CREATE BILL ACCOUNT}

Validate Click Carriers Page Inline Action Button
    [Tags]    FUNCTIONAL
    Verify Click Carriers Page Inline Action Button         ${BILATERAL CARRIER NAME FOR CREATE BILL ACCOUNT}

Validate Select Item From Inline Action
    [Tags]    FUNCTIONAL
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Bill And Account Audit Section
    [Tags]    FUNCTIONAL
    Verify Expand Bill And Audit Account Section

Validate Click Create Bill Account
    [Tags]    FUNCTIONAL
    Verify Click Create Bill Account

Validate Set Bill Account Name
    [Tags]    FUNCTIONAL
    Verify Set Bill And Audit Account Name      ${BILL ACCOUNT TYPE}        ${TEST DATA PREFIX}

Validate Set Bill Account Abbreviation
    [Tags]    FUNCTIONAL
    Verify Set Bill And Audit Account Abbreviation      ${BILL ACCOUNT TYPE}        ${TEST DATA PREFIX}

Validate Set Bill Account Legal Name
    [Tags]    FUNCTIONAL
    Verify Set Account Legal Name      ${TEST DATA PREFIX}

Validate Set Billing Method
    [Tags]    FUNCTIONAL
    Verify Set Billing Method       ${BILATERAL BILLING METHOD}

Validate Set Billing Terms Number
    [Tags]    FUNCTIONAL
    Verify Set Billing Terms Number     ${BILATERAL BILLING TERMS NUMBER}

Validate Set Billing Terms Base Period
    [Tags]    FUNCTIONAL
    Verify Set Billing Terms Base Period        ${BILATERAL BILLING TERMS BASE PERIOD}

Validate Set Billing Terms Date Type
    [Tags]    FUNCTIONAL
    Verify Set Billing Terms Date Type      ${BILATERAL BILLING TERMS DATE TYPE}

Validate Set Payment Terms Number
    [Tags]    FUNCTIONAL
    Verify Set Payment Terms Number     ${BILATERAL PAYMENT TERMS NUMBER}

Validate Set Payment Terms Base Period
    [Tags]    FUNCTIONAL
    Verify Set Payment Terms Base Period        ${BILATERAL PAYMENT TERMS BASE PERIOD}

Validate Set Payment Terms Date Type
    [Tags]    FUNCTIONAL
    Verify Set Payment Terms Date Type      ${BILATERAL PAYMENT TERMS DATE TYPE}

Validate Set Paying Account
    [Tags]    FUNCTIONAL
    Verify Set Paying Account       ${BILATERAL PAYING ACCOUNT}

Validate Set Receiving Account
    [Tags]    FUNCTIONAL
    Verify Set Receiving Account        ${BILATERAL RECEIVING ACCOUNT}

Validate Set Usage Time Zone
    [Tags]    FUNCTIONAL
    Verify Set Usage Time Zone      ${BILATERAL USAGE TIME ZONE}

Validate Set Accounting Code
    [Tags]    FUNCTIONAL
    Verify Set Accounting Code      ${BILATERAL ACCOUNTING CODE}

Validate Set Origin Based Rating
    [Tags]    FUNCTIONAL
    Verify Set Origin Based Rating      ${BILATERAL ORIGIN BASED RATING}

Validate Expand Current Cycles Section
    [Tags]    FUNCTIONAL
    Verify Expand Current Cycles Section

Validate Set Billing Cycle Template
    [Tags]    FUNCTIONAL
    Verify Set Billing Cycle Template       ${BILATERAL BILLING CYCLE TEMPLATE}

Validate Set Settlement Cycle Template
    [Tags]    FUNCTIONAL
    Verify Set Settlement Cycle Template        ${BILATERAL SETTLEMENT CYCLE TEMPLATE}

Validate Set Billing Cycle Begin Date
    [Tags]    FUNCTIONAL
    Verify Set Billing Cycle Begin Date     ${BILATERAL BILLING CYCLE BEGIN DATE}

Validate Set Billing Cycle End Date
    [Tags]    FUNCTIONAL
    Verify Set Billing Cycle End Date       ${BILATERAL BILLING CYCLE END DATE}

Validate Set Settlement Cycle Begin Date
    [Tags]    FUNCTIONAL
    Verify Set Settlement Cycle Begin Date      ${BILATERAL SETTLEMENT CYCLE BEGIN DATE}

Validate Set Settlement Cycle End Date
    [Tags]    FUNCTIONAL
    Verify Set Settlement Cycle End Date        ${BILATERAL SETTLEMENT CYCLE END DATE}

Validate Set Residual Traffic Window Number
    [Tags]    FUNCTIONAL
    Verify Set Residual Traffic Window Number       ${BILATERAL RESIDUAL TRAFFIC WINDOW NUMBER}

Validate Expand Additional Fields Section
    [Tags]    FUNCTIONAL
    Verify Expand Additional Fields Section

Validate Set Billing Analyst
    [Tags]    FUNCTIONAL
    Verify Set Analyst      ${BILL ACCOUNT TYPE}        ${BILATERAL BILLING ANALYST NAME}

Validate Set Billing Manager
    [Tags]    FUNCTIONAL
    Verify Set Manager      ${BILL ACCOUNT TYPE}        ${BILATERAL BILLING MANAGER NAME}

Validate Expand Statement Section
    [Tags]    FUNCTIONAL
    Verify Expand Statement Section

Validate Set Cover Letter Template
    [Tags]    FUNCTIONAL
    Verify Set Cover Letter Template        ${BILATERAL COVER LETTER TEMPLATE}

Validate Set Statement Template
    [Tags]    FUNCTIONAL
    Verify Set Statement Template       ${BILATERAL STATEMENT TEMPLATE}

Validate Set Statement Number Template
    [Tags]    FUNCTIONAL
    Verify Set Statement Number Template        ${BILATERAL STATEMENT NUMBER TEMPLATE}

Validate Set Positive Adjustment Statement Template
    [Tags]    FUNCTIONAL
    Verify Set Positive Adjustment Statement Template       ${BILATERAL POSITIVE ADJUSTMENT STATEMENT TEMPLATE}

Validate Set Negative Adjustment Statement Template
    [Tags]    FUNCTIONAL
    Verify Set Negative Adjustment Statement Template       ${BILATERAL NEGATIVE ADJUSTMENT STATEMENT TEMPLATE}

Validate Set Residual Traffic Treatment
    [Tags]    FUNCTIONAL
    Verify Set Residual Traffic Treatment       ${BILATERAL RESIDUAL TRAFFIC TREATMENT}

Validate Set Shortfall Approval Method
    [Tags]    FUNCTIONAL
    Verify Set Shortfall Approval Method        ${BILATERAL SHORTFALL APPROVAL METHOD}

Validate Click Create Bill Account Save Button
    [Tags]    FUNCTIONAL
    Verify Click Create Bill Account Save Button

Validate Close Add New Bill Account Popup
    [Tags]    FUNCTIONAL
    Verify Close Add New Bill Account Popup

Validate Filter Carrier Grid After Create
    [Tags]    FUNCTIONAL
    Verify Grid Filter Details           ${CARRIER NAME COLUMN NAME}        @{BILATERAL CARRIER NAME LIST FOR CREATE BILL ACCOUNT}

Validate Click Carriers Page Inline Action Button After Create
    [Tags]    FUNCTIONAL
    Verify Click Carriers Page Inline Action Button         ${BILATERAL CARRIER NAME FOR CREATE BILL ACCOUNT}

Validate Select Item From Inline Action After Create
    [Tags]    FUNCTIONAL
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Bill And Account Audit Section After Create
    [Tags]    FUNCTIONAL
    Verify Expand Bill And Audit Account Section

Validate Filter Bill And Audit Account Grid
    [Tags]    FUNCTIONAL
    Verify Filter Bill And Audit Account Grid       ${NAME COLUMN NAME}

Validate Get Bill And Audit Account Grid Row Details
    [Tags]    FUNCTIONAL
    Verify Get Bill And Audit Account Grid Row Details

Validate Bill Account Name After Create
    [Tags]    FUNCTIONAL
    Verify Account Name After Create

Validate Billing Method After Create
    [Tags]    FUNCTIONAL
    Verify Billing Method After Create      ${BILATERAL BILLING METHOD}

Validate Paying Account After Create
    [Tags]    FUNCTIONAL
    Verify Paying Account After Create      ${BILATERAL PAYING ACCOUNT}

Validate Receiving Account After Create
    [Tags]    FUNCTIONAL
    Verify Receiving Account After Create       ${BILATERAL RECEIVING ACCOUNT}

Validate Verify Click Bill And Audit Accounts Grid Inline Action Button
    [Tags]    FUNCTIONAL
    Verify Click Bill And Audit Accounts Grid Inline Action Button

Validate Select Inline Action Item
    [Tags]    FUNCTIONAL
    Verify Select Inline Action Item        ${EDIT INLINE ITEM}

Validate Edit Bill Account Abbreviation
    [Tags]    FUNCTIONAL
    Verify Set Bill And Audit Account Abbreviation        ${BILL ACCOUNT TYPE}        ${BILATERAL ABBREVIATION FOR EDIT BILL ACCOUNT}

Validate Edit Bill Account Legal Name
    [Tags]    FUNCTIONAL
    Verify Set Account Legal Name      ${BILATERAL BILL ACCOUNT LEGAL NAME FOR EDIT}

Validate Edit Billing Terms Number
    [Tags]    FUNCTIONAL
    Verify Set Billing Terms Number     ${BILATERAL BILLING TERMS NUMBER}

Validate Edit Payment Terms Number
    [Tags]    FUNCTIONAL
    Verify Set Payment Terms Number     ${BILATERAL PAYMENT TERMS NUMBER}

Validate Expand Additional Fields Section For Edit
    [Tags]    FUNCTIONAL
    Verify Expand Additional Fields Section

Validate Edit Billing Analyst
    [Tags]    FUNCTIONAL
    Verify Set Analyst      ${BILL ACCOUNT TYPE}        ${BILATERAL BILLING ANALYST NAME FOR EDIT}

Validate Edit Billing Manager
    [Tags]    FUNCTIONAL
    Verify Set Manager      ${BILL ACCOUNT TYPE}        ${BILATERAL BILLING MANAGER NAME FOR EDIT}

Validate Click Create Bill Account Save Button After Edit
    [Tags]    FUNCTIONAL
    Verify Click Create Bill Account Save Button

Validate Close Edit Bill Account Pop Up
    [Tags]    FUNCTIONAL
    Verify Close Edit Bill Account Pop Up