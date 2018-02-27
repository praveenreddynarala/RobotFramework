*** Settings ***
Documentation     A Test Suite With Set Of Tests For Outbound Statement Management To Validate Add Transaction

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/job_maintenance_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED BILL ACCOUNT NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Scope
    [Tags]    REGRESSION
    Verify Set Scope         iXBill

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    AutoTransitionPostedToApproved

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        No

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Outbound Statement Tab
    [Tags]    REGRESSION
    Verify Select Outbound Statements Tab

Validate Set Bill Account For Search
    [Tags]    REGRESSION
    ${CREATED BILL ACCOUNT NAME} =       Verify Get Created Bill Account Name
    set suite variable          ${CREATED BILL ACCOUNT NAME}
    bill_and_audit_page_resource.Verify Set Bill Account         ${CREATED BILL ACCOUNT NAME}

Validate Set Statement Type
    [Tags]    REGRESSION
    Verify Set Statement Type       @{STATEMENT TYPE LIST}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search        6/1/2017

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Set Outbound Statements Grid Dropdown Value To Set Status As Non Traffic Items Included
    [Tags]    REGRESSION
    Verify Set Outbound Statements Grid Dropdown Value      Status      Non Traffic Items Included

Validate Click Outbound Statements Grid Save Changes Button To Set Status As Non Traffic Items Included
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid Save Changes Button

Validate Close Bill And Audit Window
    [Tags]    REGRESSION
    Verify Close Bill And Audit Window

Validate Navigate to Job Maintenance module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Job Maintenance' From Main Menu

Validate Click Bill Submenu
    [Tags]    REGRESSION
    Verify Click Bill Submenu

Validate Set Registry Item
    [Tags]    REGRESSION
    Verify Set Registry Item    Statement

Validate Click Go Button
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click First Job
    [Tags]    REGRESSION
    Verify Click First Unp Job Link

Validate Click Request Statement Generate Process Link
    [Tags]    REGRESSION
    Verify Click Request Recalculate Unp Link

Validate Click Execute Button
    [Tags]    REGRESSION
    Verify Click Execute Button

Validate Statement Generate Job Completed
    [Tags]    REGRESSION
    Verify Statement Generate Job Completed

Validate Close Bill And Audit Window After Job Completed
    [Tags]    REGRESSION
    Verify Close Bill And Audit Window

Validate Navigate to Bill And Audit module After Closing Ixcontrol
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Outbound Statement Tab After Closing Ixcontrol
    [Tags]    REGRESSION
    Verify Select Outbound Statements Tab

Validate Set Bill Account For Search After Closing Ixcontrol
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Set Bill Account         ${CREATED BILL ACCOUNT NAME}

Validate Set Statement Type After Closing Ixcontrol
    [Tags]    REGRESSION
    Verify Set Statement Type       @{STATEMENT TYPE LIST}

Validate Set Begin Date For Search After Closing Ixcontrol
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search        6/1/2017

Validate Click Outbound Statement Search Button After Closing Ixcontrol
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statements Grid Save Changes Button To Set Status As Statement Posted
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid Save Changes Button

Validate Set Outbound Statements Grid Dropdown Value To Set Status As Statement Approved
    [Tags]    REGRESSION
    Verify Set Outbound Statements Grid Dropdown Value      Status      Statement Approved

Validate Click Outbound Statements Grid Save Changes Button To Set Status As Statement Approved
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid Save Changes Button

Validate Set Outbound Statements Grid Dropdown Value To Set Status As Statement Sent
    [Tags]    REGRESSION
    Verify Set Outbound Statements Grid Dropdown Value      Status      Statement Sent

Validate Click Outbound Statements Grid Save Changes Button To Set Status As Statement Sent
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid Save Changes Button

Validate Click Outbound Statement Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Transactions Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item        ${TRANSACTIONS INLINE ITEM}

Validate Click Add New Record Button
    [Tags]    REGRESSION
    Verify Click Add New Record Button

Validate Set Transactions Grid First Row Transaction Code
    [Tags]    REGRESSION
    Verify Set Transactions Grid First Row Transaction Code     ${TEST DATA PREFIX}

Validate Set Transactions Grid First Row Transaction Details
    [Tags]    REGRESSION
    Verify Set Value In Transactions Grid First Row Column      ${TRANSACTION DETAILS COLUMN NAME}     ${TRANSACTION DETAILS FOR ADD TRANSACTION}

Validate Set Transactions Grid First Row Amount
    [Tags]    REGRESSION
    Verify Set Value In Outbound Transactions Grid Amount Column      ${AMOUNT COLUMN NAME}     ${TRANSACTION AMOUNT FOR ADD TRANSACTION}

Validate Click Transactions Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Transactions Grid Save Changes Button

Validate Filter Transactions Grid
    [Tags]    REGRESSION
    Verify Filter Transactions Grid

Validate Get Transactions Grid Row Details
    [Tags]    REGRESSION
    Verify Get Transactions Grid Row Details

Validate Outbound Transaction Code After Create
    [Tags]    REGRESSION
    Verify Outbound Transaction Code After Create

Validate Outbound Transaction Details After Create
    [Tags]    REGRESSION
    Verify Outbound Transaction Details After Create        ${TRANSACTION DETAILS FOR ADD TRANSACTION}

Validate Outbound Transaction Amount After Create
    [Tags]    REGRESSION
    Verify Outbound Transaction Amount After Create     ${TRANSACTION AMOUNT FOR ADD TRANSACTION}

Validate Close Current Tab
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Close Current Tab       ${OUTBOUND STATEMENT TAB NAME PREFIX}