*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify The UI Issues Fixed In Inbound Statements And Country Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Country Submenu
    [Tags]    REGRESSION
    Verify Click Country Submenu

Validate Set Country
    [Tags]    REGRESSION
    Verify Set Country

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Select Countries Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Countries Grid First Row Checkbox

Validate Click Country Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Country Bulk Edit Button

Validate Country Bulk Edit Pop Up Is Available
    [Tags]    REGRESSION
    Verify Country Bulk Edit Pop Up Is Available

Validate Close Bulk Edit Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up         ${BULK EDIT POP UP NAME}