*** Settings ***
Documentation     A Test Suite With Set Of Tests For Djezzy IXConnect Carrier To Validate Create A Periodic Billing Cycle

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixbill_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED CYCLE TEMPLATE NAME}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    FUNCTIONAL
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    FUNCTIONAL
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Rating Menu
    [Tags]    FUNCTIONAL
    Verify Expand Rating Menu

Validate Click Bill Cycle And Settlement Management Submenu
    [Tags]    FUNCTIONAL
    Verify Click Bill Cycle And Settlement Management Submenu

Validate Switch To IXBill
    [Tags]    FUNCTIONAL
    Verify Switch To IXBill

Validate Click New Cycle Template Button
    [Tags]    FUNCTIONAL
    Verify Click New Cycle Template Button

Validate Set Cycle Template Name
    [Tags]    FUNCTIONAL
    Verify Set Cycle Template Name          ${TEST DATA PREFIX}

Validate Set Cycle Template Type
    [Tags]    FUNCTIONAL
    Verify Set Cycle Template Type          ${PERIODIC CYCLE TEMPLATE TYPE}

Validate Set Recurrence Pattern Period Length
    [Tags]    FUNCTIONAL
    Verify Set Recurrence Pattern Period Length         ${RECURRENCE PATTERN PERIOD LENGTH}

Validate Set Recurrence Pattern Period Type
    [Tags]    FUNCTIONAL
    Verify Set Recurrence Pattern Period Type           ${RECURRENCE PATTERN PERIOD TYPE}

Validate Set Recurrence Pattern Starting Date
    [Tags]    FUNCTIONAL
    Verify Set Recurrence Pattern Starting Date         ${RECURRENCE PATTERN STARTING DATE}

Validate Click New Cycle Template Save Button
    [Tags]    FUNCTIONAL
    Verify Click New Cycle Template Save Button

Validate Template Added Successfully
    [Tags]    FUNCTIONAL
    Verify Template Added Successfully

Validate Get Created Cycle Template Name
    [Tags]    FUNCTIONAL
    ${CREATED CYCLE TEMPLATE NAME} =    Verify Get Created Cycle Template Name
    set suite variable      ${CREATED CYCLE TEMPLATE NAME}

Validate Set Template letters
    [Tags]    FUNCTIONAL
    Verify Set Template letters

Validate Click Cycle Template Search Button
    [Tags]    FUNCTIONAL
    Verify Click Cycle Template Search Button

Validate Click Cycle Templates Grid First Page Button
    [Tags]    FUNCTIONAL
    Verify Click Cycle Templates Grid First Page Button

Validate Created Cycle Loaded In Grid
    [Tags]    FUNCTIONAL
    Verify Created Cycle Loaded In Grid

Validate Close IXBill Windows
    [Tags]    FUNCTIONAL
    Verify Close Ixbill Window

Validate Close Business Admin Window
    [Tags]    FUNCTIONAL
    Verify Close Business Admin Window

Validate Navigate to Carrier module
    [Tags]    FUNCTIONAL
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Filter Carrier Grid
    [Tags]    FUNCTIONAL
    carrier_page_resource.Verify Grid Filter Details           ${CARRIER NAME COLUMN NAME}        @{PERIODIC CYCLE CARRIER NAME LIST FOR CREATE BILL ACCOUNT}

Validate Click Carriers Page Inline Action Button
    [Tags]    FUNCTIONAL
    Verify Click Carriers Page Inline Action Button         ${PERIODIC CYCLE CARRIER NAME FOR CREATE BILL ACCOUNT}

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
    Verify Set Billing Method       ${PERIODIC CYCLE BILLING METHOD}

Validate Set Billing Terms Number
    [Tags]    FUNCTIONAL
    Verify Set Billing Terms Number     ${PERIODIC CYCLE BILLING TERMS NUMBER}

Validate Set Billing Terms Base Period
    [Tags]    FUNCTIONAL
    Verify Set Billing Terms Base Period        ${PERIODIC CYCLE BILLING TERMS BASE PERIOD}

Validate Set Billing Terms Date Type
    [Tags]    FUNCTIONAL
    Verify Set Billing Terms Date Type      ${PERIODIC CYCLE BILLING TERMS DATE TYPE}

Validate Set Payment Terms Number
    [Tags]    FUNCTIONAL
    Verify Set Payment Terms Number     ${PERIODIC CYCLE PAYMENT TERMS NUMBER}

Validate Set Payment Terms Base Period
    [Tags]    FUNCTIONAL
    Verify Set Payment Terms Base Period        ${PERIODIC CYCLE PAYMENT TERMS BASE PERIOD}

Validate Set Payment Terms Date Type
    [Tags]    FUNCTIONAL
    Verify Set Payment Terms Date Type      ${PERIODIC CYCLE PAYMENT TERMS DATE TYPE}

