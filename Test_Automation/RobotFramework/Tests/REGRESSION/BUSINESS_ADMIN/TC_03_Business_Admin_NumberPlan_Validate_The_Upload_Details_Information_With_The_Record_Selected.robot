*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Number Plan Uploads Details Information With The Record Selected

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CSNP NUMBER PLAN}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin Module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate Get CSNP Number Plan
    [Tags]    REGRESSION
    ${CSNP NUMBER PLAN} =     Verify Get CSNP Number Plan
    log  ${CSNP NUMBER PLAN}
    set suite variable      ${CSNP NUMBER PLAN}

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Number Plan Submenu
    [Tags]    REGRESSION
    Verify Click Number Plan Submenu

Validate Click Number Plan Uploads Button
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Button

Validate Set Number Plan Uploads Number Plan Type
    [Tags]    REGRESSION
    Verify Set Number Plan Uploads Number Plan Type         ${NUMBER PLAN TYPE FOR UPLOAD DETAILS}

Validate Set Number Plan Uploads Number Plan
    [Tags]    REGRESSION
    Verify Set Number Plan Uploads Number Plan              ${CSNP NUMBER PLAN}

Validate Set Multiple Status
    [Tags]    REGRESSION
    Verify Set Multiple Status              @{STATUS LIST FOR SEARCH UPLOAD DETAILS}

Validate Set From Date
    [Tags]    REGRESSION
    Verify Set From Date        ${FROM DATE FOR UPLOAD DETAILS}

Validate Click Number Plan Uploads Search Button
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Search Button

Validate Get Number Plan Uploads Grid Row Details
    [Tags]    REGRESSION
    Verify Get Number Plan Uploads Grid Row Details

Validate Get Number Plan Uploads Grid Row Details For Workflow
    [Tags]    REGRESSION
    Verify Get Number Plan Uploads Grid Row Details For Workflow

Validate Click Number Plan Uploads Grid Inline Action Button For Upload Details
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Grid Inline Action Button         ${NUMBER PLAN TYPE FOR UPLOAD DETAILS}

Validate Select Upload Details Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${UPLOAD DETAILS INLINE ITEM}

Validate Click Show Summary Link
    [Tags]    REGRESSION
    Verify Click Show Summary Link

Validate Click Show Workflow Link
    [Tags]    REGRESSION
    Verify Click Show Workflow Link

Validate Information Of Upload Details Tab
    [Tags]    REGRESSION
    Verify Information Of Upload Details Tab

Validate Compare Workflow Grid Details
    [Tags]    REGRESSION
    Verify Compare Workflow Grid Details