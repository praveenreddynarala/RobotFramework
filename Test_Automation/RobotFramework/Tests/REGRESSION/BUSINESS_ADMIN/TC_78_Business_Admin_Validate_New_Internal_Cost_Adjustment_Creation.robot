*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate New Internal Cost Adjustment Creation

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

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

Validate Set iXTools Scope
    [Tags]    REGRESSION
    Verify Set Scope    iXTools

Validate Set Variable Name For CostPlus
    [Tags]    REGRESSION
    Verify Set Variable Name    CostPlus

Validate Click Configuration Variables Grid Search Button For CostPlus
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Internal Cost Adjustment Submenu
    [Tags]    REGRESSION
    Verify Click Internal Cost Adjustment Submenu

Validate Click Add New Adjustment Button
    [Tags]    REGRESSION
    Verify Click Add New Adjustment Button

Validate Set Cost Per Minute
    [Tags]    REGRESSION
    Verify Set Cost Per Minute

Validate Set Route Class For Cost Adjustment
    [Tags]    REGRESSION
    ${ROUTE CLASS} =     Verify Get Route Class
    Verify Set Route Class For Cost Adjustment      ${ROUTE CLASS}

Validate Set Routing Product
    [Tags]    REGRESSION
    Verify Set Routing Product

Validate Click New CSNP Save Button
    [Tags]    REGRESSION
    Verify Click New CSNP Save Button

Validate Select Internal Cost Adjustments Grid First Row Checkbox
    [Tags]    REGRESSION
    ${ROUTE CLASS} =     Verify Get Route Class
    Verify Select Internal Cost Adjustments Grid First Row Checkbox     ${ROUTE CLASS}

Validate Click Internal Cost Adjustment Delete Button
    [Tags]    REGRESSION
    Verify Click Internal Cost Adjustment Delete Button