Validate Set Paying Account
    [Tags]    FUNCTIONAL
    Verify Set Paying Account       ${PERIODIC CYCLE PAYING ACCOUNT}

Validate Set Receiving Account
    [Tags]    FUNCTIONAL
    Verify Set Receiving Account        ${PERIODIC CYCLE RECEIVING ACCOUNT}

Validate Set Usage Time Zone
    [Tags]    FUNCTIONAL
    Verify Set Usage Time Zone      ${PERIODIC CYCLE USAGE TIME ZONE}

Validate Set Accounting Code
    [Tags]    FUNCTIONAL
    Verify Set Accounting Code      ${PERIODIC CYCLE ACCOUNTING CODE}

Validate Set Origin Based Rating
    [Tags]    FUNCTIONAL
    Verify Set Origin Based Rating      ${PERIODIC CYCLE ORIGIN BASED RATING}

Validate Expand Current Cycles Section
    [Tags]    FUNCTIONAL
    Verify Expand Current Cycles Section

Validate Set Billing Cycle Template
    [Tags]    FUNCTIONAL
    Verify Set Billing Cycle Template       ${CREATED CYCLE TEMPLATE NAME}

Validate Set Settlement Cycle Template
    [Tags]    FUNCTIONAL
    Verify Set Settlement Cycle Template        ${PERIODIC CYCLE SETTLEMENT CYCLE TEMPLATE}

Validate Set Billing Cycle Begin Date
    [Tags]    FUNCTIONAL
    Verify Set Billing Cycle Begin Date     ${RECURRENCE PATTERN STARTING DATE}

Validate Set Billing Cycle End Date
    [Tags]    FUNCTIONAL
    Verify Set Billing Cycle End Date       ${PERIODIC CYCLE BILLING CYCLE END DATE}

Validate Set Settlement Cycle Begin Date
    [Tags]    FUNCTIONAL
    Verify Set Settlement Cycle Begin Date      ${RECURRENCE PATTERN STARTING DATE}

Validate Set Settlement Cycle End Date
    [Tags]    FUNCTIONAL
    Verify Set Settlement Cycle End Date        ${PERIODIC CYCLE SETTLEMENT CYCLE END DATE}

Validate Set Residual Traffic Window Number
    [Tags]    FUNCTIONAL
    Verify Set Residual Traffic Window Number       ${PERIODIC CYCLE RESIDUAL TRAFFIC WINDOW NUMBER}

Validate Expand Additional Fields Section
    [Tags]    FUNCTIONAL
    Verify Expand Additional Fields Section

Validate Set Billing Analyst
    [Tags]    FUNCTIONAL
    Verify Set Analyst      ${BILL ACCOUNT TYPE}        ${PERIODIC CYCLE BILLING ANALYST NAME}

Validate Set Billing Manager
    [Tags]    FUNCTIONAL
    Verify Set Manager      ${BILL ACCOUNT TYPE}        ${PERIODIC CYCLE BILLING MANAGER NAME}

Validate Expand Statement Section
    [Tags]    FUNCTIONAL
    Verify Expand Statement Section

Validate Set Cover Letter Template
    [Tags]    FUNCTIONAL
    Verify Set Cover Letter Template        ${PERIODIC CYCLE COVER LETTER TEMPLATE}

Validate Set Statement Template
    [Tags]    FUNCTIONAL
    Verify Set Statement Template       ${PERIODIC CYCLE STATEMENT TEMPLATE}

Validate Set Statement Number Template
    [Tags]    FUNCTIONAL
    Verify Set Statement Number Template        ${PERIODIC CYCLE STATEMENT NUMBER TEMPLATE}

Validate Set Positive Adjustment Statement Template
    [Tags]    FUNCTIONAL
    Verify Set Positive Adjustment Statement Template       ${PERIODIC CYCLE POSITIVE ADJUSTMENT STATEMENT TEMPLATE}

Validate Set Negative Adjustment Statement Template
    [Tags]    FUNCTIONAL
    Verify Set Negative Adjustment Statement Template       ${PERIODIC CYCLE NEGATIVE ADJUSTMENT STATEMENT TEMPLATE}

Validate Set Residual Traffic Treatment
    [Tags]    FUNCTIONAL
    Verify Set Residual Traffic Treatment       ${PERIODIC CYCLE RESIDUAL TRAFFIC TREATMENT}

Validate Set Shortfall Approval Method
    [Tags]    FUNCTIONAL
    Verify Set Shortfall Approval Method        ${PERIODIC CYCLE SHORTFALL APPROVAL METHOD}

Validate Click Create Bill Account Save Button
    [Tags]    FUNCTIONAL
    Verify Click Create Bill Account Save Button

Validate Close Add New Bill Account Popup
    [Tags]    FUNCTIONAL
    Verify Close Add New Bill Account Popup