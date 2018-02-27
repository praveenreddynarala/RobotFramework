*** Settings ***
Documentation     [TAENOSIS-949] A Test Suite With Set Of Tests To Validate Job Notifier For New Outbound Ref Uploads

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}            ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin Module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Number Plan Submenu
    [Tags]    REGRESSION
    Verify Click Number Plan Submenu

Validate Click Number Plan Upload Job Notifier
    [Tags]    REGRESSION
    Verify Click Number Plan Upload Job Notifier

Validate Set Multiples Status
    [Tags]    REGRESSION
    Verify Set Multiple Status      @{STATUS LIST FOR JOB}

Validate Click Generic Search Button
    [Tags]    REGRESSION
    Verify Click Generic Search Button

Validate Get Jobs Grid Row Count
    [Tags]    REGRESSION
    Verify Get Jobs Grid Row Count

Validate Close Jobs Tab Before Upload
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Tab        Jobs

Validate Click Upload Number Plan Button
    [Tags]    REGRESSION
    Verify Click Upload Number Plan Button

Validate Set Upload Number Plan Type
    [Tags]    REGRESSION
    Verify Set Upload Number Plan Type      ${REFERENCE NUMBER PLAN TYPE}

Validate Set Upload Number Plan
    [Tags]    REGRESSION
    Verify Set Upload Number Plan           ${OUTBOUND REF NUMBER PLAN}

Validate Set Upload Number Plan Note
    [Tags]    REGRESSION
    Verify Set Upload Number Plan Note      ${TEST DATA PREFIX}

Validate Click Number Plan Upload Browse Button
    [Tags]    REGRESSION
    Verify Click Number Plan Upload Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${REFERENCE NUMBER PLAN UPLOAD FILE PATH}

Validate Click Number Plan Upload Button
    [Tags]    REGRESSION
    Verify Click Number Plan Upload Button

Validate Click Number Plan Upload Job Notifier After Upload
    [Tags]    REGRESSION
    Verify Click Number Plan Upload Job Notifier

Validate Set Multiples Status After Upload
    [Tags]    REGRESSION
    Verify Set Multiple Status      @{STATUS LIST FOR JOB}

Validate Compare Jobs Grid Row Count
    [Tags]    REGRESSION
    Verify Compare Jobs Grid Row Count