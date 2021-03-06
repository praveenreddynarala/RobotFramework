*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create And Edit Bill Acoount Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${FIRST USER FIRST NAME}        ${EMPTY}
${FIRST USER LAST NAME}         ${EMPTY}
${SECOND USER FIRST NAME}        ${EMPTY}
${SECOND USER LAST NAME}         ${EMPTY}
${FIRST USER NAME}              ${EMPTY}
${SECOND USER NAME}              ${EMPTY}
${CREATED CYCLE TEMPLATE NAME}      ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click New User Button
    [Tags]    REGRESSION
    Verify Click New User Button

Validate Set User Name
    [Tags]    REGRESSION
    Verify Set User Name        ${TEST DATA PREFIX}

Validate Set First Name
    [Tags]    REGRESSION
    Verify Set First Name       ${TEST DATA PREFIX}

Validate Set Last Name
    [Tags]    REGRESSION
    Verify Set Last Name       ${TEST DATA PREFIX}

Validate Set Security Profile
    [Tags]    REGRESSION
    Verify Set Security Profile     ${NEW USER SECURITY PROFILE}

Validate Set User Status
    [Tags]    REGRESSION
    Verify Set User Status      ${NEW USER ACTIVE STATUS}

Validate Set Reports To
    [Tags]    REGRESSION
    Verify Set Reports To       ${NEW USER REPORTS TO}

Validate Set Password
    [Tags]    REGRESSION
    Verify Set Password     ${NEW USER PASSWORD}

Validate Set Confirm Password
    [Tags]    REGRESSION
    Verify Set Confirm Password     ${NEW USER PASSWORD}

Validate Set Primary Email
    [Tags]    REGRESSION
    Verify Set Primary Email        ${NEW USER PRIMARY EMAIL}

Validate Click Save And Create New Button
    [Tags]    REGRESSION
    Verify Click Save And Create New Button

Validate Get First User Name
   [Tags]    REGRESSION
    ${FIRST USER NAME} =    Verify Get User Name
    log   ${FIRST USER NAME}
    set suite variable      ${FIRST USER NAME}

Validate Get First User First Name
   [Tags]    REGRESSION
   ${FIRST USER FIRST NAME} =        Verify Get User First Name
   log      ${FIRST USER FIRST NAME}
   set suite variable       ${FIRST USER FIRST NAME}

Validate Get First User Last Name
   [Tags]    REGRESSION
   ${FIRST USER LAST NAME} =        Verify Get User Last Name
   log      ${FIRST USER LAST NAME}
   set suite variable       ${FIRST USER LAST NAME}

Validate Close Create New User Pop Up
    [Tags]    REGRESSION
    Verify Close Create New User Pop Up

Validate Select Users Tab After User Creation
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click New User Button For Second User
    [Tags]    REGRESSION
    Verify Click New User Button

Validate Set User Name For Second User
    [Tags]    REGRESSION
    Verify Set User Name        ${TEST DATA PREFIX}

Validate Set First Name For Second User
    [Tags]    REGRESSION
    Verify Set First Name       ${TEST DATA PREFIX}

Validate Set Last Name For Second User
    [Tags]    REGRESSION
    Verify Set Last Name       ${TEST DATA PREFIX}

Validate Set Security Profile For Second User
    [Tags]    REGRESSION
    Verify Set Security Profile     ${NEW USER SECURITY PROFILE}

Validate Set User Status For Second User
    [Tags]    REGRESSION
    Verify Set User Status      ${NEW USER ACTIVE STATUS}

Validate Set Reports To For Second User
    [Tags]    REGRESSION
    Verify Set Reports To       ${NEW USER REPORTS TO}

Validate Set Password For Second User
    [Tags]    REGRESSION
    Verify Set Password     ${NEW USER PASSWORD}

Validate Set Confirm Password For Second User
    [Tags]    REGRESSION
    Verify Set Confirm Password     ${NEW USER PASSWORD}

Validate Set Primary Email For Second User
    [Tags]    REGRESSION
    Verify Set Primary Email        ${NEW USER PRIMARY EMAIL}

Validate Click Save And Create New Button For Second User
    [Tags]    REGRESSION
    Verify Click Save And Create New Button

Validate Get Second User Name
   [Tags]    REGRESSION
    ${SECOND USER NAME} =    Verify Get User Name
    log   ${SECOND USER NAME}
    set suite variable      ${SECOND USER NAME}

Validate Get First User First Name For Second User
   [Tags]    REGRESSION
   ${SECOND USER FIRST NAME} =        Verify Get User First Name
   log      ${SECOND USER FIRST NAME}
   set suite variable       ${SECOND USER FIRST NAME}

Validate Get First User Last Name For Second User
   [Tags]    REGRESSION
   ${SECOND USER LAST NAME} =        Verify Get User Last Name
   log      ${SECOND USER LAST NAME}
   set suite variable       ${SECOND USER LAST NAME}

Validate Close Create New User Pop Up For Second User
    [Tags]    REGRESSION
    Verify Close Create New User Pop Up

Validate Select Users Tab After Creation Of Second User
    [Tags]    REGRESSION
    Click on Users Tab

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Filter Carriers Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}

Validate Click Carriers Page Inline Action Button After Create
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button After Create

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Bill And Account Audit Section
    [Tags]    REGRESSION
    Verify Expand Bill And Audit Account Section

Validate Click Create Bill Account
    [Tags]    REGRESSION
    Verify Click Create Bill Account

Validate Set Bill Account Name
    [Tags]    REGRESSION
    Verify Set Bill And Audit Account Name      ${BILL ACCOUNT TYPE}        ${TEST DATA PREFIX}

