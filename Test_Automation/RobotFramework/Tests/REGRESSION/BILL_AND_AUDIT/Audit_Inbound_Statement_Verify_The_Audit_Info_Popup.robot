*** Settings ***
Documentation     A Test Suite With Set Of Tests For Inbound Statement To Verify The Audit Info Popup

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Inbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Inbound Statement Tab

Validate Set Audit Account For Search
    [Tags]    REGRESSION
    Verify Set Audit Account For Search     @{AUDIT INFO POPUP AUDIT ACCOUNT LIST}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search      ${AUDIT INFO POPUP BEGIN DATE}

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Filter Inbound Statement Grid
    [Tags]    REGRESSION
    Verify Filter Inbound Statements Grid       ${STATEMENT NUMBER COLUMN NAME}     ${AUDIT INFO POPUP STATEMENT NUMBER}

Validate Click Inbound Statement Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${AUDIT ACCOUNT INFO INLINE ITEM}

Validate Expand Current Cycles Section
    [Tags]    REGRESSION
    Verify Expand Current Cycles Section

Validate Set Billing Cycle Template
    [Tags]    REGRESSION
    Verify Set Billing Cycle Template       ${BILLING CYCLE TEMPLATE}

Validate Set Billing Cycle Begin Date
    [Tags]    REGRESSION
    Verify Set Billing Cycle Begin Date     ${BILLING CYCLE BEGIN DATE}

Validate Set Residual Traffic Window
    [Tags]    REGRESSION
    Verify Set Residual Traffic Window      ${RESIDUAL TRAFFIC WINDOW}

Validate Click Audit Account Save Button
    [Tags]    REGRESSION
    Verify Click Audit Account Save Button

Validate Expand Dispute Contact Section
    [Tags]    REGRESSION
    Verify Expand Dispute Contact Section

Validate Clear Dispute Contact First Name
    [Tags]    REGRESSION
    Verify Set Dispute Contact First Name       ${DISPUTE CONTACT FIRST NAME}       ${CLEAR INPUT FIELD}

Validate Clear Dispute Contact Last Name
    [Tags]    REGRESSION
    Verify Set Dispute Contact Last Name        ${DISPUTE CONTACT LAST NAME}       ${CLEAR INPUT FIELD}

Validate Set Dispute Contact State
    [Tags]    REGRESSION
    Verify Set Dispute Contact State            ${DISPUTE CONTACT STATE}

Validate Click Audit Account Save Button Without Firstname Lastname
    [Tags]    REGRESSION
    Verify Click Audit Account Save Button Without Firstname Lastname

Validate Set Dispute Contact First Name
    [Tags]    REGRESSION
    Verify Set Dispute Contact First Name       ${DISPUTE CONTACT FIRST NAME}       ${CLEAR INPUT FIELD FALSE}

Validate Set Dispute Contact Last Name
    [Tags]    REGRESSION
    Verify Set Dispute Contact Last Name        ${DISPUTE CONTACT LAST NAME}       ${CLEAR INPUT FIELD FALSE}

Validate Set Dispute Contact Email
    [Tags]    REGRESSION
    Verify Set Dispute Contact Email            ${DISPUTE CONTACT EMAIL}

Validate Click Audit Account Save Button After Setting First And Last Name
    [Tags]    REGRESSION
    Verify Click Audit Account Save Button

Validate Close Current Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up                 ${EDIT AUDIT ACCOUNT POPUP NAME}
