*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create And Edit In Audit Account Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/audit_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${COMPANY CARRIER NAME}         ${EMPTY}
${FIRST USER FIRST NAME}        ${EMPTY}
${FIRST USER LAST NAME}         ${EMPTY}
${SECOND USER FIRST NAME}        ${EMPTY}
${SECOND USER LAST NAME}         ${EMPTY}
${FIRST USER NAME}              ${EMPTY}
${SECOND USER NAME}              ${EMPTY}

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

Validate Get Created Company Carrier Name
    [Tags]    REGRESSION
    ${COMPANY CARRIER NAME} =     Verify Get Company Carrier Name
    log     ${COMPANY CARRIER NAME}
    set suite variable      ${COMPANY CARRIER NAME}

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

Validate Click Create In Audit Account
    [Tags]    REGRESSION
    Verify Click Create In Audit Account

Validate Set Audit Account Name
    [Tags]    REGRESSION
    Verify Set Bill And Audit Account Name      ${AUDIT ACCOUNT TYPE}        ${TEST DATA PREFIX}

Validate Set Audit Account Abbreviation
    [Tags]    REGRESSION
    Verify Set Bill And Audit Account Abbreviation      ${AUDIT ACCOUNT TYPE}        ${TEST DATA PREFIX}

Validate Set Audit Account Legal Name
    [Tags]    REGRESSION
    Verify Set Account Legal Name      ${TEST DATA PREFIX}

Validate Set Billing Method
    [Tags]    REGRESSION
    Verify Set Billing Method       ${BILLING METHOD FOR AUDIT}

Validate Set In Audit Paying Account
    [Tags]    REGRESSION
    Verify Set In Audit Paying Account       ${COMPANY CARRIER NAME}

Validate Set In Audit Receiving Account
    [Tags]    REGRESSION
    Verify Set In Audit Receiving Account

Validate Set Billing Terms Number
    [Tags]    REGRESSION
    Verify Set Billing Terms Number     ${BILLING TERMS NUMBER FOR AUDIT}

Validate Set Billing Terms Base Period
    [Tags]    REGRESSION
    Verify Set Billing Terms Base Period        ${BILLING TERMS BASE PERIOD FOR AUDIT}

Validate Set Billing Terms Date Type
    [Tags]    REGRESSION
    Verify Set Billing Terms Date Type      ${BILLING TERMS DATE TYPE FOR AUDIT}

Validate Set Payment Terms Number
    [Tags]    REGRESSION
    Verify Set Payment Terms Number     ${PAYMENT TERMS NUMBER FOR AUDIT}

Validate Set Payment Terms Base Period
    [Tags]    REGRESSION
    Verify Set Payment Terms Base Period        ${PAYMENT TERMS BASE PERIOD FOR AUDIT}

Validate Set Payment Terms Date Type
    [Tags]    REGRESSION
    Verify Set Payment Terms Date Type      ${PAYMENT TERMS DATE TYPE FOR AUDIT}

Validate Set Dispute Terms Number
    [Tags]    REGRESSION
    Verify Set Dispute Terms Number     ${DISPUTE TERMS NUMBER FOR AUDIT}

Validate Set Dispute Terms Base Period
    [Tags]    REGRESSION
    Verify Set Dispute Terms Base Period        ${DISPUTE TERMS BASE PERIOD FOR AUDIT}

Validate Set Dispute Terms Date Type
    [Tags]    REGRESSION
    Verify Set Dispute Terms Date Type      ${DISPUTE TERMS DATE TYPE FOR AUDIT}

Validate Set Usage Time Zone
    [Tags]    REGRESSION
    Verify Set Usage Time Zone      ${USAGE TIME ZONE FOR AUDIT}

Validate Set Accounting Code
    [Tags]    REGRESSION
    Verify Set Accounting Code      ${ACCOUNTING CODE FOR AUDIT}

Validate Expand Current Cycles Section
    [Tags]    REGRESSION
    Verify Expand Current Cycles Section

Validate Set Billing Cycle Template
    [Tags]    REGRESSION
    Verify Set Billing Cycle Template       ${BILLING CYCLE TEMPLATE FOR AUDIT}

Validate Set Settlement Cycle Template
    [Tags]    REGRESSION
    Verify Set Settlement Cycle Template        ${SETTLEMENT CYCLE TEMPLATE FOR AUDIT}

Validate Set Billing Cycle Begin Date
    [Tags]    REGRESSION
    Verify Set Billing Cycle Begin Date     ${BILLING CYCLE BEGIN DATE FOR AUDIT}

Validate Set Billing Cycle End Date
    [Tags]    REGRESSION
    Verify Set Billing Cycle End Date       ${BILLING CYCLE END DATE FOR AUDIT}

Validate Set Settlement Cycle Begin Date
    [Tags]    REGRESSION
    Verify Set Settlement Cycle Begin Date      ${SETTLEMENT CYCLE BEGIN DATE FOR AUDIT}

