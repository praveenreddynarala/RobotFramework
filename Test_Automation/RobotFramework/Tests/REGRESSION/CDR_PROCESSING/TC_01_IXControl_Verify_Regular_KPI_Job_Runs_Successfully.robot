*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Regular KPI Job Runs Successfully

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixcontrol_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to IXContract Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXControl module
    [Tags]    REGRESSION
    Go To IXControl Screen With Specific Url

Validate Click Performance Matrics Submenu
    [Tags]    REGRESSION
    Verify Click Performance Matrics Submenu

Validate Set Registry Item
    [Tags]    REGRESSION
    Verify Set Registry Item            ${DAILY DATA MART PREPARATION ITEM NAME}

Validate Click Go Button
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button