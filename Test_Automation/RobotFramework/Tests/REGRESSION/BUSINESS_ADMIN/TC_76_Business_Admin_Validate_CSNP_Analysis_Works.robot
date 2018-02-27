*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate CSNP Analysis Works

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Number Plan Submenu
    [Tags]    REGRESSION
    Verify Click Number Plan Submenu

Validate Click Number Plan Uploads Button
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Button

Validate Set Number Plan Type
    [Tags]    REGRESSION
    Verify Set Number Plan Type     ${NUMBER PLAN TYPE FOR UPLOAD}

Validate Set From Date
    [Tags]    REGRESSION
    Verify Set From Date    1/1/2017

Validate Set Multiple Status After Upload
    [Tags]    REGRESSION
    Verify Set Multiple Status              @{STATUS LIST FOR SEARCH INLINE ACTION}

Validate Click Number Plan Uploads Search Button
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Search Button

Validate Select Analyze Inline Action Item
    [Tags]    REGRESSION
    Verify Analyze Pending Status If Exists