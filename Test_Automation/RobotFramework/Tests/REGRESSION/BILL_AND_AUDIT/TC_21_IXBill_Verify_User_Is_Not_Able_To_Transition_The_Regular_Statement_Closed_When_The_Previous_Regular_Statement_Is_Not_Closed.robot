*** Settings ***
Documentation     [TAENOSIS-942] Verify user is not able to transition the regular statement Closed when the previous regular statement is not closed

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
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
    Verify Set Begin Date For Statement Search    9/1/2017

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Set Outbound Statements Grid Dropdown Value To Set Status As Traffic PreClosed
    [Tags]    REGRESSION
    Verify Set Outbound Statements Grid Dropdown Value      Status      Traffic PreClosed

Validate Click Outbound Statements Grid Save Changes Button To Set Status As Traffic PreClosed
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid Save Changes Button

Validate Set Outbound Statements Grid Dropdown Value To Set Status As Cycle Created
    [Tags]    REGRESSION
    Verify Set Outbound Statements Grid Dropdown Value      Status      Cycle Created

Validate Click Outbound Statements Grid Save Changes Button To Set Status As Cycle Created
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid Save Changes Button

Validate Set Begin Date For Search To Verify Error Message
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search    10/1/2017

Validate Click Outbound Statement Search Button To Verify Error Message
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Set Outbound Statements Grid Dropdown Value To Set Status As Traffic Closed
    [Tags]    REGRESSION
    Verify Set Outbound Statements Grid Dropdown Value      Status      Traffic Closed

Validate Click Outbound Statements Grid Save Changes Button To Set Status As Traffic Closed
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid Save Changes Button

Validate The Statement Status Error Message Pop Up Is Available
    [Tags]    REGRESSION
    Verify The Statement Status Error Message Pop Up Is Available