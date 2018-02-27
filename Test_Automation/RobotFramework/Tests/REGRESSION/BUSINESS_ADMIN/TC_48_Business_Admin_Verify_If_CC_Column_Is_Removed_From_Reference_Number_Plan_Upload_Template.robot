*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify If CC Columns Is Removed From Reference Number Plan Upload Templete

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

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

Validate Click Upload Number Plan Button
    [Tags]    REGRESSION
    Verify Click Upload Number Plan Button

Validate Set Upload Number Plan Type
    [Tags]    REGRESSION
    Verify Set Upload Number Plan Type    ${REFERENCE NUMBER PLAN TYPE}

Validate Reference Number Plan Template Download Link Is Available
    [Tags]    REGRESSION
    Verify Reference Number Plan Template Download Link Is Available

Validate Set Upload Number Plan
    [Tags]    REGRESSION
    Verify Set Upload Number Plan    ${REFERENCE ACCOUNT SOURCE NUMBER PLAN}

Validate Set Upload Number Plan Note
    [Tags]    REGRESSION
    Verify Set Upload Number Plan Note    ${TEST DATA PREFIX}

Validate Click Number Plan Upload Browse Button
    [Tags]    REGRESSION
    Verify Click Number Plan Upload Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
     ${CALL TYPE} =    Verify Get Call Type
    Verify Select The File To Be Uploaded    ${TEMPLATE PATH}/${CALL TYPE}/${REFERENCE NUMBER PLAN UPLOAD FILE PATH}

Validate Click Number Plan Upload Button
    [Tags]    REGRESSION
    Verify Click Number Plan Upload Button
