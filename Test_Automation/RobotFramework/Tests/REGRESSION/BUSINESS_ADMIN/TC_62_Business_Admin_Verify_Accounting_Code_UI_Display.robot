*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Accouting Code UI Display

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Bill And Audit Menu
    [Tags]    REGRESSION
    Verify Expand Bill And Audit Menu

Validate Click Accounting Codes Submenu
    [Tags]    REGRESSION
    Verify Click Accounting Codes Submenu

Validate Accounting Codes Page Loaded Properly
    [Tags]    REGRESSION
    Verify Accounting Codes Page Loaded Properly

Validate Click Accounting Codes Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Accounting Codes Grid First Row Inline Action Button

Validate Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        Assign Accounting Code

Validate Assign Accounting Codes Page Title Is Not Available
    [Tags]    REGRESSION
    Verify Assign Accounting Codes Page Title Is Not Available