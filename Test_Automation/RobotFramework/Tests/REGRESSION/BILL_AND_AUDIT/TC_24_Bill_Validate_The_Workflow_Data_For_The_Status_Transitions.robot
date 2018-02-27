*** Settings ***
Documentation     [TAENOSIS-894] Validate the workflow data for the status transitions

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
    Verify Set Begin Date For Statement Search    6/1/2017

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statements Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Workflow Inline Action Item
    [Tags]    REGRESSION
    bill_and_audit_page_resource.Verify Select Inline Action Item        ${WORKFLOW INLINE ITEM}

Validate The Traffic PreClosed Workflow Status Is In Proper Order Based On Transition
    [Tags]    REGRESSION
    Verify The Specific Workflow Status Is In Proper Order Based On Transition      Traffic PreClosed       1

Validate The Traffic Closed Workflow Status Is In Proper Order Based On Transition
    [Tags]    REGRESSION
    Verify The Specific Workflow Status Is In Proper Order Based On Transition      Traffic Closed       2

Validate The Non Traffic Items Included Workflow Status Is In Proper Order Based On Transition
    [Tags]    REGRESSION
    Verify The Specific Workflow Status Is In Proper Order Based On Transition      Non Traffic Items Included       3

Validate The Statement Issued Workflow Status Is In Proper Order Based On Transition
    [Tags]    REGRESSION
    Verify The Specific Workflow Status Is In Proper Order Based On Transition      Statement Issued      4

Validate The Statement Posted Workflow Status Is In Proper Order Based On Transition
    [Tags]    REGRESSION
    Verify The Specific Workflow Status Is In Proper Order Based On Transition      Statement Posted      5

Validate The Statement Approved Workflow Status Is In Proper Order Based On Transition
    [Tags]    REGRESSION
    Verify The Specific Workflow Status Is In Proper Order Based On Transition      Statement Approved      6

Validate The Traffic PreClosed Workflow Status Is Belonging To Right User Based On Transition
    [Tags]    REGRESSION
    Verify The Specific Workflow Status Is Belonging To Right User Based On Transition      Traffic PreClosed       1

Validate The Traffic Closed Workflow Status Is Belonging To Right User Based On Transition
    [Tags]    REGRESSION
    Verify The Specific Workflow Status Is Belonging To Right User Based On Transition      Traffic Closed       2

Validate The Non Traffic Items Included Workflow Status Is Belonging To Right User Based On Transition
    [Tags]    REGRESSION
    Verify The Specific Workflow Status Is Belonging To Right User Based On Transition      Non Traffic Items Included       3

Validate The Statement Issued Workflow Status Is Belonging To Right User Based On Transition
    [Tags]    REGRESSION
    Verify The Specific Workflow Status Is Belonging To Right User Based On Transition      Statement Issued      4

Validate The Statement Posted Workflow Status Is Belonging To Right User Based On Transition
    [Tags]    REGRESSION
    Verify The Specific Workflow Status Is Belonging To Right User Based On Transition      Statement Posted      5

Validate The Statement Approved Workflow Status Is Belonging To Right User Based On Transition
    [Tags]    REGRESSION
    Verify The Specific Workflow Status Is Belonging To Right User Based On Transition      Statement Approved      6