Validate Set Bill Account Abbreviation
    [Tags]    REGRESSION
    Verify Set Bill And Audit Account Abbreviation      ${BILL ACCOUNT TYPE}        ${TEST DATA PREFIX}

Validate Set Bill Account Legal Name
    [Tags]    REGRESSION
    Verify Set Account Legal Name      ${TEST DATA PREFIX}

Validate Set Billing Method
    [Tags]    REGRESSION
    Verify Set Billing Method       Invoice

Validate Set Billing Terms Number
    [Tags]    REGRESSION
    Verify Set Billing Terms Number     ${BILLING TERMS NUMBER}

Validate Set Billing Terms Base Period
    [Tags]    REGRESSION
    Verify Set Billing Terms Base Period        ${BILLING TERMS BASE PERIOD}

Validate Set Billing Terms Date Type
    [Tags]    REGRESSION
    Verify Set Billing Terms Date Type      ${BILLING TERMS DATE TYPE}

Validate Set Payment Terms Number
    [Tags]    REGRESSION
    Verify Set Payment Terms Number     ${PAYMENT TERMS NUMBER}

Validate Set Payment Terms Base Period
    [Tags]    REGRESSION
    Verify Set Payment Terms Base Period        ${PAYMENT TERMS BASE PERIOD}

Validate Set Payment Terms Date Type
    [Tags]    REGRESSION
    Verify Set Payment Terms Date Type      ${PAYMENT TERMS DATE TYPE}

Validate Set Paying Account
    [Tags]    REGRESSION
    Verify Set Paying Account

Validate Set Receiving Account
    [Tags]    REGRESSION
    Verify Set Receiving Account        Telarix International

Validate Set Usage Time Zone
    [Tags]    REGRESSION
    Verify Set Usage Time Zone      ${USAGE TIME ZONE}

Validate Set Accounting Code
    [Tags]    REGRESSION
    ${CREATED ACCOUNTING CODE} =        Verify Get Created Accounting Code
    log         ${CREATED ACCOUNTING CODE}
    carrier_page_resource.Verify Set Accounting Code      ${CREATED ACCOUNTING CODE}

Validate Set Origin Based Rating
    [Tags]    REGRESSION
    Verify Set Origin Based Rating      ${ORIGIN BASED RATING}

Validate Expand Current Cycles Section
    [Tags]    REGRESSION
    Verify Expand Current Cycles Section

Validate Get Created Cycle Template Name
    [Tags]    REGRESSION
    ${CREATED CYCLE TEMPLATE NAME} =    Verify Get Created Cycle Template Name
    set suite variable      ${CREATED CYCLE TEMPLATE NAME}

Validate Set Billing Cycle Template
    [Tags]    REGRESSION
    Verify Set Billing Cycle Template       ${CREATED CYCLE TEMPLATE NAME}

Validate Set Settlement Cycle Template
    [Tags]    REGRESSION
    Verify Set Settlement Cycle Template        ${CREATED CYCLE TEMPLATE NAME}

Validate Set Billing Cycle Begin Date
    [Tags]    REGRESSION
    Verify Set Billing Cycle Begin Date     6/1/2017

Validate Set Settlement Cycle Begin Date
    [Tags]    REGRESSION
    Verify Set Settlement Cycle Begin Date      6/1/2017

Validate Set Residual Traffic Window Number
    [Tags]    REGRESSION
    Verify Set Residual Traffic Window Number       ${RESIDUAL TRAFFIC WINDOW NUMBER}

Validate Expand Additional Fields Section
    [Tags]    REGRESSION
    Verify Expand Additional Fields Section

Validate Set Billing Analyst
    [Tags]    REGRESSION
    Verify Set Analyst      ${BILL ACCOUNT TYPE}        ${FIRST USER FIRST NAME}     ${FIRST USER LAST NAME}

Validate Set Billing Manager
    [Tags]    REGRESSION
    Verify Set Manager      ${BILL ACCOUNT TYPE}        ${SECOND USER FIRST NAME}       ${SECOND USER LAST NAME}

Validate Expand Statement Section
    [Tags]    REGRESSION
    Verify Expand Statement Section

Validate Set Cover Letter Template
    [Tags]    REGRESSION
    ${CREATED COVER LETTER TEMPLATE} =      Verify Get Created Cover Letter Template Name
    log     ${CREATED COVER LETTER TEMPLATE}
    Verify Set Cover Letter Template        ${CREATED COVER LETTER TEMPLATE}

Validate Set Statement Template
    [Tags]    REGRESSION
    Verify Set Statement Template       ${STATEMENT TEMPLATE}

Validate Set Statement Number Template
    [Tags]    REGRESSION
    Verify Set Statement Number Template        ${STATEMENT NUMBER TEMPLATE}

Validate Set Positive Adjustment Statement Template
    [Tags]    REGRESSION
    Verify Set Positive Adjustment Statement Template       ${POSITIVE ADJUSTMENT STATEMENT TEMPLATE}

Validate Set Negative Adjustment Statement Template
    [Tags]    REGRESSION
    Verify Set Negative Adjustment Statement Template       ${NEGATIVE ADJUSTMENT STATEMENT TEMPLATE}

Validate Set Residual Traffic Treatment
    [Tags]    REGRESSION
    Verify Set Residual Traffic Treatment       ${RESIDUAL TRAFFIC TREATMENT}

Validate Set Shortfall Approval Method
    [Tags]    REGRESSION
    Verify Set Shortfall Approval Method        ${SHORTFALL APPROVAL METHOD}

Validate Click Create Bill Account Save Button
    [Tags]    REGRESSION
    Verify Click Create Bill Account Save Button

Validate Close Add New Bill Account Popup
    [Tags]    REGRESSION
    Verify Close Add New Bill Account Popup