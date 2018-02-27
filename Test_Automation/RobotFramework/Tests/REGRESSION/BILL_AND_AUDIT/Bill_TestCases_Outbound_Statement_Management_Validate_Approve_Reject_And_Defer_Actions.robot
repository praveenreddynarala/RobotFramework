*** Settings ***
Documentation     A Test Suite With Set Of Tests For Outbound Statement Management To Validate Approve Reject and Defer Actions

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Outbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Outbound Statements Tab

Validate Set Account For Search
    [Tags]    REGRESSION
    Verify Set Account              @{ACCOUNT LIST FOR SHORTFALL}

Validate Set Bill Account For Search
    [Tags]    REGRESSION
    Verify Set Bill Account         @{BILL ACCOUNT LIST FOR SHORTFALL}

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search      @{STATEMENT STATUS FOR SHORTFALL}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search        ${BEGIN DATE FOR SHORTFALL}

Validate Click Outbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Outbound Statement Search button

Validate Click Outbound Statements Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Statement Details Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${SHORTFALL INLINE ITEM}

Validate Compare Shortfall Grid Status Column Value With Pending
    [Tags]    REGRESSION
    Verify Compare Shortfall Grid Status Column Value       ${PENDING STATUS}

Validate Set Shortfall Grid Actions To Approve
    [Tags]    REGRESSION
    Verify Set Shortfall Grid Actions       ${APPROVE ACTION ITEM}

Validate Click Shortfall Grid Save Changes Button After Approve
    [Tags]    REGRESSION
    Verify Click Shortfall Grid Save Changes Button

Validate Compare Shortfall Grid Status Column Value With Approve
    [Tags]    REGRESSION
    Verify Compare Shortfall Grid Status Column Value       ${APPROVED STATUS}

Validate Set Shortfall Action Back To Pending After Approve
    [Tags]    REGRESSION
    Verify Set Shortfall Grid Actions       ${BACK TO PENDING ACTION ITEM}

Validate Click Shortfall Grid Save Changes Button After Pending From Approve
    [Tags]    REGRESSION
    Verify Click Shortfall Grid Save Changes Button

Validate Compare Shortfall Grid Status Column Value With Pending After Approve
    [Tags]    REGRESSION
    Verify Compare Shortfall Grid Status Column Value       ${PENDING STATUS}

Validate Set Shortfall Grid Actions To Reject
    [Tags]    REGRESSION
    Verify Set Shortfall Grid Actions       ${REJECT ACTION ITEM}

Validate Click Shortfall Grid Save Changes Button After Reject
    [Tags]    REGRESSION
    Verify Click Shortfall Grid Save Changes Button

Validate Compare Shortfall Grid Status Column Value With Reject
    [Tags]    REGRESSION
    Verify Compare Shortfall Grid Status Column Value       ${REJECTED STATUS}

Validate Set Shortfall Action Back To Pending After Reject
    [Tags]    REGRESSION
    Verify Set Shortfall Grid Actions       ${BACK TO PENDING ACTION ITEM}

Validate Click Shortfall Grid Save Changes Button After Pending From Reject
    [Tags]    REGRESSION
    Verify Click Shortfall Grid Save Changes Button

Validate Compare Shortfall Grid Status Column Value With Pending After Reject
    [Tags]    REGRESSION
    Verify Compare Shortfall Grid Status Column Value       ${PENDING STATUS}

Validate Close Outbound Statement Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${OUTBOUND STATEMENT TAB NAME PREFIX}