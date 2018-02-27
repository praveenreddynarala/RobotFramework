*** Settings ***
Documentation     [TAENOSIS-829] A Test Suite With Set Of Tests To Validate Internal Cost Adjustment Parameters For Invalid Entries

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

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

Validate Set Scope
    [Tags]    REGRESSION
    Verify Set Scope        iXTools

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    CostPlus

Validate Click Configuration Variables Grid Search Button
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

Validate Click Save Button And Pass The Error Message
    [Tags]    REGRESSION
    Verify Click Save Button And Pass The Error Message

Validate Please Enter either Cost Per Minute Or Percentage Error Message Is Available
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Available      ${COST PER MINUTE FIELD LABEL TEXT}     ${ERROR MESSAGE VALIDATION TEXT FOR COST PER MINUTE LABEL}

Validate Please Enter either Cost Per Minute Or Percentage Error Message Is Available For Percentahe Textfield
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Available      ${PERCENTAGE FIELD LABEL TEXT}     ${ERROR MESSAGE VALIDATION TEXT FOR COST PER MINUTE LABEL}

Validate Route Class Field Is Required Error Message Is Available
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Available      ${ROUTE CLASS FIELD LABEL TEXT WITH UPPERCASE R}     ${ERROR MESSAGE VALIDATION TEXT FOR ROUTE CLASS LABEL}

Validate Routing Product Field Is Required Error Message Is Available
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Available      ${ROUTING PRODUCT FIELD LABEL TEXT}     ${ERROR MESSAGE VALIDATION TEXT FOR ROUTING PRODUCT LABEL}

Validate Close Add New Adjustment Pop Up
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Pop Up       Add New Adjustment