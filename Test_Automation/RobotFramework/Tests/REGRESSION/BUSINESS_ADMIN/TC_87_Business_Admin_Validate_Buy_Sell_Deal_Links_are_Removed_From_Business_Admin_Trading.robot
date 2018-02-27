*** Settings ***
Documentation     [TAENOSIS-965] Validate Buy Sell Deal Links are Removed from Business Admin Trading

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin Module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Buy and Sell Deal Management is not Visible in Trading Section
    [Tags]    REGRESSION
    Verify Expected Button is Removed From Screen   Buy and Sell Deal Management

Validate Destination Manager Approvals is not Visible in Trading Section
    [Tags]    REGRESSION
    Verify Expected Button is Removed From Screen   Destination Manager Approvals

Validate Pricing Manager Approvals is not Visible in Trading Section
    [Tags]    REGRESSION
    Verify Expected Button is Removed From Screen   Pricing Manager Approvals