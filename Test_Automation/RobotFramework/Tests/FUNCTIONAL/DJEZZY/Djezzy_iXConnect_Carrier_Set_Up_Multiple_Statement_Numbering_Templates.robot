*** Settings ***
Documentation     A Test Suite With Set Of Tests For Djezzy IXConnect Carrier To Validate Set Up Multiple Statement Numbering Templates

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixbill_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED STATEMENT NUMBERING TEMPLATE}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    FUNCTIONAL
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    FUNCTIONAL
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Bill And Audit Menu
    [Tags]    FUNCTIONAL
    Verify Expand Bill And Audit Menu

Validate Click Statement Numbering Templates Submenu
    [Tags]    FUNCTIONAL
    Verify Click Statement Numbering Templates Submenu

Validate Switch To IXBill
    [Tags]    FUNCTIONAL
    Verify Switch To IXBill

Validate Click New Button
    [Tags]    FUNCTIONAL
    Verify Click New Button

Validate Switch To Detail Frame
    [Tags]    FUNCTIONAL
    Verify Switch To Detail Frame

Validate Set Statement Numbering Template
    [Tags]    FUNCTIONAL
    Verify Set Statement Numbering Template     ${TEST DATA PREFIX}

Validate Set Begin Number
    [Tags]    FUNCTIONAL
    Verify Set Begin Number     ${BEGIN NUMBER}

Validate Set End Number
    [Tags]    FUNCTIONAL
    Verify Set End Number       ${END NUMBER}

Validate Set Increment
    [Tags]    FUNCTIONAL
    Verify Set Increment        ${INCREMENT}

Validate Set Numbering Length
    [Tags]    FUNCTIONAL
    Verify Set Numbering Length     ${NUMBERING LENGTH}

Validate Set Prefix
    [Tags]    FUNCTIONAL
    Verify Set Prefix           ${TEST DATA PREFIX}

Validate Get Created Statement Numbering Template
    [Tags]    FUNCTIONAL
    ${CREATED STATEMENT NUMBERING TEMPLATE} =    Verify Get Created Statement Numbering Template
    set suite variable      ${CREATED STATEMENT NUMBERING TEMPLATE}

Validate Switch To Default Content
    [Tags]    FUNCTIONAL
    Verify Switch To Default Content

Validate Click Save Button
    [Tags]    FUNCTIONAL
    ixbill_page_resource.Verify Click Save Button

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
    carrier_page_resource.Verify Grid Filter Details           ${CARRIER NAME COLUMN NAME}        @{SNT CARRIER NAME LIST FOR CREATE BILL ACCOUNT}

Validate Click Carriers Page Inline Action Button
    [Tags]    FUNCTIONAL
    Verify Click Carriers Page Inline Action Button         ${SNT CARRIER NAME FOR CREATE BILL ACCOUNT}

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
    Verify Set Billing Method       ${SNT BILLING METHOD}

Validate Set Billing Terms Number
    [Tags]    FUNCTIONAL
    Verify Set Billing Terms Number     ${SNT BILLING TERMS NUMBER}

Validate Set Billing Terms Base Period
    [Tags]    FUNCTIONAL
    Verify Set Billing Terms Base Period        ${SNT BILLING TERMS BASE PERIOD}

Validate Set Billing Terms Date Type
    [Tags]    FUNCTIONAL
    Verify Set Billing Terms Date Type      ${SNT BILLING TERMS DATE TYPE}

Validate Set Payment Terms Number
    [Tags]    FUNCTIONAL
    Verify Set Payment Terms Number     ${SNT PAYMENT TERMS NUMBER}

Validate Set Payment Terms Base Period
    [Tags]    FUNCTIONAL
    Verify Set Payment Terms Base Period        ${SNT PAYMENT TERMS BASE PERIOD}

Validate Set Payment Terms Date Type
    [Tags]    FUNCTIONAL
    Verify Set Payment Terms Date Type      ${SNT PAYMENT TERMS DATE TYPE}

Validate Set Paying Account
    [Tags]    FUNCTIONAL
    Verify Set Paying Account       ${SNT PAYING ACCOUNT}

Validate Set Receiving Account
    [Tags]    FUNCTIONAL
    Verify Set Receiving Account        ${SNT RECEIVING ACCOUNT}

