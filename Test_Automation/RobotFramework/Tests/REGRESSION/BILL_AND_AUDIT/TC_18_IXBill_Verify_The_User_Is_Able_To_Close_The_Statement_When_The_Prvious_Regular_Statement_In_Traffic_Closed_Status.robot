*** Settings ***
Documentation     [TAENOSIS-939] Verify the user is able to close the statement when the prvious regular statement in Traffic Closed status

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

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
    Verify Set Variable Name    EnablePreClosedApprovedStatus

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        Yes

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Outbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Outbound Statements Tab

Validate Set Bill Account For Search
    [Tags]    REGRESSION
    ${CREATED BILL ACCOUNT NAME} =       Verify Get Created Bill Account Name
    bill_and_audit_page_resource.Verify Set Bill Account         ${CREATED BILL ACCOUNT NAME}

Validate Set Statement Type
    [Tags]    REGRESSION
    Verify Set Statement Type       @{STATEMENT TYPE LIST}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search    8/1/2017

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Set Outbound Statements Grid Dropdown Value To Set Status As Traffic PreClosed
    [Tags]    REGRESSION
    Verify Set Outbound Statements Grid Dropdown Value      Status      Traffic PreClosed

Validate Click Outbound Statements Grid Save Changes Button To Set Status As Traffic PreClosed
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid Save Changes Button

Validate Set Outbound Statements Grid Dropdown Value To Set Status As Traffic PreClosed Approved
    [Tags]    REGRESSION
    Verify Set Outbound Statements Grid Dropdown Value      Status      Traffic PreClosed Approved

Validate Click Outbound Statements Grid Save Changes Button To Set Status As Traffic PreClosed Approved
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid Save Changes Button

Validate Set Outbound Statements Grid Dropdown Value To Set Status As Traffic Closed
    [Tags]    REGRESSION
    Verify Set Outbound Statements Grid Dropdown Value      Status      Traffic Closed

Validate Click Outbound Statements Grid Save Changes Button To Set Status As Traffic Closed
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid Save Changes Button

Validate The Statement Status Is Changed Successfully
    [Tags]    REGRESSION
    Verify The Statement Status Is Changed Successfully