Validate Set Settlement Cycle End Date
    [Tags]    REGRESSION
    Verify Set Settlement Cycle End Date        ${SETTLEMENT CYCLE END DATE FOR AUDIT}

Validate Set Residual Traffic Window Number
    [Tags]    REGRESSION
    Verify Set Residual Traffic Window Number       ${RESIDUAL TRAFFIC WINDOW NUMBER FOR AUDIT}

Validate Expand Additional Fields Section
    [Tags]    REGRESSION
    Verify Expand Additional Fields Section

Validate Set Audit Analyst
    [Tags]    REGRESSION
    Verify Set Analyst      ${AUDIT ACCOUNT TYPE}        ${FIRST USER FIRST NAME}     ${FIRST USER LAST NAME}

Validate Set Audit Manager
    [Tags]    REGRESSION
    Verify Set Manager      ${AUDIT ACCOUNT TYPE}        ${SECOND USER FIRST NAME}       ${SECOND USER LAST NAME}

Validate Set Default Dispute Grade
    [Tags]    REGRESSION
    ${DISPUTE GRADE} =      get dispute grade
    Verify Set Default Dispute Grade        ${DISPUTE GRADE}

Validate Set Audit Account Status
    [Tags]    REGRESSION
    Verify Set Audit Account Status     ${AUDIT ACCOUNT ACTIVE STATUS}

Validate Click Create Bill And Audit Account Save Button
    [Tags]    REGRESSION
    Verify Click Create Bill Account Save Button

Validate Close Add In Audit Account Pop Up
    [Tags]    REGRESSION
    Verify Close Add In Audit Account Pop Up

Validate Filter Carriers Grid For Verification
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}

Validate Click Carriers Page Inline Action Button For Verification
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button After Create

Validate Select Item From Inline Action For Verification
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Bill And Account Audit Section After Create
    [Tags]    REGRESSION
    Verify Expand Bill And Audit Account Section

Validate Filter Bill And Audit Account Grid
    [Tags]    REGRESSION
    Verify Filter Bill And Audit Account Grid       ${NAME COLUMN NAME}

Validate Get Bill And Audit Account Grid Row Details
    [Tags]    REGRESSION
    Verify Get Bill And Audit Account Grid Row Details

Validate Audit Account Name After Create
    [Tags]    REGRESSION
    Verify Account Name After Create

Validate Billing Method After Create
    [Tags]    REGRESSION
    Verify Billing Method After Create      ${BILLING METHOD FOR AUDIT}

Validate Paying Account After Create
    [Tags]    REGRESSION
    Verify In Audit Paying Account      ${COMPANY CARRIER NAME}

Validate Receiving Account After Create
    [Tags]    REGRESSION
    Verify In Audit Receiving Account

Validate Click Bill And Audit Accounts Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Bill And Audit Accounts Grid Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Inline Action Item        ${EDIT INLINE ITEM}

Validate Edit Audit Account Abbreviation
    [Tags]    REGRESSION
    Verify Set Bill And Audit Account Abbreviation        ${AUDIT ACCOUNT TYPE}        ${TEST DATA PREFIX}

Validate Edit Audit Account Legal Name
    [Tags]    REGRESSION
    Verify Set Account Legal Name      ${TEST DATA PREFIX}

Validate Edit Payment Terms Number
    [Tags]    REGRESSION
    Verify Set Payment Terms Number     ${PAYMENT TERMS NUMBER FOR AUDIT}

Validate Click Create Audit Account Save Button After Edit
    [Tags]    REGRESSION
    Verify Click Create Bill Account Save Button

Validate Close Edit In Audit Account Pop Up
    [Tags]    REGRESSION
    Verify Close Edit In Audit Account Pop Up

Validate Close Carrier Window
    [Tags]    REGRESSION
    Verify Close Carrier Window

Validate Navigate to System Admin module To Inactivate User
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab After Create Profile To Inactivate User
    [Tags]    REGRESSION
    Click on Users Tab

Validate Filter Users Grid After Checking To Inactivate User
    [Tags]    REGRESSION
    Verify Filter Users Grid For Multiple Time       ${USER NAME COLUMN NAME}        ${FIRST USER NAME}        Name

Validate Set User Status Inactive
    [Tags]    REGRESSION
    Verify Set User Status In Grid      ${NEW USER INACTIVE STATUS}

Validate Click Users Grid Save Changes Button To Inactivate User
    [Tags]    REGRESSION
    Verify Click Users Grid Save Changes Button

Validate Filter Users Grid After Checking To Inactivate Second User
    [Tags]    REGRESSION
    Verify Filter Users Grid For Multiple Time       ${USER NAME COLUMN NAME}        ${SECOND USER NAME}     Name

Validate Set User Status Inactive For Second User
    [Tags]    REGRESSION
    Verify Set User Status In Grid      ${NEW USER INACTIVE STATUS}

Validate Click Users Grid Save Changes Button To Inactivate Second User
    [Tags]    REGRESSION
    Verify Click Users Grid Save Changes Button