Validate Set Usage Time Zone
    [Tags]    FUNCTIONAL
    Verify Set Usage Time Zone      ${SNT USAGE TIME ZONE}

Validate Set Accounting Code
    [Tags]    FUNCTIONAL
    Verify Set Accounting Code      ${SNT ACCOUNTING CODE}

Validate Set Origin Based Rating
    [Tags]    FUNCTIONAL
    Verify Set Origin Based Rating      ${SNT ORIGIN BASED RATING}

Validate Expand Current Cycles Section
    [Tags]    FUNCTIONAL
    Verify Expand Current Cycles Section

Validate Set Billing Cycle Template
    [Tags]    FUNCTIONAL
    Verify Set Billing Cycle Template       ${SNT BILLING CYCLE TEMPLATE}

Validate Set Settlement Cycle Template
    [Tags]    FUNCTIONAL
    Verify Set Settlement Cycle Template        ${SNT SETTLEMENT CYCLE TEMPLATE}

Validate Set Billing Cycle Begin Date
    [Tags]    FUNCTIONAL
    Verify Set Billing Cycle Begin Date     ${SNT BILLING CYCLE BEGIN DATE}

Validate Set Billing Cycle End Date
    [Tags]    FUNCTIONAL
    Verify Set Billing Cycle End Date       ${SNT BILLING CYCLE END DATE}

Validate Set Settlement Cycle Begin Date
    [Tags]    FUNCTIONAL
    Verify Set Settlement Cycle Begin Date      ${SNT SETTLEMENT CYCLE BEGIN DATE}

Validate Set Settlement Cycle End Date
    [Tags]    FUNCTIONAL
    Verify Set Settlement Cycle End Date        ${SNT SETTLEMENT CYCLE END DATE}

Validate Set Residual Traffic Window Number
    [Tags]    FUNCTIONAL
    Verify Set Residual Traffic Window Number       ${SNT RESIDUAL TRAFFIC WINDOW NUMBER}

Validate Expand Additional Fields Section
    [Tags]    FUNCTIONAL
    Verify Expand Additional Fields Section

Validate Set Billing Analyst
    [Tags]    FUNCTIONAL
    Verify Set Analyst      ${BILL ACCOUNT TYPE}        ${SNT BILLING ANALYST NAME}

Validate Set Billing Manager
    [Tags]    FUNCTIONAL
    Verify Set Manager      ${BILL ACCOUNT TYPE}        ${SNT BILLING MANAGER NAME}

Validate Expand Statement Section
    [Tags]    FUNCTIONAL
    Verify Expand Statement Section

Validate Set Cover Letter Template
    [Tags]    FUNCTIONAL
    Verify Set Cover Letter Template        ${SNT COVER LETTER TEMPLATE}

Validate Set Statement Template
    [Tags]    FUNCTIONAL
    Verify Set Statement Template       ${SNT STATEMENT TEMPLATE}

Validate Set Statement Number Template
    [Tags]    FUNCTIONAL
    Verify Set Statement Number Template        ${CREATED STATEMENT NUMBERING TEMPLATE}

Validate Set Positive Adjustment Statement Template
    [Tags]    FUNCTIONAL
    Verify Set Positive Adjustment Statement Template       ${SNT POSITIVE ADJUSTMENT STATEMENT TEMPLATE}

Validate Set Negative Adjustment Statement Template
    [Tags]    FUNCTIONAL
    Verify Set Negative Adjustment Statement Template       ${SNT NEGATIVE ADJUSTMENT STATEMENT TEMPLATE}

Validate Set Residual Traffic Treatment
    [Tags]    FUNCTIONAL
    Verify Set Residual Traffic Treatment       ${SNT RESIDUAL TRAFFIC TREATMENT}

Validate Set Shortfall Approval Method
    [Tags]    FUNCTIONAL
    Verify Set Shortfall Approval Method        ${SNT SHORTFALL APPROVAL METHOD}

Validate Click Create Bill Account Save Button
    [Tags]    FUNCTIONAL
    Verify Click Create Bill Account Save Button

Validate Close Add New Bill Account Popup
    [Tags]    FUNCTIONAL
    Verify Close Add New Bill Account Popup