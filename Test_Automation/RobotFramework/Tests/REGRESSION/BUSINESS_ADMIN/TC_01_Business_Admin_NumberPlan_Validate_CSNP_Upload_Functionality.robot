*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate CSNP Upload Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CSNP NUMBER PLAN}     ${EMPTY}
${CALL TYPE}            ${EMPTY}

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

Validate Click Upload Number Plan Button
    [Tags]    REGRESSION
    Verify Click Upload Number Plan Button

Validate Set Upload Number Plan Type
    [Tags]    REGRESSION
    Verify Set Upload Number Plan Type      ${NUMBER PLAN TYPE FOR UPLOAD}

Validate Set Upload Number Plan
    [Tags]    REGRESSION
    Verify Set Upload Number Plan           ${CSNP NUMBER PLAN}

Validate Set Upload Number Plan Note
    [Tags]    REGRESSION
    Verify Set Upload Number Plan Note      ${TEST DATA PREFIX}

Validate Click Number Plan Upload Browse Button
    [Tags]    REGRESSION
    Verify Click Number Plan Upload Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${NUMBER PLAN UPLOAD FILE PATH}

Validate Click Number Plan Upload Button
    [Tags]    REGRESSION
    Verify Click Number Plan Upload Button

Validate Click Number Plan Uploads Button After Upload
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Button

Validate Set Number Plan Uploads Number Plan Type After Upload
    [Tags]    REGRESSION
    Verify Set Number Plan Uploads Number Plan Type         ${NUMBER PLAN TYPE FOR UPLOAD}

Validate Set Number Plan Uploads Number Plan After Upload
    [Tags]    REGRESSION
    Verify Set Number Plan Uploads Number Plan              ${CSNP NUMBER PLAN}

Validate Set Multiple Status After Upload
    [Tags]    REGRESSION
    Verify Set Multiple Status              @{STATUS LIST FOR SEARCH}

Validate Click Number Plan Uploads Search Button
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Search Button



