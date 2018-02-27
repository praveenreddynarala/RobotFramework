*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create New Company Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For ChargeType
    [Tags]    REGRESSION
    Verify Set Variable Name    CPLPreviewDisplayWarnings

Validate Click Configuration Variables Grid Search Button For ChargeType
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Click First Row Info Icon
    [Tags]    REGRESSION
    Verify Click First Row Info Icon

Validate Cplenablecurrencypreview System Note
    [Tags]    REGRESSION
    Verify CPLPreviewDisplayWarnings System Note

